# Amazon_Vine_Analysis

### Overview of the analysis of the Vine program:

##### The purpose of this analysis was to use AWS as holding space for the large amounts of review data through Google Collab as a way to connect it to SQL. Once the fiI chose an S3 bucket endpoint link to import into google collab I was able to extract tables of data from the file. In Google Collab I created multiple data frames from this dataset that I was able to connect and transfer into pgAdmin. Once this was done suceessfully, the data frames that I created in Google Collab appeared as tables in pgAdmin. Using SQL syntax I was able to go further within the table and filter data, create new tables for comparison data and analyze the data in the table on a lower-level.
---
### Results:
####  The veiw table that was created contained data for unpaid program reviews and paid program reviews. In this deliverable, I used SQL query to filter and extract data from each of these groups and created filtered tables following the guidelines below for each.

##### * How many Vine reviews and non-Vine reviews were there?
        Total Vine Reviews
![image](https://user-images.githubusercontent.com/105329532/198902546-9e608b5b-6b0b-471a-a24b-882b228d842a.png)
        
        Total non-Vine Reviews 
![image](https://user-images.githubusercontent.com/105329532/198902605-e9ff79c2-271d-4dc3-b476-692faf762d99.png)

##### * How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?
        Total Vine Reviews with 5 stars
![image](https://user-images.githubusercontent.com/105329532/198902751-b52b3301-229e-421a-8383-e9f1a661bb5b.png)
        
        Total non-Vine Reviews with 5 stars
![image](https://user-images.githubusercontent.com/105329532/198902797-331e2b39-e159-4115-a7e6-6462836f6d36.png)

##### * What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars? 
        Percentage of Vine Reviews with 5 stars
![image](https://user-images.githubusercontent.com/105329532/198907002-5d33157e-99a3-4f77-886a-a23adc1b3560.png)       
        Percentage of non-Vine Reviews with 5 stars 
![image](https://user-images.githubusercontent.com/105329532/198903567-e191403d-82d4-4433-adf1-d4a9a85013f8.png)

---
### Summary:

The based on the data counts within each of the filtered tables between Vine and Non-vine reviews. In each of the tables comparisons there is a significant difference that shows that there are more non_Vine reviews by well over 10000 in count. Vine reviews make up abount 44% of the 5 star reviews where as the non vine reviews make up about 62%. Even thought there are more non-Vine reviews making up the 5 star, it is still noteable that almost half of the 5 star reviews are from vine reviews even though there are less vine reviews all together. This tells us that most of the vine reviews are 5 star ratings which does lean more towards the suspicion of bias of these Vine reviews because of the smaller sample size.
