# wikimedia-search_scraper

testing script for wikimedia scraping based on a search string.

This isn't supposed to be something super awesome.  Just a test script to show
how easy it is to scrape wikileaks and get the data ready for ingest into
some data analysis tool.

## setup

You'll need ruby, bundler, and gi:

    git clone git@github.com:dayne/wikimedia-search_scraper.git
    cd wikimedia-search_scraper
    bundle

## running

   ./bin/wlsearch boogers # get a URL of all the cables that have boogers.
   ./bin/wlsearch boogers | wlscrape # download all the pages with boogers


## caveats

None of this actually done:  

* The search doesn't respect the pagination of results so you'll really only get the first 20 URls on something that might have 500 results.  
* The scraper just grabs GI file table header information and doesn't do anything with it.

