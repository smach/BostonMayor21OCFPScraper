# BostonMayor21OCFPScraper: Latest Campaign Contribution Data for Boston Mayoral Candidates

Inspired by [Simon Willison's presentation on git scraping](https://simonwillison.net/2021/Mar/5/git-scraping/) at the NICAR 2021 data journalism conference, this is my attempt to build a scraper to download campaign contribution data from the [Massachusetts Office of Campaign and Political Finance](https://www.ocpf.us/Reports/SearchItems) for major declared candidates in the 2021 Boston Mayoral race.

The resulting CSV file of contributions - including whether the contributor address is in my list of known Boston Zip Codes - is in the [data folder](https://github.com/smach/BostonMayor21OCFPScraper/tree/main/data).

The scraper runs once a day. It uses a basic R package I created for this project, [BostonMayor21OCPFData](https://github.com/smach/BostonMayor21OCPFData), a short R script to run the package's `download_latest_candidate_contributions()` function on a vector of candidate IDs, and a [GitHub Actions YAML file](https://github.com/smach/BostonMayor21OCFPScraper/blob/main/.github/workflows/main.yml)  to automatically run the scaper once a day. 

[This blog post](https://lapsedgeographer.london/2020-04/automating-pdf-scraping/) helped me create the R-specific portions of the GitHub Actions YAML file.
