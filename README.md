# MechaCar_Statistical_Analysis
UMN Boot Camp Module 15

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/91292960/149711207-725292e2-ca7d-49fd-87c3-fa86f6b45ea7.png)

1.  Based on the linear model, we can see that the best variables for predicting MPG is vehicle length and ground clearance.
2.  3 slopes/co-efficients have non-zero (or small enough to be effectively zero) so while some variables have the model is considered 0, some are not.
3.  The p-values of the vehicle length and ground clearance are well below 0.05 and suggest some level of predictive value

## Summary Statistics on Suspension Coils

![image](https://user-images.githubusercontent.com/91292960/149711789-3dad1a96-b5c2-47f3-85cf-bf85691d375d.png)

In looking at the variances for the three lots, company standards are that suspension coil variance must not exceed 100 lbs/in/in.

Lot 1 meets these parameters and is the most consistant.
Lot 2 meets these parameters
Lot 3 violates these parameters and the manufacturing process for this lot should be investigation.

## T-Tests on Suspension Coils
![image](https://user-images.githubusercontent.com/91292960/149712370-f7fc5959-33d7-436a-b817-f5d7fbcd718c.png)
Across all lots the p-value is greater than 0.05 suggesting that we should accept the null hypothesis and therefore they match the mean of 1500psi

![image](https://user-images.githubusercontent.com/91292960/149712497-1c74f525-16cb-4dad-b22e-5c56d5e88df8.png)
Lot 1 has a p-Value of 1 and we can say that the are manufactured to the median of 1500psi

![image](https://user-images.githubusercontent.com/91292960/149712567-79049a37-50b5-43be-9f8e-3a883e7f0e55.png)
Lot 2 has a p-value of 0.6 and we can say that they are manufactured to the median of 1500psi

![image](https://user-images.githubusercontent.com/91292960/149712636-ee804b9e-c0cd-4e75-a4c3-63ce9b3ecfd1.png)
Lot 3 however has a p-value less than 0.05, so we must reject the null hypothesis and suggest there is a statistical difference from the mean of 1500psi

## Study Design:  MechaCar vs Competition
For future study, we should look at costs to the customer as it often is the greatest factor in purchasing a vehicle.  These should be compared to MPG, safety ratings, horse power, and average mainenance costs.  These secondary factors all are other factors customers are concerned about.  We should look to see if there is any correlation between cost and these individual secondary factors.  Linear regressions and/or t-Tests can be used to determine if there is a correlation:  for example cost vs. horse power.  The null hypothesis would suggest that there is no correlation between these two factors where the alternative hypothesis would be that there is a positive correlation between the two factors in that the greater the horse power, the greater the cost to the customer.  A t-Test can be used to meausure this specific question.  In order to perform this analysis, we will need the MSRPs for each models and the MPG, safety ratings, horse power, and average maintenance costs (in the first 100k miles) values.
