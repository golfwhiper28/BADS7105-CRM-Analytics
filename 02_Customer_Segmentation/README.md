
# Customer Segment

In this class (class 8 - Customer Segmentation), 
we are assigned to develop the K-Means model of customer segmentation (create the new features or develop the model) by using supermarket data from Dunnhumby. This assignment is performed by working group and the limited time (approximately 75 mins).



## Detail
From the class, we learn how to interpreting K-Means result and using PCA to visulize clustering results.

## Summary Result
1)Create New Features
![image](https://user-images.githubusercontent.com/71161635/147187587-572e49d8-6741-45ba-b306-ba4683a0ad46.jpg)

2)Model
We are seperated the customers into 4 clusters
![model](https://user-images.githubusercontent.com/71161635/147188729-d23257ec-6a39-47ca-b21a-5b4abc01516b.png)

3)Result
![totalvisits](https://user-images.githubusercontent.com/71161635/147189779-b9e99001-e940-4f33-8917-95f85df99d8b.png)
![totalspend](https://user-images.githubusercontent.com/71161635/147189241-d64bd9df-fe1f-4afe-805d-24d4df7345b7.png)
![totaldays](https://user-images.githubusercontent.com/71161635/147189246-1b697558-b5c5-4958-a855-e8e08a22fa96.png)
![ticketsize](https://user-images.githubusercontent.com/71161635/147189252-b860b096-fa92-417a-baae-9cdde663aaac.png)
![recency](https://user-images.githubusercontent.com/71161635/147189255-ae24ef36-f8d2-4093-b932-b015837cb315.png)
![percentage_weekday](https://user-images.githubusercontent.com/71161635/147189260-5d15bcc5-b1df-475f-abec-3509167a6927.png)

From the above picture, we can defined 4 clusters as below,

Cluster 0 - MIA (Missing in action)
  low weekday = high weekend
  large basket size
  medium spend per month
  high ticket size
  low total visits
  medium total spent
  not recent
  other customer
Action:
ทำบัตรสมาชิก สะสมแต้ม ให้ลูกค้า เพื่อให้ลูก อยากมาบ่อยๆ เพื่อให้ได้ส่วนลด หรือ สิทธิพิเศษใดๆ
ส่งโบรชัวร์ส่วนลดไปให้ เพื่อให้กลับมาซื้อ


Cluster 1 - Conscript
  high weekday = low weekend
  small basket size
  low spend per month
  low ticket size
  low total visits
  low total spent
  not recent
  short time customer
 Action:
ทำบัตรสมาชิก สะสมแต้ม ให้ลูกค้า เพื่อให้ลูก อยากมาบ่อยๆ เพื่อให้ได้ส่วนลด หรือ สิทธิพิเศษใดๆ
ทำโปรโมชั่นพิเศษวันธรรมดา เพื่อทำให้คนที่มาวันธรรมดามาซื้อเยอะ และบ่อยขึ้น


Cluster 2 - Commander
  low weekday = high weekend
  medium basket size
  high spend per month
  medium ticket size
  high total visits
  high total spent
  very recent
  long time customer
Action:
ให้ Reward พิเศษ อาจจะเป็นของขวัญตามเทศกาล
ขายสินค้าที่ช่วยเพิ่มความสะดวกสบาย หรูหรา


Cluster 3 - Veteran
  low weekday = high weekend
  small basket size
  low spend per month
  low ticket size
  medium total visits
  low total spent
  fairly recent
long time customer
Action:
ทำส่วนลดเมื่อซื้อของมากกว่าค่าเฉลี่ยเดิม ที่เขาซื้อ เพื่อ up-sale
recommend co purchase product
