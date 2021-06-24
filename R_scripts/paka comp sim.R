
#Can press ctrl-a and ctrl-r to quicly iterate and watch the histogram

#projection model quantities
nages<-40 #number of ages
natM<-0.156 #instantaneous natural mortality rate
rec<-200000 #annual recruitment
init_pop<-1000000 #initital pop abundance
nyrs<-200 #how long to run the sim
h<-0.035 #harvest rate - as this approaches 0 the 500-600 mm mode increases
        #rate for complex in 2021 report is ~0.035, paka was a bit higher


#VBF parameters (Andrews et al. 2011)
t0<-(-0.29)
k<-0.242
Linf<-675
cv<-0.1  #error not given and so CV is contrived (it may be somewhat in line with obs error in length at age from page 1864 as proportion of Linf[?])

  
  
#set up initial age composition based on exp. decay function
f<-(-log(1-h)) #get F from H
Z<-natM+f
init_age_comp<-vector(length=nages)
init_age_comp[1]<-1000 #use as initial 
for (i in 1:length(init_age_comp)){
  if(i>1)(init_age_comp[i]<-init_age_comp[i-1]*exp(-Z))
}

init_age_comp<-init_age_comp/sum(init_age_comp) #convert to a comp

#set up age-specific selectivity

sel<-c(0,0.25,0.75,rep(1,37)) #educated guess

#set up population abundance matrix
pop<-matrix(nrow=nyrs,ncol=nages)

pop[1,]<-init_pop*init_age_comp #initial abundance
#pop[2:nyrs,1]<-rnorm(1,rec,0.3*rec) #annual recruitment with 

#project
for (i in 2:nyrs){
  pop[i,1]<-rnorm(1,rec,0.1*rec) #annual recruitment with some noise
  for (j in 2:nages){
    pop[i,j]<-pop[i-1,j-1]*exp(-(f*sel[j-1]+natM))
    
  }
}

total<-apply(pop,1,sum)
plot(total) #equilibrates in a few years without any rec noise...

###################################################################################
#convert abundance-at-age to length distribution
######################################################################################

#choose a year
inf_year<-100

len_dist<-list(NA)
age_seq<-seq(1:nages)
temp_vbf<-Linf*(1-exp(-k*(age_seq-t0))) #deterministic growth curve

for(j in 1:nages){
  #age<-rep(j,pop[inf_year,age_seq[j]])
  len_dist[[j]]<-rnorm(round(pop[inf_year,age_seq[j]],0),temp_vbf[j],temp_vbf[j]*cv)
}

full_len_dist<-unlist(len_dist)

hist(full_len_dist) #look for 500-600 mm mode
