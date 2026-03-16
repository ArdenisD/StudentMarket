# Product Metrics - Student Market App

Our google HEART framework: [google slides](https://docs.google.com/presentation/d/14-b1dHeZts_G9-zYIeCYkWgLUiL_oDnGGIDNVXfwyNQ/edit?slide=id.gc8216bd24_20_0#slide=id.gc8216bd24_20_0)

## Metric Collection Details

• **Net Promoter Score (NPS)**  
Collected by adding a survey question at the end of the Golden Path:  
"How likely are you to recommend DormDeals to a friend (0-10)?"  
The response is stored in a Firebase Firestore collection called `user_feedback` with the user's email and score.

• **Adoption (New User Signups)**  
Collected automatically through Firebase Authentication when a new user signs up using their .edu email address. The number of new users per day can be tracked through Firebase Analytics.

• **Daily Active Users (DAU)**  
Collected automatically through Firebase Analytics which tracks the number of unique users opening the app each day.

• **Retention Rate**  
Measured through Firebase Analytics returning user metrics, which track how many users return to the app after their first session (e.g., 7-day or 30-day retention).

• **Click Through Rate (CTR) for Listing View (Golden Path Event)**  
Implemented using a custom Firebase Analytics event called `listing_click`.  
CTR = number of users clicking a listing divided by number of users who saw the listing feed.

• **Average Listings Viewed per Session (Custom Metric)**  
Tracked using Firebase Analytics events that log every `listing_view` event.  
The average number of listing views per user session is calculated using these events.
