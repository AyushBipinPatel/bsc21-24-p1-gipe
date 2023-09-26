#### use the WB data to create data set for P1 for
#### BSc 21-24, for 26th sept.




# libs --------------------------------------------------------------------


# read data ---------------------------------------------------------------

data_26 <- readr::read_csv("")



# get in right shape ------------------------------------------------------


data_26[,-c(1,69)]|>
  pivot_longer(
    cols = 5:67,
    names_to = "year",
    values_to = "val"
  )|>
  pivot_wider(names_from = `Indicator Name`,
              values_from = val)|>
  janitor::clean_names() -> data_26



