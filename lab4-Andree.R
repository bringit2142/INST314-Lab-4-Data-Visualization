#Questions 1 and 2
happydata = read.csv("happiness.csv")
View(happydata)
str(happydata)

#Question 3
happydata$Region <- as.factor(happydata$Region)
plot(happydata$Region,
     main = "Number of Countries in Each Region",
     xlab = "Region",
     ylab = "# of Countries")
#After viewing the bar chart, I can clearly see that Africa has the largest number
#of countries in this dataset, followed by Europe, and it appears that Asia-Pacific 
#and Pan-America have the same amount of countries

#Question 4
plot(happydata$Happiness.Score,
     main = "Happiness Score Distribution",
     xlab = "Index",
     ylab = "Happiness Score"
      )
#It seems like there isn't much of a correlation when it comes to the happiness score,
#because the values are so scattered that it's hard to come to a conclusion by just looking at this scatter plot.
#However, there are varying levels of happiness based off of this data.




#Question 5
plot(happydata$Region,happydata$Happiness.Score,
     main = "Difference in Happiness Score by Region",
     xlab = "Region",
     ylab = "Happiness Score"
     )


#Question 6
ggboxplot(happydata, x="Region", y="Happiness.Score")
#Based off of this box plot, Africa has the lowest overall happiness score, but also has the largest spread of data as well.
#Africa has a minimum of 3 and a max of about 6.5, with a few outliers as well. PanAmerica has the greatest overall happiness score, with
#The first and third quartiles being very close to each other.Europe has the second greatest overall happiness score, followed by Asia-Pacific.

#Question 7
hist(happydata$Happiness.Score)
#After looking at the histogram, a happiness score between 4.5-6 occurs the most out of all of the values in the dataset. The shape of the data
#has a very normal distribution, and there are very few outliers in the dataset based off of this histogram.

#Question 8
hist(happydata$Health)
#This histogram looks left skewed, meaning that the health scores are, on average, high for the dataset. 
#There aren't too many outliers, if any.


#Question 9
plot(happydata$Health,happydata$Happiness.Score,
     pch = 19, #solid circle
     cex = 1.5, # 150% of the default size
     main = "Happiness Score and Health",
     xlab = "Health",
     ylab = "Happiness"
)
#This would be a positive linear scatter plot and shows that when the health value is higher, it correlates to a higher happiness score.





