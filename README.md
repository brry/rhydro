### course
Using R in Hydrology - [EGU2017 Short Course](http://meetingorganizer.copernicus.org/EGU2017/session/25731) by YHS  
Organized by Berry Boessenkool, PhD student at Potsdam University (Germany)  
__To reserve a seat, please register via berry-b@gmx.de.__  
If you want to follow along on your laptop, please make sure it is up to the task:


### check
You can check if your laptop is prepared for the course by running the
[checkpc](https://github.com/brry/rhydro/blob/master/checkpc.R) script in your R console:
```R
source("https://raw.githubusercontent.com/brry/rhydro/master/checkpc.R")
```
This will give you a confirmation message if everything is fine and give instructions otherwise.


### install
install R and Rstudio:

* R: https://cloud.r-project.org (Linux Ubuntu instructions below)
* Rstudio: https://www.rstudio.com/products/rstudio/download/#Desk
* updating R on Windows is simple: https://github.com/talgalili/installr/blob/master/README.md
* R installation on Ubuntu 16 xenial (from [Kris Eberwein](https://www.r-bloggers.com/how-to-install-r-on-linux-ubuntu-16-04-xenial-xerus)): open a terminal (CTRL+ALT+T) and paste (CTRL+SHIFT+V) the following:

```
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get update
sudo apt-get install r-base r-base-dev
```


Installing add-on R packages usually is easy from within R (and without admin rights):
```R
install.packages("ggplot2")
```
On Linux, some packages with external dependencies (like rJava) can be more difficult.
In such cases, you probably just want to open a terminal (CTRL+ALT+T) and paste (CTRL+SHIFT+V) `sudo apt-get install r-cran-rjava` (all lower-cased). 
Here's the [official information](https://cran.r-project.org/bin/linux/ubuntu/README.html#supported-packages) on this topic.


### r-intro
If you need an introduction (or a refresher) to R, we suggest:

* http://stat545.com/topics.html (excellent tutorial)
* https://www.edx.org/course/introduction-r-programming-microsoft-dat204x-0 (Datacamp, with login, but free)
* http://tryr.codeschool.com/levels/1/challenges/1 (codeschool, interactive, login to save progress)
* http://bit.ly/rcBerry (Berry's R course material)


### topics
* river discharge time-series visualisation and extreme value statistics, 
* using R as GIS (rainfall shapefile, Kriging), 
* hydrological modelling with airGR, 
* Exploratory Data Analysis including flow duration curve and trend analysis on time-series


### slides
Slides will be linked here sometime.


### resources
* http://abouthydrology.blogspot.co.uk/2012/08/r-resources-for-hydrologists.html 
* more to come

