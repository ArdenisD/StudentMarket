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

A/B Test Name
Single Swipeable  Image vs. Three Small Image Thumbnails on Listing Details
User Story Number
US 4 – Browse Marketplace Listings (Part of Golden Path)
Metrics

listing_image_swipe event rate among users who open a listing
Average time spent on listingDetails screen per session
contact_seller_initiated rate from listingDetails
listing_abandoned rate — user opens a listing then immediately bounces back to searchHome

Hypothesis
If the three small image thumbnail icons on listingDetails are replaced with a single large swipeable hero image carousel, users will spend more time engaging with the listing and will be more likely to initiate contact with the seller. The current three-icon layout renders product images too small to evaluate item quality, condition, or details — which are the primary factors a student buyer needs to assess before committing to an in-person pickup transaction. A larger image lowers the visual effort required to evaluate a listing and should directly reduce bounce rate and increase seller contact rate.
What Problem Are We Trying to Solve?
StudentMarket is a peer-to-peer physical goods marketplace where all transactions involve in-person pickup. This means buyers cannot inspect items before meeting the seller, making listing photos the single most important trust and decision-making signal available on the platform. The current listingDetails design displays product images as three small equally-sized icons in a row. At that size, users cannot reliably assess item condition, color accuracy, or damage — the exact things that determine whether a student decides to message a seller or keep scrolling. If a buyer cannot clearly see what they are buying, they will not reach out. This directly suppresses contact_seller_initiated events and slows down transaction volume on the platform, harming both buyers who can't find what they need and sellers who can't move their items.
Experiment
Using Firebase Remote Config, we will test whether replacing the three small image thumbnails with a single large swipeable hero image carousel on listingDetails increases seller contact rate and reduces listing bounce rate.
Audience:
All users who open any listing from searchHome or any other navigation path into listingDetails.
User Allocation:

50% of users see Version A
50% of users see Version B

Firebase Analytics will track:

listing_image_swipe — user swipes through images on a listing
contact_seller_initiated — user taps to open chat with the seller
listing_abandoned — user exits the listing within 5 seconds of opening it
Average time in seconds spent on listingDetails per session

The experiment will run for approximately two weeks with enough traffic to detect a 5% difference in contact_seller_initiated rate at 95% statistical significance.
Variations
Variation A (Control)
The listingDetails screen displays the current design: three equally-sized small image thumbnail icons arranged in a horizontal row near the top of the listing page. Tapping a thumbnail does not expand or enlarge the image.
Variation B (Experiment)
The three small thumbnails are replaced with a single full-width swipeable hero image at the top of the listingDetails screen. Users can swipe left and right to cycle through all available listing photos. A dot indicator below the image shows how many photos exist and which one is currently displayed. No other changes are made to the listing layout.

# Zach's AB Test...

