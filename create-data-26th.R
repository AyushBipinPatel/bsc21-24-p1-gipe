#### use the WB data to create data set for P1 for
#### BSc 21-24, for 26th sept.



# read data ---------------------------------------------------------------

data_26 <- readr::read_csv("https://raw.githubusercontent.com/AyushBipinPatel/bsc21-24-p1-gipe/master/data/data_for_early_exam.csv")



# get in right shape ------------------------------------------------------


data_26[,-c(1,69)]|> 
  tidyr::pivot_longer(
    cols = 5:67,
    names_to = "year",
    values_to = "val"
  )|> 
  dplyr::select(-`Indicator Code`)|>
  tidyr::pivot_wider(names_from = `Indicator Name`,
              values_from = val)|>
  janitor::clean_names() |>
  dplyr::mutate(
    year = as.numeric(year)
  )-> data_26



