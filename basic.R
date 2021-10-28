penguins %>% 
  select (-species)

penguins %>% 
  rename(island_new = island)

rename_with(penguins, tolower)

clean_names(penguins)

penguins %>% arrange(bill_length_mm)

penguins2 <- penguins %>% arrange(-bill_length_mm)
view(penguins2)

penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))

penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm), mean_bill_length_mm = mean(bill_length_mm))

penguins %>% filter(species == "Adelie") %>%  drop_na()
 
bmkg <- penguins %>% mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,  color = species, shape = species, alpha = species), color = "purple") + facet_wrap(~species)

ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))

ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut, fill = clarity))

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,  color = species, shape = species)) + facet_grid(sex~species)

ggplot(data = hotelBookings) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap(~deposit_type) + theme(axis.text.x = element_text(angle = 45))

ggplot(data = hotelBookings) + geom_bar(mapping = aes(x = distribution_channel)) + facet_wrap(~market_segment) + theme(axis.text.x = element_text(angle = 45))

onlineTACityHotels <- hotelBookings %>% filter(hotel == "City Hotel") %>% filter(market_segment == "Online TA")

ggplot(data = onlineTACityHotels) + geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) + labs(title = "Palmer Penguins : Body Mass vs Flipper Length", subtitle = "Sample of Three Penguin Species", caption = "Data Collected by Dr. Kirsten Gorman")

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) + labs(title = "Palmer Penguins : Body Mass vs Flipper Length", subtitle = "Sample of Three Penguin Species", caption = "Data Collected by Dr. Kirsten Gorman") + annotate("text", x = 220, y = 3500, label = "The Gentooss are the Largest", color = "blue", fontface = "bold", size = 4.5, angle = 25)

ggplot(data = hotelBookings) + geom_bar(mapping = aes(x = market_segment)) + facet_wrap(~hotel) + theme(axis.text.x = element_text(angle = 45)) + labs(title = "Comparision of Market Segments by Hotel Type for Hotel Bookings", caption  = paste0("Date from ", minDate, " to ", maxDate), x = "Market Segments", y = "Number of Bookings") 

df10 <- read_csv("jan21.csv")
df11 <- read_csv("feb21.csv")
df12 <- read_csv("march21.csv")

bikeShare <- df1 %>% full_join(df2) %>% full_join(df3)  %>% full_join(df4) %>% full_join(df5) %>% full_join(df6) %>% full_join(df7) %>% full_join(df8)

