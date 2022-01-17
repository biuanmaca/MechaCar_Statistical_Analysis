library(dplyr)

#Import data file
df <- read.csv(file = 'MechaCar_mpg.csv')

#Perform linear regression on all variables
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, df)

#Print summary of linear regression
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, df))

#End Deliverable 1
# ----------------------------------------------------------
#Begin Deliverable 2

susp_coil_df <- read.csv(file = 'Suspension_Coil.csv')

# Calculate the air/speed velocity of a coconut-laden swallow
total_summary <- susp_coil_df %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance=var(PSI), STD = sd(PSI), .groups = 'keep')
lot_summary <- susp_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance=var(PSI), STD = sd(PSI), .groups = 'keep')

#End Deliverable 2
# ----------------------------------------------------------
#Begin Deliverable 3

# t-Test of PSI across all manufacturing lots versus mean of 1500lbs/in/in
t.test(susp_coil_df$PSI, mu = 1500)


# Set variables for each subset 
set_Lot1 <- subset(susp_coil_df,
            subset = Manufacturing_Lot == "Lot1")
set_Lot2 <- subset(susp_coil_df,
                   subset = Manufacturing_Lot == "Lot2")
set_Lot3 <- subset(susp_coil_df,
                   subset = Manufacturing_Lot == "Lot3")

# Reticulating splines
t.test(set_Lot1$PSI, mu=1500)

t.test(set_Lot2$PSI, mu=1500)

t.test(set_Lot3$PSI, mu=1500)
