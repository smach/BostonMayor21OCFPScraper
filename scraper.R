# Inspired by:
# https://simonwillison.net/2021/Mar/5/git-scraping/
# used these R-specific instructions on running R with GitHub actions:
# https://blog.rmhogervorst.nl/blog/2020/09/24/running-an-r-script-on-a-schedule-gh-actions/

# and followed this file format
# https://github.com/RMHogervorst/invertedushape/blob/main/.github/workflows/main.yml

# Needed to set up locally:
# remotes::install_github("smach/BostonMayor21OCPFData")
# renv::activate()


library(BostonMayor21OCPFData)
contributions <- purrr::map_df(the_ids, download_latest_candidate_contributions)
data.table::fwrite(contributions, "data/contributions.csv")
