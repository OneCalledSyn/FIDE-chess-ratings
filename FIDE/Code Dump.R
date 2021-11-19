for (lambda in c(1:2)) {
  location <- myfiles[lambda]
  temp <- fread(file = location, 
                sep = "\t", fill = TRUE, header = TRUE) %>%
    select(Name, Fed, Sex, ELO, Gms, B-day) %>%
    arrange(ELO) %>%
    top_n(n = 100)
  
  FIDE_players[(lambda*100 - 99):(lambda*100) , 1:13] <- temp