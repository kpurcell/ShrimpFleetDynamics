###########################################################
# NOAA_Shrimp_ELB_GAM_Analysis
# Script for Fig. 3A - a comparison of 1D smooth terms for both LA and TX
# Inputs will come from non-spatial models for avg tow duration for the DO term
#
# Code by: KM Purcell
# updated: 2013-12-10
# TODO -> 
###########################################################
#load(file.choose())  #load R dat file

pdf(file="C:\\Users\\Kevin.Purcell\\Documents\\GitHub\\ShrimpFleetDynamics\\Presentation\\Article\\figure4.pdf",
    width = 8, height = 8, 
   # family = "Arial", 
    #paper = "special", 
    #onefile = FALSE
   )

# postscript(file="C:\\Users\\Kevin.Purcell\\Documents\\GitHub\\NOAA_Shrimp_ELB_Analysis\\Presentation\\Article\\figure\\Figure4.ps", 
#            horizontal=F,
#            onefile=F,
#            width=3.27, height=9.19,
#            family="Arial",
#            pointsize=12)

par(mfrow=c(2,2))

#DO
plot(nspm.2mo.avg.dur.la, select=1, shade=T, all.terms=T, scale=0, rug=F,
     xlab=expression(paste("Dissolved Oxygen" ~ (mgL^{-1}))),
     ylab="s(Average Tow Duration)",
     ylim=c(-0.35,0.23),
     main="Louisiana")
#abline(h=0)
text(0.49, .22, "(a)", cex=1,font=2)
plot(nspm.2mo.avg.dur.tx, select=1, shade=T, all.terms=T, scale=0,rug=F,
     xlab=expression(paste("Dissolved Oxygen"~ (mgL^{-1}))),
     ylab="s(Average Tow Duration)",
     ylim=c(-0.35,0.23),
     main="Texas")
#abline(h=0)
text(1.8, .22, "(b)", cex=1,font=2)

#DO
plot(nspm.2mo.tow.count.la, select=1, shade=T, all.terms=T, scale=0,rug=F,
     xlab=expression(paste("Dissolved Oxygen"~ (mgL^{-1}))),
     ylab="s(Tow Count)",
     ylim=c(-1.2,0.22))
#abline(h=0)
text(0.55,0.22, "(c)", cex=1,font=2)
plot(nspm.2mo.tow.count.tx, select=1, shade=T, all.terms=T, scale=0,rug=F,
     xlab=expression(paste("Dissolved Oxygen"~ (mgL^{-1}))),
     ylab="s(Tow Count)")
#abline(h=0)
text(1.75, .35, "(d)", cex=1,font=2)
dev.off()
