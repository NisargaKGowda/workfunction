#' gives total number of working days
#' @export
#' @param  StartDate is the staring date
#' @param  EndDate is the ending date
workingdays = function(StartDate,EndDate){
  startdate = dmy(StartDate)
  enddate = dmy(EndDate)
  if (typeof(StartDate) == "character" && typeof(EndDate) == "character")
  {
    print(paste("starting date is ",StartDate))
    print(paste("Ending date is ",EndDate))
    mydates = seq(from = startdate, to = enddate, by = "days")
    totworkingdays = sum(wday(mydates)>1 & wday(mydates)<7)
    sprintf("Total number of working days between %s and %s is = %d", StartDate,EndDate,totworkingdays)
  }
  else
  {
    writeLines("the format of the date is incorrect\n enter the date as a character, inside double quotes")
  }
}

