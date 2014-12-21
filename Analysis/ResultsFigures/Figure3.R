###########################################################
# NOAA_Shrimp_ELB_GAM_Analysis
# Script for Fig. 2 - a comparison of 2D spatial smooth terms for both LA and TX
# Inputs will come from spatial models and include slopes
#
# Code by: KM Purcell
# updated: 2013-12-4
# TODO -> add letters, add symbol scale, standardize surface contour colors
#         add code for pdf creation
###########################################################
load("C:\\Users\\Kevin.Purcell\\Desktop\\2014-11-04.RData")
library(mgcv)
library(maps)
library(mapdata)

pdf(file="C:\\Users\\Kevin.Purcell\\Documents\\GitHub\\ShrimpFleetDynamics\\Presentation\\Article\\figure3.pdf",
    width = 9, height = 9, 
    #family = "Arial", 
    #paper = "special", 
    #onefile = FALSE
    )

# postscript(file="C:\\Users\\Kevin.Purcell\\Documents\\GitHub\\NOAA_Shrimp_ELB_Analysis\\Presentation\\Article\\figure\\Figure3.ps", 
#            horizontal=F,
#            onefile=F,
#            width=9, height=9,
#            family="Arial",
#            pointsize=12)
#windows(width=9, height=9)
par(mfrow=c(2,2))

#Plot model predictions surfaces for LA model
vis.gam(m2008.la, view=c("cent_lon", "cent_lat"), zlim=c(-1,5), ylim=c(28,30),
        plot.type="contour", type="response", contour="black",
        color="bw", n.grid=50, too.far=0.4,
        main="High Hypoxia", ylab=expression(paste("Latitude" ~ (degree~N))), xlab=expression(paste("Longitude" ~ (degree~W))))
map("worldHires", fill=T, col="grey",add=T)
text(-93.5, 29.94, "(a)", cex=1,font=2)
text(-91.5, 29.9, "AB", cex=1,font=1)
text(-90.5, 29.5, "TB", cex=1,font=1)
text(-90., 29.7, "LB", cex=1,font=1)

#Plot model predicted surface for Tx model
vis.gam(m2009.la, view=c("cent_lon", "cent_lat"),zlim=c(-1,5),ylim=c(28,30),
        plot.type="contour", type="response", contour="black",
        color="bw", n.grid=50, too.far=0.4,
        main="Low Hypoxia", ylab=expression(paste("Latitude" ~ (degree~N))), xlab=expression(paste("Longitude" ~ (degree~W))))
#add coastline
map("worldHires", fill=T, col="grey",add=T)
text(-93.5, 29.94, "(b)", cex=1,font=2)
text(-91.5, 29.9, "AB", cex=1,font=1)
text(-90.5, 29.5, "TB", cex=1,font=1)
text(-90., 29.7, "LB", cex=1,font=1)

vis.gam(m2008.tx, view=c("cent_lon", "cent_lat"),zlim=c(-1,5),
        plot.type="contour", type="response", contour="black",
        color="bw", n.grid=50, too.far=0.4,
        main="", ylab=expression(paste("Latitude" ~ (degree~N))), xlab=expression(paste("Longitude" ~ (degree~W))))
#add coastline
map("worldHires", fill=T, col="grey",add=T)
text(-97.1, 29.58, "(c)", cex=1,font=2)
text(-95.24, 29.6, "GB", cex=1,font=1)

#Plot model predictions surfaces for LA model
vis.gam(m2009.tx, view=c("cent_lon", "cent_lat"), zlim=c(-1,5),
        plot.type="contour", type="response", contour="black",
        color="bw", n.grid=50, too.far=0.4,
        main="", ylab=expression(paste("Latitude" ~ (degree~N))), xlab=expression(paste("Longitude" ~ (degree~W))))

#add coastline
map("worldHires", fill=T, col="grey",add=T)
text(-97.1, 29.58, "(d)", cex=1,font=2)
text(-95.24, 29.6, "GB", cex=1,font=1)

dev.off()


