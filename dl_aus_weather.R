library(data.table)
library(epiphytoolR)

dl_time <- format(Sys.time(), format = "%y%m%d_%H%M")
dl_dir <- "/app/data/tgz/"
if(isFALSE(dir_exists(dl_dir))){
    dir.create(dl_dir, recursive = TRUE)}

Sys.sleep(round(runif(1,0,240))) # wait randomly between 0 amd 4 minutes

get_bom_observations(ftp_url = "ftp://ftp.bom.gov.au/anon/gen/fwo/",
                     download_location = dl_dir,
                     access_warning = FALSE,
                     state = "QLD",
                     file_prefix = dl_time
                     )
Sys.sleep(round(runif(1,0,240)))
get_bom_observations(ftp_url = "ftp://ftp.bom.gov.au/anon/gen/fwo/",
                     download_location = dl_dir,
                     access_warning = FALSE,
                     state = "NSW",
                     file_prefix = dl_time
)
Sys.sleep(round(runif(1,0,240)))# wait randomly between 0 amd 4 minutes
get_bom_observations(ftp_url = "ftp://ftp.bom.gov.au/anon/gen/fwo/",
                     download_location = dl_dir,
                     access_warning = FALSE,
                     state = "NT"
)
Sys.sleep(round(runif(1,0,240)))# wait randomly between 0 amd 4 minutes
get_bom_observations(ftp_url = "ftp://ftp.bom.gov.au/anon/gen/fwo/",
                     download_location = dl_dir,
                     access_warning = FALSE,
                     state = "SA",
                     file_prefix = dl_time
)
Sys.sleep(round(runif(1,0,240)))# wait randomly between 0 amd 4 minutes
get_bom_observations(ftp_url = "ftp://ftp.bom.gov.au/anon/gen/fwo/",
                     download_location = dl_dir,
                     access_warning = FALSE,
                     state = "VIC"
)
Sys.sleep(round(runif(1,0,240)))# wait randomly between 0 amd 4 minutes
get_bom_observations(ftp_url = "ftp://ftp.bom.gov.au/anon/gen/fwo/",
                     download_location = dl_dir,
                     access_warning = FALSE,
                     state = "WA"
)
Sys.sleep(round(runif(1,0,240)))# wait randomly between 0 amd 4 minutes
get_bom_observations(ftp_url = "ftp://ftp.bom.gov.au/anon/gen/fwo/",
                     download_location = dl_dir,
                     access_warning = FALSE,
                     state = "TAS",
                     file_prefix = dl_time
)


