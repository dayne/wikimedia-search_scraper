# wikimedia-search_scraper

testing script for wikimedia scraping based on a search string.

This isn't supposed to be something super awesome.  Just a test script to show
how easy it is to scrap wikileaks and get the data ready for ingest into
some data analysis tool.

## setup

You'll need ruby, bundler, and gi:

    git clone 
    cd wikimedia-search_scraper
    bundle

## running

   ./bin/wlscrape.rb toast # get URL of all the cables that refernece toast
