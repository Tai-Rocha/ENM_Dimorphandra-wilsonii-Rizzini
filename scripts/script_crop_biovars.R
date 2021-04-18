############################ Lendo e importando shape para o  corte

myshape <- readShapePoly("D:/Shapes/wwf_ecoregions/wwf_terr_ecos.shp")

################################## HADGEM_45
################################## Selecionado e dando stack (unindo) nas biovars

hadgem_45 <- stack(list.files("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/HadGEM2-ES/HadGEM2-ES_4.5", pattern = ".tif$", full.names = T))

plot(hadgem_45)

################################## Cortando as biovars pelo shape e plotando 
hadgem_45_crop <- crop(hadgem_45,myshape)

plot(hadgem_45_crop)

###################### usando a função unstack para separar as layers 

unstack(hadgem_45_crop)

plot(hadgem_45_crop)

############################ Loop to extract layers specifcs layers
bio_had_45 <- as.factor(c("he45bi502", "he45bi505", "he45bi506", "he45bi5013","he45bi5014", "he45bi5018", "he45bi5019"))
for (i in 1:length(bio_had_45))
{
  writeRaster(hadgem_45_crop[[i]], filename = paste0("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/HadGEM2-ES/HadGEM2-ES_4.5_CORTE/", bio_had_45[i], "tif"), format = "GTiff")
}


##################################
################################## HADGEM_85
################################## Selecionado e dando stack nas biovars

hadgem_85 <- stack(list.files("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/HadGEM2-ES/HadGEM2-ES_8.5", pattern = ".tif$", full.names = T))

plot(hadgem_85)

################################## Cortando as biovars pelo sshape e plotando 
hadgem_85_crop <- crop(hadgem_85,myshape)

plot(hadgem_85_crop)


###################### usando a função unstack para separar as layers 

unstack(hadgem_85_crop)

plot(hadgem_85_crop)

############################ Loop to extract layers 
bio_had_85 <- as.factor(c("he85bi502", "he85bi505", "he85bi506", "he85bi5013","he85bi5014", "he85bi5018", "he85bi5019"))
for (i in 1:length(bio_had_85))
{
  writeRaster(hadgem_85_crop[[i]], filename = paste0("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/HadGEM2-ES/HadGEM2-ES_8.5_CORTE/", bio_had_85[i], "tif"), format = "GTiff")
}

####################################
####################################
####################################

################################## MIROC5_45
################################## Selecionado e dando stack (unindo) nas biovars

miroc_45 <- stack(list.files("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/MIROC5/MIROC5_4.5", pattern = ".tif$", full.names = T))

plot(miroc_45)


################################## Cortando as biovars pelo shape e plotando 
miroc_45_crop <- crop(miroc_45,myshape)

plot(miroc_45_crop)

###################### usando a função unstack para separar as layers 

unstack(miroc_45_crop)

plot(miroc_45_crop)

############################ Loop to extract layers specifcs layers
bio_miroc_45 <- as.factor(c("mc45bi502", "mc45bi505", "mc45bi506", "mc45bi5013","mc45bi5014", "mc45bi5018", "mc45bi5019"))
for (i in 1:length(bio_miroc_45))
{
  writeRaster(miroc_45_crop[[i]], filename = paste0("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/MIROC5/MIROC_4.5_CORTE/", bio_miroc_45[i], "tif"), format = "GTiff")
}


####################################
####################################
####################################

################################## MIROC5_85
################################## Selecionado e dando stack (unindo) nas biovars

miroc_85 <- stack(list.files("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/MIROC5/MIROC5_8.5", pattern = ".tif$", full.names = T))

plot(miroc_85)

################################## Cortando as biovars pelo shape e plotando 
miroc_85_crop <- crop(miroc_85,myshape)

plot(miroc_85_crop)

###################### usando a função unstack para separar as layers 

unstack(miroc_85_crop)

plot(miroc_85_crop)

############################ Loop to extract layers specifcs layers
bio_miroc_85 <- as.factor(c("mc85bi502", "mc85bi505", "mc85bi506", "mc85bi5013","mc85bi5014", "mc85bi5018", "mc85bi5019"))
for (i in 1:length(bio_miroc_85))
{
  writeRaster(miroc_85_crop[[i]], filename = paste0("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/MIROC5/MIROC_8.5_CORTE/", bio_miroc_85[i], "tif"), format = "GTiff")
}


####################################
####################################
####################################

################################## MPI-ESM-LR_45
################################## Selecionado e dando stack (unindo) nas biovars

mpi_45 <- stack(list.files("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/MPI-ESM-LR/MPI-ESM-LR_4.5", pattern = ".tif$", full.names = T))

plot(mpi_45)


################################## Cortando as biovars pelo shape e plotando 
mpi_45_crop <- crop(mpi_45,myshape)

plot(mpi_45_crop)

###################### usando a função unstack para separar as layers 

unstack(mpi_45_crop)

plot(mpi_45_crop)

############################ Loop to extract layers specifcs layers
bio_mpi_45 <- as.factor(c("mp45bi502", "mp45bi505", "mp45bi506", "mp45bi5013","mp45bi5014", "mp45bi5018", "mp45bi5019"))
for (i in 1:length(bio_mpi_45))
{
  writeRaster(mpi_45_crop[[i]], filename = paste0("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/MPI-ESM-LR/MPI-ESM-LR_4.5_CORTE/", bio_mpi_45[i], "tif"), format = "GTiff")
}


####################################
####################################
####################################

################################## MPI-ESM-LR_85
################################## Selecionando e dando stack (unindo) nas biovars

mpi_85 <- stack(list.files("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/MPI-ESM-LR/MPI-ESM-LR_8.5", pattern = ".tif$", full.names = T))

plot(mpi_85)


################################## Cortando as biovars pelo shape e plotando 
mpi_85_crop <- crop(mpi_85,myshape)

plot(mpi_85_crop)

###################### usando a função unstack para separar as layers 

unstack(mpi_85_crop)

plot(mpi_85_crop)

############################ Loop to extract layers specifcs layers
bio_mpi_85 <- as.factor(c("mp85bi502", "mp85bi505", "mp85bi506", "mp85bi5013","mp85bi5014", "mp85bi5018", "mp85bi5019"))
for (i in 1:length(bio_mpi_85))
{
  writeRaster(mpi_85_crop[[i]], filename = paste0("D:/Dados_Wordclim_Ecoclim/Futuro_Worldclim_1.4v/MPI-ESM-LR/MPI-ESM-LR_8.5_CORTE/", bio_mpi_85[i], "tif"), format = "GTiff")
}


####################################
####################################
####################################

################################## Present
################################## Selecionando e dando stack (unindo) nas biovars

pres <- stack(list.files("D:/Dados_Wordclim_Ecoclim/current_1.4_wordclim_30sec/", pattern = ".bil$", full.names = T))

plot(pres)


################################## Cortando as biovars pelo shape e plotando 
pres_crop <- crop(pres,myshape)

plot(pres_crop)

###################### usando a função unstack para separar as layers 

unstack(pres_crop)

plot(pres_crop)

############################ Loop to extract layers specifcs layers
bio_pres <- as.factor(c("bio_2", "bio_5", "bio_6", "bio_13","bio_14", "bio_18", "bio_19"))
for (i in 1:length(bio_pres))
{
  writeRaster(pres_crop[[i]], filename = paste0("D:/Dados_Wordclim_Ecoclim/current_1.4_wordclim_30sec/pres_crop/", bio_pres[i], "tif"), format = "GTiff")
}



