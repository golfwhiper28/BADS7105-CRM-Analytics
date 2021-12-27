
# Churn Prediction Model

In this class (class 12 - Churn Prediction Model), 
we are assigned to design the Dashboard to find the customer movement analysis (classify churned customers, inactive customers, active customers and new customers) by using google data studio and BigQuery (individual work and within the limited time (approximately 75 minutes))


# Raw Data
supermarket data from Dunnhumby.


## Detail
From the class, we learn about the defination of churn, how to classify churned customers, inactive customers, active customers and new customers, how to compute customer churen rate and customer retention rate (CRR)

## Summary Result
1)Conditions for separating the customer types


![image](https://user-images.githubusercontent.com/71161635/147447961-7f609760-c7ce-442c-9c9b-f3c0a7aae5f1.png)



2)Target Final Table for Exploring with Data Studio


![image](https://user-images.githubusercontent.com/71161635/147447749-f3fe4a08-a12a-40c3-87c1-1030d427f4e3.png)



3)Result

Part1: Separate NewCustomer, RepeatCustomer and ReactivedCustomer from raw data


![image](https://user-images.githubusercontent.com/71161635/147447797-576f9e3d-c720-4dee-8248-b376310f997c.png)


Part2: Separate Churn Customers from raw data


![image](https://user-images.githubusercontent.com/71161635/147447822-01ab5875-c70c-4c96-8342-5e5a7be9dbe8.png)


Part3: Combine the data in Part1 and Part2 by using union all


![image](https://user-images.githubusercontent.com/71161635/147447853-7de025d5-dc54-4e1d-9a5b-f0bbbd8e94da.png)


Part4: Result (Explore with Data Studio)


![image](https://user-images.githubusercontent.com/71161635/147447867-34afcffd-7390-47c4-a1a0-2cbb119199d9.png)

