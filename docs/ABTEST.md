# Josh's AB Test...

## A/B Test Name
Homepage Search Bar Visibility

## User Story Number
US 4 – Browse Marketplace Listings (Part of Golden Path)

## Metrics
- CTR for search_submit event
- CTR for listing_click event
- Average listing views per session

## Hypothesis
If a search bar is visible on the homepage, more students will search for items directly instead of scrolling through listings, which will increase listing interactions.

## What Problem Are We Trying to Solve?
Students using StudentMarket may want to quickly find specific items (for example: textbooks, furniture, or electronics). If the search feature is not immediately visible, users may instead scroll through listings and potentially miss items they are looking for.

This could reduce engagement with listings and slow down the browsing process.

## Experiment
Using Firebase Remote Config, we will test whether showing a search bar on the homepage increases listing interactions.

Audience:
All users who open the home page.

User Allocation:
- 50% of users see Version A
- 50% of users see Version B

Firebase Analytics will track:
- search_submit events when users perform a search
- listing_click events when users click a listing

The experiment will run for about two weeks.

## Variations

Variation A (Control)
The homepage shows featured listings and a “View All Listings” button. The search bar is only available on the listings page.

Variation B (Experiment)
The homepage includes a visible search bar at the top of the page so users can search immediately.

# Evan’s AB Test...

## A/B Test Name
Related Items Visibility

## User Story Number
US 4 – Marketplace Listings (Part of Golden Path)

## Metrics
- Average number of listings viewed per session

## Hypothesis
If related items or services are shown at the bottom of each listing there is an increased opportunity for users to view another item or service which could increase the probability of the user purchasing something

## What Problem Are We Trying to Solve?
Sellers on Student Market are likely to be selling similar items, such as old books, furniture, or services like tutoring. Since there are many items it may be difficult to find the most ideal fit for their need which could reduce the amount of overall sales on the app. With related items being shown it may be easier for users to find multiple similar items based on a listing they’re already viewing. 

## Experiment
Using Firebase Remote Config, we will test whether showing related items at the bottom of listings increases the average amount of viewed listings per session.

Audience:
All users who open a listing.

User Allocation:
- 50% of users see Version A
- 50% of users see Version B

Firebase Analytics will track:
- Average number of listings viewed per session

The experiment will run for two weeks.

## Variations

Variation A (Control)
Shows listings as normal meaning no related items section at the bottom of listing pages. 

Variation B (Experiment)
Each listing page shows related items at the bottom of the page, these listings are selected based on categories that match with the initial listing.  

# Ardenis's AB Test...

## A/B Test Name
Swipeable Image Carousel vs Static Image Grid

## User Story Number
US 4 – Browse Marketplace Listings (Part of Golden Path)

## Metrics
- CTR for listing_click event  
- Average time spent on listing_detail page  
- Number of image_swipe events per listing  
- Engagement rate (sessions with interaction / total sessions)  

## Hypothesis
If listings use a swipeable image carousel with one large image instead of multiple small images in a row, users will better view item details and interact more with listings, increasing engagement and clicks.

## What Problem Are We Trying to Solve?
Currently, listings display multiple small images side-by-side. These images are harder to see and may not clearly show item details. Users may ignore additional images or scroll past listings quickly because the visuals are not engaging enough.

This creates a bottleneck in the browsing experience where users are not fully interacting with listings. As a result, engagement and listing clicks may be lower than expected.

By improving how images are displayed, we aim to make listings more visually appealing and interactive, which should increase user engagement.

## Experiment
Using Firebase Remote Config, we will test whether a swipeable image carousel improves user engagement compared to a static image grid.

Audience:
All users who view listings on the homepage or listings page.

User Allocation:
- 50% of users see Version A (Control)  
- 50% of users see Version B (Experiment)  

Firebase Analytics will track:
- listing_click (when a user clicks a listing)  
- image_swipe (when a user swipes to view another image)  
- listing_view_duration (time spent on listing page)  
- session_engagement (whether user interacts with listings)  

The experiment will run for 2 weeks.

## Variations

Variation A (Control)
Listings display 3 small images in a row. All images are visible at once and there is no interaction needed to view them.

Variation B (Experiment)
Listings display 1 large image at a time. Users can swipe horizontally to view additional images, with indicators showing more images are available.



# Zach's AB Test...

## A/B Test Name
Sign-Up Button Text and Size Change

## User Story Number
US 1 – Account Creation

## Metrics
- CTR for sign_up_button_click event
- Conversion rate for completed sign-ups
- Drop-off rate on sign-up page

## Hypothesis
If the sign-up button text is changed from “Sign Up” to “Get Started” and the button is made smaller, users will be more likely to click it because the wording feels less committal and the smaller size may appear less overwhelming, which will increase sign-up interactions.

## What Problem Are We Trying to Solve?
The current “Sign Up” button may feel too formal or like a large commitment, which could discourage users from clicking it. Additionally, a larger button may feel visually overwhelming or too aggressive.

This could reduce the number of users who begin the account creation process.

## Experiment
Using Firebase Remote Config, we will test whether changing the sign-up button text and size increases user sign-ups.

Audience:
All new users visiting the sign-up page.

User Allocation:

50% of users see Version A
50% of users see Version B

Firebase Analytics will track:

sign_up_button_click events when users click the sign-up button
completed_sign_up events when users successfully create an account

The experiment will run for about two weeks.

## Variations
Variation A (Control)
The button says “Sign Up” and is displayed in its current larger size.

Variation B (Experiment)
The button says “Get Started” and is displayed in a smaller size.
