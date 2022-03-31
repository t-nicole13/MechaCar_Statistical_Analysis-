library(dplyr)

# Deliverable 1: Linear Regression to Predict MPG
mecha_car_table <- read.csv(file = "/Users/tiananicole/Desktop/classroom/MechaCar_Statistical_Analysis-/MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_car_table)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_car_table))


# Deliverable 2: Create Visualizations for the Trip Analysis 
suspension_coil_table <- read.csv(file = "/Users/tiananicole/Desktop/classroom/MechaCar_Statistical_Analysis-/Suspension_Coil.csv")

total_summary <- suspension_coil_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")

lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")


#  Deliverable 3: T-Tests on Suspension Coils
t.test(suspension_coil_table$PSI, mu = 1500)

t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)

t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)

t.test(subset(suspension_coil_table, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
