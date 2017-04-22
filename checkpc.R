
# check if laptop is set up for R short course at EGU 2017

checkpcfun <- function(...) # to keep everything within a function environment
{
link <- " visit \nbrowseURL('https://github.com/brry/rhydro#install')\n"
errors <- FALSE # are there significant insufficiencies?


# R ----

message("* Checking laptop for the Using R in Hydrology course. This may take a few seconds...\n")

# R version
if(getRversion() < "3.3") 
 {
 errors <- TRUE
 message("Your ",R.version.string, " is too old for the course. Please", link)
 }

if(!errors) if(getRversion() < "3.3.3") message("Note: your ", R.version.string, 
             " is outdated. The current version is 3.3.3 (2017-03-06). Please",link)

# Rstudio
if(!"tools:rstudio" %in% search()) message("Note: you are not using Rstudio. Strongly recommended! Please", link)



# Packages installed ----

osm <- FALSE
if(!requireNamespace("OSMscale", quietly=TRUE)) {errors <- TRUE ; osm <- TRUE}
sf <- FALSE
if(!requireNamespace("sf", quietly=TRUE)) {errors <- TRUE ; sf <- TRUE}

packs <- c("hydroGOF","airGR","leaflet","rgdal","mapview",
           "sf","OSMscale","dygraphs","extremeStat", 
           "geoR", "animation", "RColorBrewer",
           "xts", "trend", "Kendall", "hydroTSM") 
inst <- sapply(packs, function(p) requireNamespace(p, quietly=TRUE) )
if(any(!inst)) errors <- TRUE

packs2get <- packs[!inst]

                   
                   
# Package versions ----
mapv <- "mapview" %in% packs2get
if(!mapv) if(packageVersion("mapview") < "1.2.68") mapv <- TRUE
if(mapv)
  {
  errors <- TRUE
  if("mapview" %in% packs2get)
     message("The installed version of package 'mapview' is too old. Please run:")
  else
     message("The package 'mapview' must be installed from github. Please run:")
  cat(if(!requireNamespace("devtools", quietly=TRUE)) "install.packages('devtools'); ",
  "devtools::install_github('environmentalinformatics-marburg/mapview', ref='develop')\n", sep="")
}
packs2get <- packs2get[packs2get!="mapview"]

cranpacks <- available.packages()
packs <- packs[inst]
outdated <- sapply(packs, function(p) packageVersion(p) < cranpacks[p,]["Version"])
if(any(outdated)) errors <- TRUE
packs2get <- c(packs2get, packs[outdated])


# Output message ----

if(length(packs2get)>0) {message("You need to install/update some packages ",
          "for the course. Please run:")
          cat("install.packages(c('",paste0(packs2get, collapse="','"),"'))\n", sep="")}
if(osm) message("If OSMscale installation fails, read the instructions at ",
          "\nhttps://github.com/brry/OSMscale#installation")
if(sf & Sys.info()["sysname"]=="Linux")
          message("If sf installation fails, read the instructions at ",
          "\nhttps://github.com/brry/rhydro#packages")
if(errors){message("Afterwards, rerun:")
          cat("source('https://raw.githubusercontent.com/brry/rhydro/master/checkpc.R')\n")
          message("Please report if something in these instructions is not working via  berry-b@gmx.de")}

if(!errors)
message("Your system is ready for the course!\n",
        "We're looking forward to seeing you at EGU on Monday at 15:30 in Room -2.31.\n",
        "If not already done, please register via  berry-b@gmx.de\n",
        "Please do not forget your laptop and come early, if possible.\n",
        "If you want to refresh your basic R skills, you can", link)

}
checkpcfun()
rm(checkpcfun)
