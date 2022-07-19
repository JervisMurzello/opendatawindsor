## About
opendatadwindsor is a package which acts as an R interface for the open data portal of City of Windsor. A package called opendatatoronto is the main motivation for our package and works as an excellent guide as it is developed for a similar purpose which allows users to load the data into R directly without downloading each and every file individually on their systems.

##Installation
install.packages("devtools")
library(devtools)
devtools::install_github("JervisMurzello/theopendatawindsor")

library(opendatawindsor)

## Examples
### If only 1 dataset is required, an example code is shown below:
get_data("AbandonedVehicle_YTD")

### If more than 1 dataset is required, the names of the dataset need to be put in c() vector:
get_data(c("AbandonedVehicle_YTD", "3DayParkingInfraction_YTD"))
