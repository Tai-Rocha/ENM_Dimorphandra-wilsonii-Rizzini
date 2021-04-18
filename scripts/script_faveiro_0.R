### Library pck

library(dismo)
library(kernlab)
library(modleR)
library(raster)
library(rJava)
## Read and load the occurrence data 

faveiro <- read.csv(file= "./data/faveiro.csv", sep = ",", dec = ".")

### All bioclimatic variables from worldclim List and stack rescpectively

predictos <- list.files(path = 'D:/git_GITHUB/faveiro/data/layers/present',
                        pattern = 'tif',
                        full.names = T)

predictors <- stack(predictos)

################################# Modler SetupSDMdata ###############################

sdmdata_faveiro <- setup_sdmdata(species_name = unique(faveiro[1]),
                             occurrences = faveiro[2:3],
                             predictors = predictors,
                             models_dir = "./results/faveiro",
                             partition_type = "crossvalidation",
                             cv_partitions = 5,
                             cv_n = 5,
                             seed = 512,
                             buffer_type = "maximum" ,
                             plot_sdmdata = T,
                             n_back = 1000,
                             clean_dupl = T,
                             clean_uni = T,
                             clean_nas = T,
                             select_variables = F, 
                             percent = 0.8,
                             cutoff = 0.8)

############################ Modler _do_many ########################################

do_many(species_name = unique(faveiro[1]),
        sdmdata = sdmdata_faveiro,
        occurrences = faveiro[2:3],
        predictors = predictors,
        plot_sdmdata = T,
        models_dir = "./results/faveiro",
        write_png = T,
        write_bin_cut = T,
        bioclim = F,
        domain = F, 
        glm = F,
        svmk = T,
        svme = F, 
        maxent = T,
        maxnet = F,
        rf = T,
        mahal = F, 
        brt = F, 
        equalize = F,
        project_model = T,
        proj_data_folder = "./data/layers/")


######################### Final Model Present########################

final_model(species_name = unique(faveiro[1]), 
            algorithms = NULL,
            weight_par = "TSS",
            select_partitions = TRUE, 
            threshold = c("spec_sens"),
            scale_models = FALSE,
            select_par = "TSS", 
            select_par_val = 0.4,
            consensus_level = 0.5, 
            models_dir = "./results/faveiro",
            final_dir = "final_models",
            proj_dir = "present",
            which_models = c("raw_mean"),
            uncertainty = T,
            write_png = T)


######################### Final Model hadgem45 ########################

final_model(species_name = unique(faveiro[1]), 
            algorithms = NULL,
            weight_par = "TSS",
            select_partitions = TRUE, 
            threshold = c("spec_sens"),
            scale_models = FALSE,
            select_par = "TSS", 
            select_par_val = 0.4,
            consensus_level = 0.5, 
            models_dir = "./results/faveiro",
            final_dir = "final_models",
            proj_dir = "hadgem45",
            which_models = c("raw_mean"),
            uncertainty = T,
            write_png = T)

######################### Final Model hadgem85 ########################

final_model(species_name = unique(faveiro[1]), 
            algorithms = NULL,
            weight_par = "TSS",
            select_partitions = TRUE, 
            threshold = c("spec_sens"),
            scale_models = FALSE,
            select_par = "TSS", 
            select_par_val = 0.4,
            consensus_level = 0.5, 
            models_dir = "./results/faveiro",
            final_dir = "final_models",
            proj_dir = "hadgem85",
            which_models = c("raw_mean"),
            uncertainty = T,
            write_png = T)

######################### Final Model miroc545 ########################


final_model(species_name = unique(faveiro[1]), 
            algorithms = NULL,
            weight_par = "TSS",
            select_partitions = TRUE, 
            threshold = c("spec_sens"),
            scale_models = FALSE,
            select_par = "TSS", 
            select_par_val = 0.4,
            consensus_level = 0.5, 
            models_dir = "./results/faveiro",
            final_dir = "final_models",
            proj_dir = "miroc545",
            which_models = c("raw_mean"),
            uncertainty = T,
            write_png = T)

######################### Final Model miroc585########################

final_model(species_name = unique(faveiro[1]), 
            algorithms = NULL,
            weight_par = "TSS",
            select_partitions = TRUE, 
            threshold = c("spec_sens"),
            scale_models = FALSE,
            select_par = "TSS", 
            select_par_val = 0.4,
            consensus_level = 0.5, 
            models_dir = "./results/faveiro",
            final_dir = "final_models",
            proj_dir = "miroc585",
            which_models = c("raw_mean"),
            uncertainty = T,
            write_png = T)

######################### Final Model mpi45 #######################

final_model(species_name = unique(faveiro[1]), 
            algorithms = NULL,
            weight_par = "TSS",
            select_partitions = TRUE, 
            threshold = c("spec_sens"),
            scale_models = FALSE,
            select_par = "TSS", 
            select_par_val = 0.4,
            consensus_level = 0.5, 
            models_dir = "./results/faveiro",
            final_dir = "final_models",
            proj_dir = "mpi45",
            which_models = c("raw_mean"),
            uncertainty = T,
            write_png = T)


######################### Final Model mpi85 #######################

final_model(species_name = unique(faveiro[1]), 
            algorithms = NULL,
            weight_par = "TSS",
            select_partitions = TRUE, 
            threshold = c("spec_sens"),
            scale_models = FALSE,
            select_par = "TSS", 
            select_par_val = 0.4,
            consensus_level = 0.5, 
            models_dir = "./results/faveiro",
            final_dir = "final_models",
            proj_dir = "mpi85",
            which_models = c("raw_mean"),
            uncertainty = T,
            write_png = T)


################# Ensemble Present

ensemble_faveiro <- ensemble_model(unique (faveiro[1]),
        occurrences = faveiro[2:3],
        which_models = "raw_mean",
        scale_models = TRUE,
        models_dir = "./results/faveiro",
        proj_dir = "present")


################# Ensemble hadgem45

ensemble_faveiro <- ensemble_model(unique (faveiro[1]),
        occurrences = faveiro[2:3],
        which_models = "raw_mean",
        scale_models = TRUE,
        models_dir = "./results/faveiro",
        proj_dir = "hadgem45")


################# Ensemble hadgem85

ensemble_faveiro <- ensemble_model(unique (faveiro[1]),
         occurrences = faveiro[2:3],
         which_models = "raw_mean",
         scale_models = TRUE,
         models_dir = "./results/faveiro",
         proj_dir = "hadgem85")



################# Ensemble miroc545

ensemble_faveiro <- ensemble_model(unique (faveiro[1]),
         occurrences = faveiro[2:3],
         which_models = "raw_mean",
         scale_models = TRUE,
         models_dir = "./results/faveiro",
         proj_dir = "miroc545")


################# Ensemble miroc585

ensemble_faveiro <- ensemble_model(unique (faveiro[1]),
         occurrences = faveiro[2:3],
         which_models = "raw_mean",
         scale_models = TRUE,
         models_dir = "./results/faveiro",
         proj_dir = "miroc585")



################# Ensemble mpi45

ensemble_faveiro <- ensemble_model(unique (faveiro[1]),
         occurrences = faveiro[2:3],
         which_models = "raw_mean",
         scale_models = TRUE,
         models_dir = "./results/faveiro",
         proj_dir = "mpi45")


################# Ensemble mpi85

ensemble_faveiro <- ensemble_model(unique (faveiro[1]),
         occurrences = faveiro[2:3],
         which_models = "raw_mean",
         scale_models = TRUE,
         models_dir = "./results/faveiro",
         proj_dir = "mpi85")
