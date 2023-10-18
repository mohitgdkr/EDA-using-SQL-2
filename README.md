# EDA-using-SQL-2
Analysis of a hospitality company data and deriving insights for the stakeholders.

Stakeholder - Owner of hospitality company who want to analyze his hotel chain

Tools for analysis - SQL, MS Excel                                                                                        Total Occupants -	4,93,429
                                                                                                                          Total Revenue	  - $10,87,25,881.80 
                                                                                                                          Total Bookings  -	98,569
Questions - 
1. Which room types are most popular and attract most bookings ?
2. How is the revenue generated as per room type, property type ? How can we improve it ? 
3. What do the people prefer as booking channel ? 
4. Give me the details about the share of advanced bookings, reservation status, special requests requirements.
5. What is the average stay duration and average number of occupants ?
6. Any additional insights.

Insights -
1. As per average cost of room types per day - Executive Suite($206.46) > Suite($154.24) > King($148.86) > Queen($143.99) > Double($142.11) > Single($127). Total bookings are 98,569. Room types with Double and Single bed account for 26% and 22% of the bookings respectively. If Queen bed is added(18%), these 3 types account for 66% of the total bookings. Thus it is better if we focus on improving these room types as they are most popular as well as cost efficient for most people. ES, Suite and King types account for 34% of the bookings, as they are quite costly. This also suggest that majority of the customers of our company comes from middle income categories, thus investing in rich room types will not be very efficient business strategy.

2. Total revenue generated during Jan 2020 - Oct 2020 (dataset) is $10,87,25,881.80. In this revenue, room types - Double, Single and Queen account for 25%, 19% and 17% respectively. This collectively becomes 61% of total revenue. This shows the strong correlation between the no. of bookings and the revenue generated. 

Property in hospitality industry is referred to the entire premises - hotels, lodges, cabins, etc. Property wise Sankey alone account for whooping 69% of the revenue generated and 55% of the total bookings. Then Marimekko and Chord account for 31% of the revenue and 45% of the bookings. Here the pattern is quite different - average cost per day wise - Sankey($184.99) > Marimekko($110.30) > Chord($88.21). This suggest that although people prefer low cost rooms, in terms of property people prefer facilities over cost. Thus it will be rewarding for the business if we invest in Marimekko and Chord properties to raise their standard at par with Sankey. In the long term this will increase the revenue, as people will have option to move to other properties, if the Sankey is fully occupied. This can prevent people going to other companies for Sankey level properties, adding significant revenue in the long run.

3. Regarding the booking channels for bookings - Phone app(31%) > Travel agent(23%) = Website(23%) > Call center(15%) > Walk-in(8%). It's a good thing that phone app, website and walk-in account for 62% share. We can improve our business specific mediums for increasing users, so that the dependence on other channels like travel agents will be minimal. This can help in improving user experience by saving their extra costs and increasing our profits by saving on commissions to agents. Another thing is that, by reducing the share of call centers, we can increase our popularity - as people can see extra plans on our own platforms, rather than receiving specific information from call centers.   

4. 84% of the bookings are advanced bookings, which is a good thing. This suggests the high popularity and demand for our services. 
Regarding the reservation, 90% of the reservations are completed, which is a very good thing. This shows that people are prefering our services and are keen to get that. 7% of the reservations are 'No-show' type. In hospitality domain, 'No-show' means that a person has not arrived where and when they should be at a hotel or motel and makes no explanatory contact. Thus steps should be taken to know the reasons behind this behaviour and reducing these cases. 2% of the reservations have been extended and 1% have been reduced.
Regarding the special requests, about 50% of the bookings had some special requests.

6. Average stay duration of occupants is about 7 days, which people are preferring our services mostly for long holidays, which is a good thing for us. Among the total occupants(4,93,429), about half are the adults and remaining half are the children. This also suggest that people prefer our services mostly for family trips. On average, there are 5 occupants in our hotels. Also, there is a strong correlation between no. of bookings and no. of occupants.

7. Also 71% of the people are Weekday visitors and 29% are Weekend visitors to our hotels. This we can tell by the Rate type of the bookings. As we know, this behaviour is because of the discounted rates on weekdays. 

8. Regarding the distribution of room rates and bookings, 25% of the bookings are in the range of $71.10 and $103.95, 50% of the bookings are in the range of $103.95 and $177.45 and remaining 25% are in the range of $177.45 and $245.05. $288.55 is an outlier room rate which is applicable to 1396 bookings. This means that $288.55 is a very high room rate.  
