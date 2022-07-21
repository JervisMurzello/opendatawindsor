## About
opendatawindsor is an R interface to the [City of Windsor open data portal](https://opendata.citywindsor.ca/). A package called [opendatatoronto](https://github.com/sharlagelfand/opendatatoronto) is the main motivation for our package and works as an excellent guide as it is developed for a similar purpose which allows users to load the data into R directly without downloading each and every file individually on their systems.

## Installation

####  At first you need to install devtools package if you haven't:

```
install.packages("devtools")
```

####  You can install the development version from Github with:

```
devtools::install_github("JervisMurzello/opendatawindsor")
```

## Usage

You can see a list of available datasets by using the command ``` all_data ```. This will show metadata about the package, including the public affair the dataset belongs to, the description of the public affair, the attributes(columns) in the particular dataset, how often they are updated and the number of datasets per issue.

```
library(opendatawindsor)
all_data
```
Finally, you can download the resource (i.e., the actual data) directly into R using get_data() with the name of the dataset (mentioned in the first column of the metadata file) as the argument. If more than 1 dataset is required, the names need to be put inside a c() vector.

```
# Only 1 dataset is required

get_data("dataset name")

# More than 1 dataset is required

get_data(c("dataset name 1", "dataset name 2", ...))

```
