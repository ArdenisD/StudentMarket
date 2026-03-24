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

• **Click Through Rate (CTR) for Listing Discovery (Golden Path Event)**
Implemented using two Firebase Analytics custom events called listing_impression and listing_click.
CTR = number of listing_click events divided by number of listing_impression events.

• **Message Initiation Rate (Golden Path Conversion Metric)**
Tracked using Firebase Analytics custom events that log every listing_view event and message_seller_click event.
Message Initiation Rate = number of message_seller_click events divided by number of listing_view events.
