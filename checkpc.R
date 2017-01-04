
# check if laptop is set up for R short course at EGU 2017

checkpcfun <- function(...) # to keep everything within a function environment
{
link <- " visit \nbrowseURL('https://github.com/brry/rhydro#install')\n"

# R version
if(getRversion() < "3.3") stop("Your ",R.version.string, " is too old for the course.", link, call.=FALSE)

if(getRversion() < "3.3.2") message("Note: Your ",R.version.string, " is outdated. ", 
                                    "The current version is 3.3.2 (2016-10-31).",link)

# Rstudio
if(!"tools:rstudio" %in% search()) message("Note: you are not using Rstudio. Strongly recommended!", link)


# Packages
packs <- c("hydroGOF")#, "dummy")
message("Getting CRAN package versions, please wait ca 1-5 seconds...\n")
cranpacks <- available.packages()
for (p in packs)
  {
  if(!requireNamespace(p, quietly=TRUE)) stop("package '", p, "' is not installed. ",
                                              "Run \ninstall.packages('",p,"')", call.=FALSE)
  cranv <- cranpacks[p,]["Version"]
  packv <- packageVersion(p)
  if(packv<cranv) message("Note: package '",p,"' (",packv,") is not up to date ",
                           "(CRAN version is ",cranv,"). You can run \ninstall.packages('",p,"')\n")
  unloadNamespace(p) 
  #detach(paste0("package:",p), character.only=TRUE, unload=TRUE)
  }


# Success:
message("\nThere have been no errors, thus you should be all set to go.\n",
        "We're looking forward to seeing you at EGU.\n",
        "If not already done, please register via berry-b@gmx.de\n",
        "Please do not forget your laptop and come early, if possible.\n",
        "If you want to refresh your basic R skills, you can", link)

}
checkpcfun()
rm(checkpcfun)
