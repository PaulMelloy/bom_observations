library(data.table)
library(epiphytoolR)

dl_time <- format(Sys.time(), format = "%y%m%d_%H%M")
dl_dir <- "/app/data/tgz/"
if(isFALSE(dir.exists(dl_dir))){
    dir.create(dl_dir, recursive = TRUE)}

# Check if the last download was within the last 24 hours
prev_dloads <- list.files(dl_dir)

if (length(prev_dloads) == 0) {
    # if dir is empty, set the date
    last_date <- as.Date("1900-01-01") 
    message("Data directory is empty. Setting last_date to a historical value to trigger download.")
} else {
    # normal procedures
    last_date_str <- strsplit(sort(prev_dloads, decreasing = TRUE)[1], "_")[[1]][1]
    last_date <- as.Date(last_date_str, format = "%y%m%d")
}


if(Sys.Date() - last_date <1) {
    message("Exiting as data was downloaded recently")
    quit(save = "no")
    }

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


