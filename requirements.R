# Add your required CRAN packages here, for example:
install.packages(c("devtools", "remotes", "data.table", "dplyr", "ggplot2",
                   "here"),
                    repos = "https://cran.r-project.org", dependencies = TRUE)

# Add your required github public packages here, for example:
remotes::install_github("https://github.com/PaulMelloy/epiphytoolR", 
                        ref = "dev", dependencies = TRUE)

# Add private GitHub packages here, and update the .env file with your github PAT
# for example:
# remotes::install_github("your_username/your_private_repo",
#                          auth_token = Sys.getenv("GITHUB_PAT"))

# Install local packages here, for example:
# install.packages("/tmp/your_local_package", type = "source")
