
# Campaign Response Model

In this class (class 10 - Up-selling Analysis and Customer Response Models), 
we are assigned to improve the model to increase AUC score by tuning features or running other models (individual work and within the limited time (approximately 75 minutes)) by using Retail_Data_Response (customer level) and Retail_Data_Transactions (transactions level).


## Detail
From the class, we learn how to perform the up-selling analysis and fix imbalanced data with Undersampling.

## Summary Result

I try to improve the AUC score of model by running tensorflow (using adam optimizer (this optimizer can provide the best auc score)) and try to perform the noremalize features. When I try to perform the noremalize features, I found that the auc score(0.72945) can improve a little when comapre it with the original auc score (0.7089). Although, the best auc score (0.75225) come from the method which don't need to perform the noremalize features. Please find more detail as below picture.


![image](https://user-images.githubusercontent.com/71161635/147278959-7ec0807c-489c-4cc6-a832-ba8aa22b488c.png)


![image](https://user-images.githubusercontent.com/71161635/147278997-ccdfddab-15d0-4326-9ba1-1b4c56efd04b.png)


Reference for optimizer: https://keras.io/api/optimizers/
