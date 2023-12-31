root <- rprojroot::is_rstudio_project
dep <- read.csv(
  root$find_file(
    "tools",
    "dep-r.csv"
  ),
  head = FALSE
)$V1
for (i in seq_along(dep)) {
  install.packages(
    dep[i],
    repos = c(REPO_NAME = "https://packagemanager.rstudio.com/all/latest/")
  )
}
