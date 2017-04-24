[course](#course) 
/ [check](#check) 
/ [topics](#topics) 
/ [slides](#slides) 
/ [resources](#resources) 
/ [install](#install) 
/ [packages](#packages) 
/ [r-intro](#r-intro) 

### course
Using R in Hydrology - [EGU2017 Short Course](http://meetingorganizer.copernicus.org/EGU2017/session/25731) by YHS  
Instructors: Shaun Harrigan, Katie Smith, Berry Boessenkool and Daniel Klotz  
Organizer: Berry Boessenkool, PhD student at Potsdam University (Germany)  

__To reserve a seat, please register via berry-b@gmx.de__  (16 registered so far, 2017-04-21).

Participants are invited to post and discuss questions in the 
[Hydrology in R Facebook group](https://www.facebook.com/groups/1130214777123909/)

If you're new to R, you can get started [below](#install). 
If you want to follow along on your laptop, please make sure it is up to the task:


### check
You can check if your laptop is prepared for the course by running the
[checkpc](https://github.com/brry/rhydro/blob/master/checkpc.R) script in your R console:
```R
source("https://raw.githubusercontent.com/brry/rhydro/master/checkpc.R")
```
This will give you a confirmation message if everything is fine and give instructions otherwise.
If you ran this before April 19th, please run it again (we have added more R packages).


### topics
This course is directed primarily at hydrologists interested in using R for their research.
You will get (a) an impression of how powerful R is as a tool and (b) all the code to get started yourself.
The following topics will be covered:

* Good coding practice, report generation (Rstudio, `rmarkdown`, R notebook)
* Using R as GIS (reading a rainfall shapefile + Kriging, `sf` + `leaflet` + `mapview` + `OSMscale`)
* River discharge time-series visualisation and extreme value statistics (`animation` + `extremeStat`)
* Hydrological modelling with `airGR`
* Trend Analysis in R (`trend` + `hydroTSM`)


### slides
You can `rightclick - Save as` the 
[html notebook with R output](https://github.com/brry/rhydro/raw/master/presentations/rhydro.nb.html)
and then open the html document in a regular browser.
For smartphones, you can try the [pdf](https://github.com/brry/rhydro/raw/master/presentations/rhydro.pdf)
(without the interactive graphs).

To get all the material including the datasets and presentation source code, we recommend to
[download the whole github course repository](https://github.com/brry/rhydro/archive/master.zip).


### resources
* [R-Resources for Hyrology](http://abouthydrology.blogspot.co.uk/2012/08/r-resources-for-hydrologists.html) - A huge list of R-resources about hydrology
* [hdtools](https://ropensci.github.io/hddtools/) - An R package, which facilitates access to a variety of online open data sources relevant for hydrologists
* [airGR](https://cran.r-project.org/web/packages/airGR/vignettes/airGR.html) - The description of the airGR package
* [R-weekly](https://rweekly.org/) - A weekly newsletter about all things R
* [Rbloggers](https://www.r-bloggers.com/) - A blog aggregator about R
* [Shiny](https://shiny.rstudio.com/) - The web application framework for R/Rstudio
* [Rmarkdown](http://rmarkdown.rstudio.com/) - The document/notebook generation framework for R/Rstudio
* [Github guides](https://guides.github.com/) - Introduction to gitHUB
* [Hydrology in R Facebook group](https://www.facebook.com/groups/1130214777123909/)
* [RShiny `influence regression app` by  David Wright]
(https://davidpwright.shinyapps.io/LinearRegressionInfluenceExample/)
* `Evapotranspiration` R package that enables the use of 17 well-known ET models in a consistent manner.

### install
install R and Rstudio:

* R: https://cloud.r-project.org (Linux Ubuntu instructions below)
* Rstudio: https://www.rstudio.com/products/rstudio/download/#Desk
* updating R on Windows is simple: https://github.com/talgalili/installr/blob/master/README.md
* R installation on Ubuntu (from [Kris Eberwein](https://www.r-bloggers.com/how-to-install-r-on-linux-ubuntu-16-04-xenial-xerus) and [Dean Attali](https://www.digitalocean.com/community/tutorials/how-to-set-up-r-on-ubuntu-14-04)): open a terminal (CTRL+ALT+T) and paste (CTRL+SHIFT+V) the following lines:

```
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get update
sudo apt-get install r-base r-base-dev
```
Replace `xenial` with e.g. `trusty` if you have another Ubuntu version:  
16.10 yakkety, 16.04 xenial, 14.04 trusty, 12.04 precise

### packages

Installing add-on R packages usually is easy from within R (and works without admin rights):
```R
install.packages("ggplot2")
```
On Linux, some packages with external dependencies (like rJava) can be more difficult.
In such cases, you probably just want to open a terminal (CTRL+ALT+T) and paste (CTRL+SHIFT+V) `sudo apt-get install r-cran-rjava` (all lower-cased). 
Here's the [official information](https://cran.r-project.org/bin/linux/ubuntu/README.html#supported-packages) on this topic.

Installing the brand new `sf` package for spatial data is a bit tricky on Linux because it needs a recent version of gdal. 
If `install.packages("sf")` does not work, please try the following:
```
sudo apt-get install libudunits2-dev
sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt-get update
sudo apt-get install gdal-bin
sudo apt install libgdal-dev libproj-dev
```

### r-intro
If you need an introduction (or a refresher) to R, we suggest:

* http://stat545.com/topics.html (excellent tutorial)
* https://www.edx.org/course/introduction-r-programming-microsoft-dat204x-0 (Datacamp, with login, but free)
* http://tryr.codeschool.com/levels/1/challenges/1 (codeschool, interactive, login to save progress)
* https://github.com/brry/course/raw/master/RcourseBerry.pdf (Berry's R course material)

