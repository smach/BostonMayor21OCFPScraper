# Inspired by:
# https://simonwillison.net/2021/Mar/5/git-scraping/
# used these R-specific instructions on running R with GitHub actions:
# https://blog.rmhogervorst.nl/blog/2020/09/24/running-an-r-script-on-a-schedule-gh-actions/

# and followed this file format
# https://github.com/RMHogervorst/invertedushape/blob/main/.github/workflows/main.yml

# Need to commit files or it won't work!
# Look at Simon's files here:
# https://github.com/simonw/cdc-vaccination-history/blob/main/.github/workflows/scrape.yml


library(BostonMayor21OCPFData)
contributions <- purrr::map_df(the_ids, download_latest_candidate_contributions)
data.table::fwrite(contributions, "data/contributions.csv")
