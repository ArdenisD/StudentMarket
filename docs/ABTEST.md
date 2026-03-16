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

# Evan's AB Test...
# Ardenis's AB Test...
# Zach's AB Test...

