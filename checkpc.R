
# check if laptop is set up for R short course at EGU 2017

checkpcfun <- function(...) # to keep everything within a function environment
{
link <- " Visit \nbrowseURL('https://github.com/brry/rhydro#install')\n"

message("* Checking R version and Rstudio...")
# R version
if(getRversion() < "3.3") stop("Your ",R.version.string, " is too old for the course.", link, call.=FALSE)

if(getRversion() < "3.3.2") message("Note: Your ",R.version.string, " is outdated. ", 
                                    "The current version is 3.3.2 (2016-10-31).",link)
# Rstudio
if(!"tools:rstudio" %in% search()) message("Note: you are not using Rstudio. Strongly recommended!", link)


# Packages ---

message("* Checking whether needed packages are installed...")

p <- "OSMscale"
if(!requireNamespace(p, quietly=TRUE)) stop("package '", p, "' is not installed. ",
   "Please run \ninstall.packages('",p,"')\nIf that fails, read the instructions at ",
   "\nhttps://github.com/brry/OSMscale#installation", call.=FALSE)
rm(p)

packs <- c("hydroGOF","airGR","leaflet","rgdal","mapview","sf")
inst <- sapply(packs, function(p) requireNamespace(p, quietly=TRUE) )
if(any(!inst)) stop("You need to install some packages for the course. Please run\n",
                    "install.packages(c('",paste0(packs[!inst],collapse="','"),"'))", call.=FALSE)

message("* Checking package versions, please wait ca 1-5 seconds...")
cranpacks <- available.packages()
outdated <- sapply(packs, function(p) 
  {
  cranv <- cranpacks[p,]["Version"]
  packv <- packageVersion(p)
  if(packv<cranv) message("Note: package '",p,"' (",packv,") is not up to date ",
                           "(CRAN version is ",cranv,").")
  packv<cranv 
  })
if(any(outdated)) message("You can run \ninstall.packages(c('",
                          paste0(packs[outdated],collapse="','"),"'))")
# unload packages again:
##dummy <- sapply(packs, function(p) try(unloadNamespace(p), silent=TRUE))


# Success:
message("\n* There have been no errors, thus you should be all set to go.\n",
        "We're looking forward to seeing you at EGU on Monday at 15:30 in Room -2.31.\n",
        "If not already done, please register via berry-b@gmx.de\n",
        "Please do not forget your laptop and come early, if possible.\n",
        "If you want to refresh your basic R skills, you can", link)

}
checkpcfun()
rm(checkpcfun)
