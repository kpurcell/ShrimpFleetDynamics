###########################################################
# NOAA_Shrimp_ELB_GAM_Analysis
# Script for Fig. 1 - a comparison of 1D smooth terms for both LA and TX
# Inputs will come from non-spatial models due to their inclusion of DO as a smooth
#
# Code by: KM Purcell
# updated: 2013-12-13
###########################################################
load("C:\\Users\\Kevin.Purcell\\Desktop\\2014-11-04.RData")

pdf(file="C:\\Users\\Kevin.Purcell\\Documents\\GitHub\\ShrimpFleetDynamics\\Presentation\\Article\\figure1.pdf",
    #width = 4.86, height = 9.19, 
    #family = "Arial", 
    #paper = "special", 
    #onefile = FALSE
    )

# postscript(file="C:\\Users\\Kevin.Purcell\\Documents\\GitHub\\NOAA_Shrimp_ELB_Analysis\\Presentation\\Article\\figure\\Figure1.eps", horizontal=F,
#            onefile=F,
#            width=6.83, height=9.19,
#            family="Arial",
#            pointsize=12)

par(mfrow=c(3,2))

#Depth
plot(nspm.2mo.dur.la, select=2, shade=T, all.terms=T, scale=0,rug=T,
     xlab="Depth (m)",
     ylab="s(Depth)",
     main="Louisiana")
text(95, 0.41, "(a)", cex=1,font=2)

plot(nspm.2mo.dur.tx, select=2, shade=T, all.terms=T, scale=0,rug=T,
     xlab="Depth (m)",
     ylab="",
     main="Texas")
text(82, 0.48, "(b)", cex=1,font=2)

#Day of Year
plot(nspm.2mo.dur.la, select=4, shade=T, all.terms=T, scale=0,rug=T,
     xlab="Julian Day",
     ylab="s(Julian Day)")
text(241, 0.15, "(c)", cex=1,font=2)
plot(nspm.2mo.dur.tx, select=4, shade=T, all.terms=T, scale=0,rug=T,
     xlab="Julian Day",
     ylab="")
text(242,0.17, "(d)", cex=1,font=2)

#DO
plot(nspm.2mo.dur.la, select=1, shade=T, all.terms=T, scale=0,rug=T,
     xlab=expression(paste("Dissolved Oxygen" ~ (mgL^{-1}))),
     ylab="s(Dissolved Oxygen)")
text(6.2, 0.12, "(e)", cex=1,font=2)
plot(nspm.2mo.dur.tx, select=1, shade=T, all.terms=T, scale=0,rug=T,
     xlab=expression(paste("Dissolved Oxygen" ~ (mgL^{-1}))),
     ylab="")
text(6.7, 0.19, "(f)", cex=1,font=2)

# #Price
# plot(nspm.2mo.dur.la, select=3, shade=T, all.terms=T, scale=0,rug=F,
#      xlab="Price per pound (USD)",
#      ylab="s(Price)")
# text(5.8, 0.2, "(e)", cex=1,font=2)
# plot(nspm.2mo.dur.tx, select=3, shade=T, all.terms=T, scale=0,rug=F,
#      xlab="Price per pound (USD)",
#      ylab="")
# text(5.2, 0.22, "(f)", cex=1,font=2)

dev.off()