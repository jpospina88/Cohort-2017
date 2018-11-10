set.seed(123)                     ## ensure it is reproducible
id_random <- sample(1000:9999, 1717, replace = FALSE)   ## you probably want unique draws

id_df <- id_random %>% as.tibble()

id_df <- id_df %>% 
  mutate(
    cohort = 2017,
    id = paste0(cohort, value))

id_df %<>% select(-c(value, cohort))

id_df %>% 
  write_csv("Newest data/c2017_deidentified_ids.csv")