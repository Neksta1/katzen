read_voxelvalues <- function (datalist, type, timepoint) {
	# datalasit = patient information	
	# type = type kidney (sick "s" or healthy "h)	
	# timepoint =  1st, 2nd or 3rd measurement	
	# returns voxelvalues
	
	patients <- datalist[,2:3]
        region_names <- datalist[,8]
		
	filelist <- paste("./data/",patients[,1], "/",patients[,2],"/",region_names,"_roivalues.csv", sep="")
	voxelvalues <- lapply(filelist, read.csv2, header = TRUE, na.strings = c("NaN","#NAME?", "", "NA"), 
                              stringsAsFactors = FALSE, dec=".")
	voxelvalues <- lapply(voxelvalues, function(x) x[,1:10])
	voxelvalues <- lapply(voxelvalues, function(x) x[complete.cases(x),])
#        voxelvalues <- lapply(voxelvalues, data.table)
	names(voxelvalues) <- paste(patients[,1],patients[,2]) 
	voxelvalues
	#voxelvalues	<- lapply(voxelvalues[complete.cases(voxelvalues)]	
}	