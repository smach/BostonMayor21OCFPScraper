# Inspired by:
# https://simonwillison.net/2021/Mar/5/git-scraping/

# For R-specific issues, I followed this file format
# https://lapsedgeographer.london/2020-04/automating-pdf-scraping/

# Need to commit files or it won't work!
# Look at Simon's files here:
# https://github.com/simonw/cdc-vaccination-history/blob/main/.github/workflows/scrape.yml


library(BostonMayor21OCPFData)
contributions <- purrr::map_df(the_ids, download_latest_candidate_contributions)
data.table::fwrite(contributions, "data/contributions.csv")
msg <- paste("Script finished running at", as.character(Sys.time()) )
# print(msg)
cat(msg, file = "temp/log.txt", append = TRUE)
