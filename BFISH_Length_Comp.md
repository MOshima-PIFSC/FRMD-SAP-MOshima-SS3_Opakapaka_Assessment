BFISH Length Comp Investigations
================
Meg Oshima
5/21/2021

## Camera Lengths

    ##        X              PSU          DROP_CD           SPECIES_CD       
    ##  Min.   :  1.0   Min.   :   18   Length:976         Length:976        
    ##  1st Qu.:244.8   1st Qu.: 8961   Class :character   Class :character  
    ##  Median :488.5   Median :23017   Mode  :character   Mode  :character  
    ##  Mean   :488.5   Mean   :21961                                        
    ##  3rd Qu.:732.2   3rd Qu.:35943                                        
    ##  Max.   :976.0   Max.   :45499                                        
    ##  SCIENTIFIC_NAME    COMMON_NAME           BFISH           OFFICIAL_DEPTH_M
    ##  Length:976         Length:976         Length:976         Min.   : 77.16  
    ##  Class :character   Class :character   Class :character   1st Qu.:114.76  
    ##  Mode  :character   Mode  :character   Mode  :character   Median :152.00  
    ##                                                           Mean   :155.41  
    ##                                                           3rd Qu.:192.00  
    ##                                                           Max.   :274.00  
    ##    LENGTH_CM         Island         
    ##  Min.   :  5.40   Length:976        
    ##  1st Qu.: 25.73   Class :character  
    ##  Median : 37.34   Mode  :character  
    ##  Mean   : 38.30                     
    ##  3rd Qu.: 51.73                     
    ##  Max.   :111.60

    ## Warning: Removed 1 rows containing non-finite values (stat_density).

![](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

#### What is causing the mode in the smaller size classes in the BFISH camera data?

-   Which sites are most of these samples coming from?
-   Which islands are these samples from?  
-   What depth are these samples from?

![](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->![](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-4-2.png)<!-- -->

#### Sites that caught 5 or more fish less than 20cm

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#arsyvaqlau .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#arsyvaqlau .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#arsyvaqlau .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#arsyvaqlau .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#arsyvaqlau .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#arsyvaqlau .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#arsyvaqlau .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#arsyvaqlau .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#arsyvaqlau .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#arsyvaqlau .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#arsyvaqlau .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#arsyvaqlau .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#arsyvaqlau .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#arsyvaqlau .gt_from_md > :first-child {
  margin-top: 0;
}

#arsyvaqlau .gt_from_md > :last-child {
  margin-bottom: 0;
}

#arsyvaqlau .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#arsyvaqlau .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#arsyvaqlau .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#arsyvaqlau .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#arsyvaqlau .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#arsyvaqlau .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#arsyvaqlau .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#arsyvaqlau .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#arsyvaqlau .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#arsyvaqlau .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#arsyvaqlau .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#arsyvaqlau .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#arsyvaqlau .gt_left {
  text-align: left;
}

#arsyvaqlau .gt_center {
  text-align: center;
}

#arsyvaqlau .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#arsyvaqlau .gt_font_normal {
  font-weight: normal;
}

#arsyvaqlau .gt_font_bold {
  font-weight: bold;
}

#arsyvaqlau .gt_font_italic {
  font-style: italic;
}

#arsyvaqlau .gt_super {
  font-size: 65%;
}

#arsyvaqlau .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="arsyvaqlau" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">DROP_CD</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">n</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left">20191126_015626</td>
      <td class="gt_row gt_center">20</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">20191126_012043</td>
      <td class="gt_row gt_center">12</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">20171029_185410</td>
      <td class="gt_row gt_center">7</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">20191126_020320</td>
      <td class="gt_row gt_center">7</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">20191125_233715</td>
      <td class="gt_row gt_center">6</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">20171101_215649</td>
      <td class="gt_row gt_center">5</td>
    </tr>
  </tbody>
  
  
</table></div>

![6 camera drops had 5 or more fish between 10 - 15 cm. The samples came
from Oahu and all were caught between 100 - 110 m deep (which is the
first quantile of depths
sampled).](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-6-1.png)

#### What is causing the mode in the larger size classes in the BFISH camera data?

-   Which sites are most of these samples coming from?
-   Which islands are these samples from?  
-   What depth are these samples from?

![](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->![](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-7-2.png)<!-- -->

#### Sites that caught more than 5 fish between 50 and 60 cm

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#klxfibgzky .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#klxfibgzky .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#klxfibgzky .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#klxfibgzky .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#klxfibgzky .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#klxfibgzky .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#klxfibgzky .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#klxfibgzky .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#klxfibgzky .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#klxfibgzky .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#klxfibgzky .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#klxfibgzky .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#klxfibgzky .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#klxfibgzky .gt_from_md > :first-child {
  margin-top: 0;
}

#klxfibgzky .gt_from_md > :last-child {
  margin-bottom: 0;
}

#klxfibgzky .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#klxfibgzky .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#klxfibgzky .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#klxfibgzky .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#klxfibgzky .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#klxfibgzky .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#klxfibgzky .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#klxfibgzky .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#klxfibgzky .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#klxfibgzky .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#klxfibgzky .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#klxfibgzky .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#klxfibgzky .gt_left {
  text-align: left;
}

#klxfibgzky .gt_center {
  text-align: center;
}

#klxfibgzky .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#klxfibgzky .gt_font_normal {
  font-weight: normal;
}

#klxfibgzky .gt_font_bold {
  font-weight: bold;
}

#klxfibgzky .gt_font_italic {
  font-style: italic;
}

#klxfibgzky .gt_super {
  font-size: 65%;
}

#klxfibgzky .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="klxfibgzky" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">DROP_CD</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">n</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left">20190921_231549</td>
      <td class="gt_row gt_center">14</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">20190920_200547</td>
      <td class="gt_row gt_center">12</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">20171102_205732</td>
      <td class="gt_row gt_center">9</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">20190916_222136</td>
      <td class="gt_row gt_center">9</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">20171027_210742</td>
      <td class="gt_row gt_center">6</td>
    </tr>
  </tbody>
  
  
</table></div>

![5 camera drops had more than 5 fish between 50 and 60 cm. The samples
came from the Big Island (n = 1), Kauai (n = 1), Maui Nui (n = 2), and
Oahu (n =1) were caught at depths of 150 to 210 m. The two highest
catches occurred in 2019, and all occurred in 2019 or
2017.](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-9-1.png)

## Fishing Lengths

    ##       PSU         SAMPLE_ID          SPECIES_CD        SCIENTIFIC_NAME   
    ##  Min.   :  271   Length:293         Length:293         Length:293        
    ##  1st Qu.:11839   Class :character   Class :character   Class :character  
    ##  Median :16916   Mode  :character   Mode  :character   Mode  :character  
    ##  Mean   :19741                                                           
    ##  3rd Qu.:32422                                                           
    ##  Max.   :43397                                                           
    ##                                                                          
    ##  COMMON_NAME          LENGTH_CM       WEIGHT_LB        BFISH          
    ##  Length:293         Min.   :16.00   Min.   :0.000   Length:293        
    ##  Class :character   1st Qu.:35.50   1st Qu.:1.408   Class :character  
    ##  Mode  :character   Median :41.50   Median :2.546   Mode  :character  
    ##                     Mean   :41.54   Mean   :3.300                     
    ##                     3rd Qu.:48.00   3rd Qu.:4.877                     
    ##                     Max.   :77.00   Max.   :9.900                     
    ##                     NA's   :1       NA's   :253                       
    ##  SAMPLE_MEAN_DEPTH_M    Island         
    ##  Min.   : 79.0       Length:293        
    ##  1st Qu.:116.0       Class :character  
    ##  Median :137.0       Mode  :character  
    ##  Mean   :139.3                         
    ##  3rd Qu.:158.0                         
    ##  Max.   :260.0                         
    ## 

#### Sites that caught more than 1 fish between 20 and 25 cm

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#uuxhxpqibk .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#uuxhxpqibk .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#uuxhxpqibk .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#uuxhxpqibk .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#uuxhxpqibk .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uuxhxpqibk .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#uuxhxpqibk .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#uuxhxpqibk .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#uuxhxpqibk .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#uuxhxpqibk .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#uuxhxpqibk .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#uuxhxpqibk .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#uuxhxpqibk .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#uuxhxpqibk .gt_from_md > :first-child {
  margin-top: 0;
}

#uuxhxpqibk .gt_from_md > :last-child {
  margin-bottom: 0;
}

#uuxhxpqibk .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#uuxhxpqibk .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#uuxhxpqibk .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uuxhxpqibk .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#uuxhxpqibk .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uuxhxpqibk .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#uuxhxpqibk .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#uuxhxpqibk .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uuxhxpqibk .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#uuxhxpqibk .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#uuxhxpqibk .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#uuxhxpqibk .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#uuxhxpqibk .gt_left {
  text-align: left;
}

#uuxhxpqibk .gt_center {
  text-align: center;
}

#uuxhxpqibk .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#uuxhxpqibk .gt_font_normal {
  font-weight: normal;
}

#uuxhxpqibk .gt_font_bold {
  font-weight: bold;
}

#uuxhxpqibk .gt_font_italic {
  font-style: italic;
}

#uuxhxpqibk .gt_super {
  font-size: 65%;
}

#uuxhxpqibk .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="uuxhxpqibk" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">SAMPLE_ID</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">n</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left">201708310930LANA</td>
      <td class="gt_row gt_center">5</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">201708310749LANA</td>
      <td class="gt_row gt_center">4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">201910060752JOMO</td>
      <td class="gt_row gt_center">4</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">201709101027ROMO</td>
      <td class="gt_row gt_center">3</td>
    </tr>
  </tbody>
  
  
</table></div>

![4 fishing events had more than 1 fish between 20 and 25 cm. The
samples came from Oahu (n = 2) and Maui Nui (n = 2) and were caught at
depths 89 to 142 m. The catches occurred in 2017 (n = 3) and 2019 (n =
1).](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-13-1.png)

## Camera Lengths by Island and Year

-   5 Islands - Big Island, Maui Nui, Oahu, Ni’ihau, Kauai
-   4 Years - 2016, 2017, 2018, 2019

#### Number of Camera Drops per Year

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#migrymmdrd .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#migrymmdrd .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#migrymmdrd .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#migrymmdrd .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#migrymmdrd .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#migrymmdrd .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#migrymmdrd .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#migrymmdrd .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#migrymmdrd .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#migrymmdrd .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#migrymmdrd .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#migrymmdrd .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#migrymmdrd .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#migrymmdrd .gt_from_md > :first-child {
  margin-top: 0;
}

#migrymmdrd .gt_from_md > :last-child {
  margin-bottom: 0;
}

#migrymmdrd .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#migrymmdrd .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#migrymmdrd .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#migrymmdrd .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#migrymmdrd .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#migrymmdrd .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#migrymmdrd .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#migrymmdrd .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#migrymmdrd .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#migrymmdrd .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#migrymmdrd .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#migrymmdrd .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#migrymmdrd .gt_left {
  text-align: left;
}

#migrymmdrd .gt_center {
  text-align: center;
}

#migrymmdrd .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#migrymmdrd .gt_font_normal {
  font-weight: normal;
}

#migrymmdrd .gt_font_bold {
  font-weight: bold;
}

#migrymmdrd .gt_font_italic {
  font-style: italic;
}

#migrymmdrd .gt_super {
  font-size: 65%;
}

#migrymmdrd .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="migrymmdrd" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Year</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">n</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left">2016</td>
      <td class="gt_row gt_center">15</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">2017</td>
      <td class="gt_row gt_center">38</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">2018</td>
      <td class="gt_row gt_center">36</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">2019</td>
      <td class="gt_row gt_center">42</td>
    </tr>
  </tbody>
  
  
</table></div>

#### Density Plot by Year

![](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-15-1.png)<!-- -->

-   All years have a bimodal (or tri) distribution, but small modes
    differ.  
-   2019 has three modes, with middle one being the smallest.  
-   2017 and 2018 are very similar to each other and 2016 is the most
    distinct from the other years.

#### Number of Camera Drops per Island

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#owbmbbrtuq .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#owbmbbrtuq .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#owbmbbrtuq .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#owbmbbrtuq .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#owbmbbrtuq .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#owbmbbrtuq .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#owbmbbrtuq .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#owbmbbrtuq .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#owbmbbrtuq .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#owbmbbrtuq .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#owbmbbrtuq .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#owbmbbrtuq .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#owbmbbrtuq .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#owbmbbrtuq .gt_from_md > :first-child {
  margin-top: 0;
}

#owbmbbrtuq .gt_from_md > :last-child {
  margin-bottom: 0;
}

#owbmbbrtuq .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#owbmbbrtuq .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#owbmbbrtuq .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#owbmbbrtuq .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#owbmbbrtuq .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#owbmbbrtuq .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#owbmbbrtuq .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#owbmbbrtuq .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#owbmbbrtuq .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#owbmbbrtuq .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#owbmbbrtuq .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#owbmbbrtuq .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#owbmbbrtuq .gt_left {
  text-align: left;
}

#owbmbbrtuq .gt_center {
  text-align: center;
}

#owbmbbrtuq .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#owbmbbrtuq .gt_font_normal {
  font-weight: normal;
}

#owbmbbrtuq .gt_font_bold {
  font-weight: bold;
}

#owbmbbrtuq .gt_font_italic {
  font-style: italic;
}

#owbmbbrtuq .gt_super {
  font-size: 65%;
}

#owbmbbrtuq .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="owbmbbrtuq" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">Island</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">n</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_center">Maui Nui</td>
      <td class="gt_row gt_center">53</td>
    </tr>
    <tr>
      <td class="gt_row gt_center">Big Island</td>
      <td class="gt_row gt_center">48</td>
    </tr>
    <tr>
      <td class="gt_row gt_center">Oahu</td>
      <td class="gt_row gt_center">21</td>
    </tr>
    <tr>
      <td class="gt_row gt_center">Niihau</td>
      <td class="gt_row gt_center">5</td>
    </tr>
    <tr>
      <td class="gt_row gt_center">Kauai</td>
      <td class="gt_row gt_center">4</td>
    </tr>
  </tbody>
  
  
</table></div>

#### Density Plot by Island

![](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-17-1.png)<!-- -->

-   Big Island and Oahu have more smaller fish and less bigger fish than
    the other islands.  
-   Niihau only had larger fish.  
-   Kauai had an almost even split between smaller and larger fish (with
    bigger small fish so less of a difference between modes).

#### Number of Fish per Island/Year

![](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

#### Density Plot by Island and Year

![](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

-   In the Big Island, catches were pretty consistent between 2017-2019
    but 2016 was very different, probably because n = 3. Also, depth was
    more in the mid-range of sampled depths. They did not sample in the
    shallower range, unlike other years.  
-   Kauai only had 2 years of data (2016 n = 24, and 2019 n = 15) and
    the distributions were different, 2016 had mostly smaller fish
    whereas 2019 had more larger fish.  
-   Maui Nui catches all had the same mode for larger sizes (between
    40 - 70 cm) but the modes for the smaller sized fish fluctuated each
    year.  
-   Niihau had very small sample sizes (n = 2 - 5) for the 3 years
    sampling occurred there so distributions are not that reliable but
    size range is fairly consistent. Also, the distributions are
    consistent with the 2019 lengths in Kauai (support for combining
    those regions?).  
-   Oahu had consistent length distributions for 2017 and 2018 but 2019
    was almost exclusively small fish (&lt; 20 cm, n = 67)

#### Density Plot by Year and Island

![](BFISH_Length_Comp_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

-   In 2016, Big Island (n = 3) and Kauai (n = 24) were similar and
    Niiahu (n = 2) and Maui Nui (n = 10) were similar.  
-   In 2017, mostly smaller fish caught off Big Island compared to the
    other islands.
-   In 2018, there is a bimodal distribution for Maui Nui and less
    pronouced for the Big Island. Oahu has only larger fish (&gt; 40
    cm).  
-   In 2019, the first mode is almost exclusively from Oahu samples, the
    second mode is from Big Island and Maui Nui samples, and the third
    mode is from all islands.

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#vauqmxblvo .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#vauqmxblvo .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#vauqmxblvo .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#vauqmxblvo .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#vauqmxblvo .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#vauqmxblvo .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#vauqmxblvo .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#vauqmxblvo .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#vauqmxblvo .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#vauqmxblvo .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#vauqmxblvo .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#vauqmxblvo .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#vauqmxblvo .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#vauqmxblvo .gt_from_md > :first-child {
  margin-top: 0;
}

#vauqmxblvo .gt_from_md > :last-child {
  margin-bottom: 0;
}

#vauqmxblvo .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#vauqmxblvo .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#vauqmxblvo .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#vauqmxblvo .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#vauqmxblvo .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#vauqmxblvo .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#vauqmxblvo .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#vauqmxblvo .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#vauqmxblvo .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#vauqmxblvo .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#vauqmxblvo .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#vauqmxblvo .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#vauqmxblvo .gt_left {
  text-align: left;
}

#vauqmxblvo .gt_center {
  text-align: center;
}

#vauqmxblvo .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#vauqmxblvo .gt_font_normal {
  font-weight: normal;
}

#vauqmxblvo .gt_font_bold {
  font-weight: bold;
}

#vauqmxblvo .gt_font_italic {
  font-style: italic;
}

#vauqmxblvo .gt_super {
  font-size: 65%;
}

#vauqmxblvo .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="vauqmxblvo" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  <thead class="gt_header">
    <tr>
      <th colspan="6" class="gt_heading gt_title gt_font_normal" style>Sampled Depths</th>
    </tr>
    <tr>
      <th colspan="6" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style></th>
    </tr>
  </thead>
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">min</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Q1</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Q2</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Q3</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">max</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Big Island</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2016</td>
      <td class="gt_row gt_right">123.91</td>
      <td class="gt_row gt_right">152.16</td>
      <td class="gt_row gt_right">180.41</td>
      <td class="gt_row gt_right">189.41</td>
      <td class="gt_row gt_right">198.41</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2017</td>
      <td class="gt_row gt_right">82.00</td>
      <td class="gt_row gt_right">110.00</td>
      <td class="gt_row gt_right">130.00</td>
      <td class="gt_row gt_right">138.50</td>
      <td class="gt_row gt_right">203.00</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2018</td>
      <td class="gt_row gt_right">97.00</td>
      <td class="gt_row gt_right">121.25</td>
      <td class="gt_row gt_right">134.00</td>
      <td class="gt_row gt_right">154.00</td>
      <td class="gt_row gt_right">224.00</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2019</td>
      <td class="gt_row gt_right">91.88</td>
      <td class="gt_row gt_right">94.38</td>
      <td class="gt_row gt_right">94.56</td>
      <td class="gt_row gt_right">143.48</td>
      <td class="gt_row gt_right">223.89</td>
    </tr>
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Kauai</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2016</td>
      <td class="gt_row gt_right">114.03</td>
      <td class="gt_row gt_right">114.03</td>
      <td class="gt_row gt_right">114.03</td>
      <td class="gt_row gt_right">114.03</td>
      <td class="gt_row gt_right">177.28</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2019</td>
      <td class="gt_row gt_right">160.56</td>
      <td class="gt_row gt_right">160.56</td>
      <td class="gt_row gt_right">160.56</td>
      <td class="gt_row gt_right">160.56</td>
      <td class="gt_row gt_right">160.56</td>
    </tr>
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Maui Nui</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2016</td>
      <td class="gt_row gt_right">91.41</td>
      <td class="gt_row gt_right">138.22</td>
      <td class="gt_row gt_right">166.56</td>
      <td class="gt_row gt_right">185.27</td>
      <td class="gt_row gt_right">203.56</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2017</td>
      <td class="gt_row gt_right">95.00</td>
      <td class="gt_row gt_right">108.00</td>
      <td class="gt_row gt_right">131.00</td>
      <td class="gt_row gt_right">194.00</td>
      <td class="gt_row gt_right">238.00</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2018</td>
      <td class="gt_row gt_right">102.00</td>
      <td class="gt_row gt_right">111.00</td>
      <td class="gt_row gt_right">111.00</td>
      <td class="gt_row gt_right">141.00</td>
      <td class="gt_row gt_right">180.00</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2019</td>
      <td class="gt_row gt_right">102.94</td>
      <td class="gt_row gt_right">112.06</td>
      <td class="gt_row gt_right">146.29</td>
      <td class="gt_row gt_right">154.56</td>
      <td class="gt_row gt_right">202.16</td>
    </tr>
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Niihau</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2016</td>
      <td class="gt_row gt_right">149.78</td>
      <td class="gt_row gt_right">149.78</td>
      <td class="gt_row gt_right">149.78</td>
      <td class="gt_row gt_right">149.78</td>
      <td class="gt_row gt_right">149.78</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2017</td>
      <td class="gt_row gt_right">148.00</td>
      <td class="gt_row gt_right">148.00</td>
      <td class="gt_row gt_right">148.00</td>
      <td class="gt_row gt_right">191.50</td>
      <td class="gt_row gt_right">235.00</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2019</td>
      <td class="gt_row gt_right">111.69</td>
      <td class="gt_row gt_right">111.69</td>
      <td class="gt_row gt_right">111.69</td>
      <td class="gt_row gt_right">113.03</td>
      <td class="gt_row gt_right">113.03</td>
    </tr>
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Oahu</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2017</td>
      <td class="gt_row gt_right">139.00</td>
      <td class="gt_row gt_right">177.00</td>
      <td class="gt_row gt_right">210.00</td>
      <td class="gt_row gt_right">210.00</td>
      <td class="gt_row gt_right">210.00</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2018</td>
      <td class="gt_row gt_right">95.00</td>
      <td class="gt_row gt_right">126.00</td>
      <td class="gt_row gt_right">133.00</td>
      <td class="gt_row gt_right">192.00</td>
      <td class="gt_row gt_right">210.00</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_stub">2019</td>
      <td class="gt_row gt_right">79.81</td>
      <td class="gt_row gt_right">79.81</td>
      <td class="gt_row gt_right">101.19</td>
      <td class="gt_row gt_right">107.44</td>
      <td class="gt_row gt_right">126.81</td>
    </tr>
  </tbody>
  
  
</table></div>

Questions:

-   2016 sampling? Why so low?  
-   2019 What happened in Oahu? Why mostly really small fish?
