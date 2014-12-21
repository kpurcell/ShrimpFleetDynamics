## Figure Legends

**Figure 1. Model smooths.** 1-dimensional smooth plots for the effect of predictor variables on shrimping effort. Left column plots are for the Louisiana model and right column plots are for the Texas model. The effects of dissolved oxygen (mg^-1^L) (a,b), depth in meters (m)(c,d) and price per pound in US dollars (USD) (e,f) and Julian day (g,h). Shaded area represents the 95% confidence intervals.
 
**Figure 2. Model predictions.** Geospatial regression model predictions of shrimping effort for the Texas (a) and Louisiana (b) coastal shelves under average model conditions. Circles represent the rate of change in shrimping effort with dissolved oxygen where positive slopes are shown in black and negative slopes are shown in red.  Geographical reference points including Galveston Bay (GB) in Texas and Atchafalaya Bay (AB), Terrebonne Bay (TB), and the Louisiana Bight (LB) in Louisiana are identified.

**Figure 3. Model predictions for years of severe (2008) and moderate (2009) hypoxia.** Geospatial regression model predictions of  shrimping effort  on the Louisiana (a, b) and Texas (c, d) continental shelf under severe and moderate hypoxia.  Geographical reference points including Galveston Bay (GB) in Texas and Atchafalaya Bay (AB), Terrebonne Bay (TB), and the Louisiana Bight (LB) in Louisiana are identified.

**Figure 4. Alternative model smooths.** 1-dimension smooth plots for the effect of dissolved oxygen concentration on average tow duration for the Louisiana (a) and Texas (b) shelves.  Additionally the effect of dissolved oxygen concentration on tow count is visualized for the Louisiana (c) and Texas shelves (d).  Shaded areas represent the 95% confidence intervals.

## Figures



## Tables


### Table 1

   Year     No. Vessels    % of Vessels      # of Tows     Total Annual Effort (Vessel Days)     Area Hypoxic (km^2^)
--------- --------------  --------------   -------------   ----------------------------------   ----------------------
   2005      74               2.91               6577           1876978.32                             10200   
   2006     167               7.51              12067           1715535.36                             15600    
   2007     248               11.51             18971           1563671.76                             20600    
   2008     406               21.36             31592           1192488.48                             22300    
   2009     386               20.43             35639           1415538.48                              7100    
   2010     250               14.07             17339           1230498.72                             15600  

 
### Table 2


Term           NS-LA             SP-LA              NS-TX               SP-TX
----------     --------------    -----------        --------------      --------------
Intercept      1.71 (0.12)       1.79 (0.12)        1.09 (0.10)         1.05 (0.11)   
2005           0.00 (0.08)       0.02 (0.08)        0.19 (0.03)         0.15 (0.04)   
2006           0.34 (0.06)       0.37 (0.06)        0.26 (0.04)         0.23 (0.04)   
2007           0.53 (0.05)       0.54 (0.05)        0.20 (0.04)         0.19 (0.04)   
2008           0.91 (0.08)       0.98 (0.08)        0.39 (0.09)         0.38 (0.09)   
2009           0.81 (0.03)       0.82 (0.03)        0.65 (0.02)         0.64 (0.03)   
2010           0.77 (0.03)       0.79 (0.03)        0.52 (0.03)         0.53 (0.03)   
Fuel Price     0.08 (0.04)       0.11 (0.04)        0.19 (0.05)         0.19 (0.05)   
Fishery effort 0.00 (0.00)       0.00 (0.00)        0.00 (0.00)         0.00 (0.00)   
s(DO)          6.73 (7.55)                          7.41 (7.89)   
s(Depth)       7.07 (7.74)       7.04 (7.73)        7.91 (7.96)         6.22 (7.22)   
s(Price)       6.29 (7.24)       6.26 (7.22)        6.81 (7.59)         6.99 (7.70)   
s(Julian Day)  6.87 (7.62)       6.90 (7.64)        7.51 (7.87)         7.84 (7.98)   
s(Lon., Lat.)  26.83 (27.90)     27.71 (27.96)      27.13 (27.97)       24.40 (25.59)   
s(Lon.,Lat):DO                   26.72 (29.16)                          22.50 (25.84)   
Deviance expl. 0.15              0.15               0.14                0.14
GCV score      0.80              0.79               0.71                0.70



### Table 3


Term             AD-LA             AD-LA              TC-TX               TC-TX
----------       --------------    -----------        --------------      --------------
Intercept        3.62 (0.32)       2.99 (0.32)        NA                  NA   
2005             -0.56 (0.20)      -0.13 (0.11)       0.34 (0.09)         0.23 (0.04)   
2006             0.63 (0.17)       0.60 (0.13)        0.51 (0.08)         0.07 (0.05)   
2007             1.32 (0.13)       0.61 (0.11)        0.63 (0.08)         0.02 (0.05)   
2008             1.99 (0.22)       1.61 (0.25)        1.23 (0.09)         0.05 (0.10)   
2009             1.75 (0.09)       1.47 (0.08)        0.97 (0.07)         0.46 (0.05)   
2010             1.74 (0.07)       1.60 (0.09)        1.07 (0.06)         0.24 (0.05)   
Fuel Price       -0.16 (0.11)      0.02 (0.15)        -0.14 (0.02)        0.24 (0.03)   
Fishery effort   <0.01 (0.01)      <0.01 (<0.01)      <0.01 (<0.01)       0.02 (0.03)   
s(Depth)         6.80 (7.60)       5.90 (6.96)        8.79 (8.98)         8.69 (8.97)   
s(Price)         2.53 (3.22)       5.47 (6.53)        8.12 (8.80)         8.23 (8.84)   
s(Julian Day)    4.53 (5.56)       7.05 (7.60)        8.88 (8.99)         8.76 (8.96)   
s(Lon., Lat.)    27.26 (27.83)     27.71 (27.96)      28.94 (28.99)       29.94 (28.98)   
s(Lon.,Lat):DO   26.82 (29.13)     26.72 (29.16)      29.18 (29.94)       27.32 (29.46)
Deviance expl.   0.13              0.15               0.17                0.14
GCV/UBRE score   5.54              0.79               1.08                0.80




