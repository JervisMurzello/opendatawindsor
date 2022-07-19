#' Get data from City of Windsor Open Data Catalogue
#'
#' @param data Name of one or more datasets. A character
#'
#' @return A list containing one or more datasets
#'
#'
#' @examples
#' get_data(c("AbandonedVehicle_YTD", "3DayParkingInfraction_YTD"))
#' @export
get_data <- function(data){

  filtered_data <- dplyr::filter(all_data,`Name of the Datasets` %in% data)

  alldataset_URLs <- dplyr::pull(filtered_data, URL)

  read_final <- function(filename){
    rio::import(filename)
  }

  final_list <- purrr::map(alldataset_URLs, read_final)
  return(final_list)
}
