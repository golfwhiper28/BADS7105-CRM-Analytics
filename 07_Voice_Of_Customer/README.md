
# Voice of Customer Analytics

In this class (class 13 - Vocie of Customer Analytics), we are assigned to classify group of review from Wongnai Review by using KMeans or Agglomorative Clustering with cosine similarity  (individual work and within the limited time (approximately 75 minutes)).


## Detail
From the class, we learn about how to perform regular expression function (searching fixed word), Metacharacters, Special Sequences, Sets, Basic pythainlp, word tokenization, creating Dictionary, predicting topics and document clustering by using KMeans and Agglomorative Clustering with cosine similarity.


## Summary Result
1)Import raw data (Wongnai Review)


![image](https://user-images.githubusercontent.com/71161635/147333488-9038faa8-abfb-4bc2-a12c-50d9227da699.png)


2)Run KMeans model to classify group of review


![image](https://user-images.githubusercontent.com/71161635/147333802-12ddb606-4d41-47ce-9d9b-a5f13f3bda6c.png)


-Increase remove words that are not specific words such as 'ร้า', 'ราคา','กก','< br >' to remove from raw data and filter Top_N_Word = 12


![image](https://user-images.githubusercontent.com/71161635/147333935-14fdf52e-fabe-4cd9-8c4d-14d48ed9c9ab.png)


![image](https://user-images.githubusercontent.com/71161635/147333975-5ee16ff4-803c-461c-bb2c-021cb0efcaf7.png)


3)Result
-We can separate the group of review into 3 clusters as below,

  Cluster1 "ร้านคาเฟ่น่ารักๆ" โดยลูกค้า review เกี่ยวกับร้านคาเฟ่ที่ขายกาแฟและเบเกอรรี่ เนื่องจากว่ามีความว่า กาแฟ, คาเฟ่, รี่
  
  Cluster2 "ร้านชานมไข่มุก" โดยลูกค้า review เกี่ยวกับร้านชานมไข่มุกไต้หวัน เนื่องจากว่ามีคำว่า ชา, นม, ไข่มุก และ ไต้หวัน
  
  Cluster3 "ร้านอาหารไทย" โดยลูกค้า review เกี่ยวกับอาหารไทย เช่น ส้มตำ เนื่องจากมีคำว่า ร้านอาหาร, ส้มตำ, บ้าน


![image](https://user-images.githubusercontent.com/71161635/147334181-1c139539-53f2-4c52-8a44-2fd7250f01ec.png)

