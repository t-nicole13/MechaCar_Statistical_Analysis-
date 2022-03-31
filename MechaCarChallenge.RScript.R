library(dplyr)

# Deliverable 1: Linear Regression to Predict MPG
mecha_car_table <- read.csv(file = "/Users/tiananicole/Desktop/classroom/MechaCar_Statistical_Analysis-/MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_car_table)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_car_table))