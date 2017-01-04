
# check if laptop is set up for R short course at EGU 2017

link <- " visit \nbrowseURL('https://github.com/brry/rhydro#install')\n"

# R version
if(getRversion() < "3.3") stop("Your ",R.version.string, " is too old for the course.", link, call.=FALSE)

if(getRversion() < "3.3.2") message("Note: Your ",R.version.string, " is outdated. ", 
                                    "The current version is 3.3.2 (2016-10-31).",link)

# Rstudio
if(!"tools:rstudio" %in% search()) message("Note: you are not using Rstudio. Strongly recommended!", link)

# Packages
packs <- c("hydroGOF")#, "dummy")
for (p in packs)
  {
  if(!requireNamespace(p, quietly=TRUE)) stop("package '", p, "' is not installed. ",
                                              "Run \ninstall.packages('",p,"')", call.=FALSE)
  }

# Success:
message("\nThere have been no errors, thus you should be all set to go.\n",
        "We're looking forward to seeing you at EGU.\n",
        "Please do not forget your laptop and come early, if possible.\n",
        "If you want to refresh your basic R skills, please", link)
