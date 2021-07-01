###This script was created by JOhn Syslo, 4/1/20 and uses the procedure
#from the 2017 benchmark to re-calulate catch with the new FRS data set
#up to 2019

#######################################

#Purpose: Calculated catch by deep7 species
#         by fishing year. 
#Use: Archives for 2018 Deep 7 MHI bottomfish 
#     assessment
#By: Brian Langseth, PIFSC
#Created: 12/19/2016
#Last updated: 3/20/2018
#Rversion 3.2.4

#Supporting files:  
# BF_Area_Grid_Reggie.csv (valid MHI grids)
# Unreported_ratios.csv

#Input: Files provided by Bradley Gough on 6/28/2019
#       updating license names and number from ORACLE 
#       DAR data back to 1948. Also fixed some 
#       duplicate license numbers.

#Output: Catch (unreported and reported) of deep7 
#        bottomfish species for MHI grids only by 
#        fishing year and species for fishing years 
#        1948-2018. Dataset of records for fishing
#        years 1948-2015, since overall catch values
#        in 2016 were accessed after other data were. 

#######################################

rm(list=ls())

# --Combine input datasets into single dataset--------------------------
library(foreign)

#early=read.dbf("D:\\Stock assessments\\Hawaii\\MHI_bottomfish_2017\\DAR_assessment_data\\PaulTao_data\\HFY48_93E.dbf",as.is=T)
early=read.csv("C:\\Users\\John.Syslo\\Documents\\2020_Deep_7\\2020 Raw data\\picdr_112849_fy48_15.csv")

#late=read.dbf("D:\\Stock assessments\\Hawaii\\MHI_bottomfish_2017\\DAR_assessment_data\\PaulTao_data\\hf94c15F.dbf",as.is=T)
late=read.csv("C:\\Users\\John.Syslo\\Documents\\2020_Deep_7\\2020 Raw data\\picdr_112849_fy16_18.csv")

#add 2019 data here
d2019=read.csv("C:\\Users\\John.Syslo\\Documents\\2020_Deep_7\\2020 Raw data\\picdr_112970_fy19.csv")

dim(early)
dim(late)
dim(d2019)
names(early)
names(late)
names(d2019)
#not needed because fields match for update data:
#early[,c("O_LICENSE","O_LNAME","O_FNAME","O_VESSEL","O_USCG","O_HA_NO","CHNG")]=NA
fulldata=rbind(early,late,d2019)
dim(fulldata) 

#Add lbs field as maximum of LBS and LBS_SOLD
fulldata$lbs=pmax(fulldata$LBS,fulldata$LBS_SOLD,na.rm=T)

################################################################
#2020- RELATED TO CPUE BUT EASY TO DO HERE:
#For report table 6, proportion of records with some name info. by year
XX<-aggregate(fulldata$FNAME,by=list(fulldata$FYEAR),FUN=length)


dim(fulldata[which(fulldata$FNAME == "NULL" & fulldata$LNAME == "NULL"),])
no_name<-fulldata[which(fulldata$FNAME == "NULL" & fulldata$LNAME == "NULL"),]
y<-aggregate(no_name$FNAME,by=list(no_name$FYEAR),FUN=length)

perc_no_name<-1-y$x/XX$x[1:55]

#do not need because there is no 2019 data:
#Remove FY2016
####----#####
#reddata=fulldata[fulldata$FYEAR<=2015,]
####----#####

reddata=fulldata #included to reduce number of code changes

# --Use only records of Deep 7 species ----------------------------------
#Use common names of deep7 species since Gindai has two scientific names
com_names=c("HAPUUPUU","KALEKALE","OPAKAPAKA","EHU","ONAGA","ehu","LEHI","GINDAI")
##Species code 36 is also ehu according to Appendix II.4g in 
#Moffitt et al. 2011 "Bottomfish CPUE standardization workshop 
#proceedings August 4-6, 2008", but was discontinued in 1989. 
id=c(15,17,19,21,22,36,58,97)


####----#####
deep7=reddata[reddata$SPECIES%in%id,]
dim(deep7)
####----#####

#Assign ehu species code 36 to ehu code 21.
deep7[deep7$SPECIES==36,"SPECIES"]=21

#calculate proprotion of Deep7 catch on gear3
a<-aggregate(deep7$lbs,by=list(deep7$GEAR),FUN=sum)
a$x[4]/sum(a$x)  #0.9779536

b<-aggregate(deep7$lbs,by=list(deep7$GEAR),FUN=length)
b$x[4]/sum(b$x) 

# --Use only records from the MHI------------------------------------
#Read in key table from last assessment for MHI areas (mhi_areas.csv)
#but keep only those grids Reg Kokbun identified as valid from the
#CPUE data workshop
#areasReggie=read.csv("D:\\Stock assessments\\Hawaii\\MHI_bottomfish_2017\\Data exploration\\Workshop_files_Aug16\\Tuesday analyses\\BF_Area_Grid_Reggie.csv",header=T)
areasReggie=read.csv("C:\\Users\\John.Syslo\\Documents\\2020_Deep_7\\2020 Data prep files\\Catch\\BF_Area_Grid_Reggie.csv",header=T)
valid=areasReggie[which(areasReggie$Valid.==""),]$area

#Remove non-valid subareas (A and B) from area 16123 as well as 
#records from 16123 without a subarea specified
####----#####
mhidata=deep7[deep7$AREA%in%valid,] #valid areas
mhidata=mhidata[!mhidata$SUBAREA%in%c("A","B"),] #remove known invalid subareas (16123A and 16123B)
mhidata=mhidata[!(mhidata$AREA==16123 & is.na(mhidata$SUBAREA)),] #remove the 16123 records without a subarea distinction
####----#####


# --Partition invalid areas to known mhi ares-----------------------------
#THE FOLLOWING STATS HAVE NOT BEEN UPDATED FOR 2020, but 1280 records are not valid
#Based on proportion of species/year in mhi area compared to nwhi ares
#Invalid areas include 0's, ponds, and non valid MHI areas
#5 areas (17 records) are ponds, 1249 records are area=0, 317 areas (274 records) aren't valid and aren't area=0
invalid=areasReggie[which(areasReggie$Valid.!=""),]$area
notvalid=deep7[deep7$AREA%in%invalid,]

#Need NWHI areas as well
#NWHI areas are those not in mhi_areas.csv
####----#####
nwhidata=deep7[!deep7$AREA%in%areasReggie$area,]
####----#####

#Calculate proportion of fish by species and year in MHI vs NWHI
agg_mhi=aggregate(mhidata$lbs,by=list("FYEAR"=mhidata$FYEAR,"SPECIES"=mhidata$SPECIES),FUN=sum)
mhi_table=matrix(agg_mhi$x,length(1948:2019),length(id[-6]),dimnames=list(1948:2019,id[-6]))

agg_nwhi=aggregate(nwhidata$lbs,by=list("FYEAR"=nwhidata$FYEAR,"SPECIES"=nwhidata$SPECIES),FUN=sum)
comb_agg=merge(agg_mhi,agg_nwhi,by=c("FYEAR","SPECIES"),all.x=T)
comb_agg[is.na(comb_agg$x.y),"x.y"]=0
comb_agg$percMHI=comb_agg$x.x/(comb_agg$x.x+comb_agg$x.y)


agg_inval=aggregate(notvalid$lbs,by=list("FYEAR"=notvalid$FYEAR,"SPECIES"=notvalid$SPECIES),FUN=sum)
comb_all=merge(comb_agg,agg_inval,by=c("FYEAR","SPECIES"),all=T)
comb_all$add_catch=comb_all$percMHI*comb_all$x

#2020:
#New data supposedly has invalid areas as NA as well, which changes the number and catch attributed to invalid areas
area_NA<-deep7[which(is.na(deep7$AREA)),]  #don't see any


invalid_ADD=matrix(comb_all$add_catch,length(1948:2019),length(id[-6]),dimnames=list(1948:2019,id[-6]))
invalid_ADD[is.na(invalid_ADD)]=0

#Final reported catch table
final_reported_table=round(invalid_ADD+mhi_table,2)

##To obtain 2016 catch data, data were pulled at a later time than for the above data.
#Values from this pull were taken for fishing year 2016 only in MHI and for deep7 species.
#For 2016, there was no species code 36 for ehu. There was also no fishing in the NWHI, but
#only catch from valid MHI areas was used.

#values for 2016 were, following species code c(15,17,19,21,22,58,97)
catch2019=c(10537.3,13576.1,140722.1,32746.6,73706.3,7801.7,1988.6)
#JS brought these in above for 2019


#Final reported catch table with 2019 catch data
final_reported_table=rbind(final_reported_table,"2019"=catch2019)

# --Output material-------------------------------------
#Final dataset - Only 1948-2015
#write.csv(mhidata,"D:\\Stock assessments\\Hawaii\\MHI_bottomfish_2017\\UptoDate files\\Finalized_catch_dataset.csv",row.names=F)

#Final reported table
write.csv(final_reported_table,"C:\\Users\\John.Syslo\\Documents\\2020 Deep 7\\2020 Data prep files\\Catch\\Reported_catch_table.csv",row.names=T)

#Read in unreported ratios and output final unreported table
#These ratios were copied from Brodziak et al. 2011 and values
#from 2010 were copied through 2015. 
#Values for 1998-2001 were calcualted from methods described in
#Courtney and Brodziak (2011) (Scenario II)
Us=read.csv("C:\\Users\\John.Syslo\\Documents\\2020 Deep 7\\2020 Data prep files\\Catch\\Unreported_ratios.csv",header=T,row.names=1)

#copy 2015 values to 2016
#Us=rbind(Us,"2016"=Us[68,]) #JS commented out for now - we don't have 2019

#Final unreported table
final_unreported_table=Us*final_reported_table
write.csv(final_unreported_table,"C:\\Users\\John.Syslo\\Documents\\2020 Deep 7\\2020 Data prep files\\Catch\\Unreported_catch_table.csv",row.names=T)

#Final total catch
final_totalcatch_table=final_unreported_table+final_reported_table
write.csv(final_totalcatch_table,"C:\\Users\\John.Syslo\\Documents\\2020 Deep 7\\2020 Data prep files\\Catch\\Total_catch_table.csv",row.names=T)

#Ratio of total unreported to reported in 2012-2019
mean(tail(rowSums(final_unreported_table),6)[-6]/tail(rowSums(final_reported_table),6)[-6])




