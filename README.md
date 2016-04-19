# Everything is Seasonal

This github repo is designed as a place to store/reference the data, code, and sources behind my 'Everything is Seasonal' talk at OpenVisConf. 

The presentation itself can be found [here](https://slides.com/zanarmstrong/everything-is-seasonal)

## Summary

If your data includes change over time, take seasonality into account.

Seaonality are patterns that repeat over known, fixed periods of time [-Wikipedia](https://en.wikipedia.org/wiki/Seasonality#cite_note-1).

Assume that your metric has a seasonal cycle. 

## 6 recommendations

1. Consider the seasonality of causal factors
2. Aggregate to time periods that make sense for your data
3. Sometimes seasonality is the story
4. Adust for seasonality when estimating the impact of an event ('causal analysis')
5. The seasonality that matters most might be in a subset of your data
6. Seaonal patterns vary by place, culture, and lifestyle

## Analysis Tools

Introduction to [Time Series Decomposition](https://www.otexts.org/fpp/6)

#### De-seasonalizing data with X-12 ARIMA

[Seasonal package in R](https://cran.r-project.org/web/packages/seasonal/vignettes/seas.pdf)

[Blog post](http://www.r-bloggers.com/new-online-tool-for-seasonal-adjustment/) about seasonal adjustment with this package

[Online interactive](http://www.seasonal.website/) seasonal adjustment with R's seaonal package

#### Decomposing a time series with STL

[Original 1990 article](http://www.wessa.net/download/stl.pdf) on STL decomposition. 

[Intro to STL](https://www.otexts.org/fpp/6/5)

[STL in R](http://www.inside-r.org/r-doc/stats/stl). Note that STL operates on an object of the "ts", or time series" class. So, you'll need to convert data to this format first. 

#### Bayes Impact Analysis with the R package CausalImpact

![](http://2.bp.blogspot.com/-EmqnkfLkz48/VBDAnBtrU6I/AAAAAAAAYiU/w23tbIXCCTE/s1600/image00.png)

[Google Blog Post](http://google-opensource.blogspot.com/2014/09/causalimpact-new-open-source-package.html) describing Kay H. Brodersen's Causal Impact package

[Causal Impact R package](https://google.github.io/CausalImpact/CausalImpact.html)

[Inferring causal impact using Bayesian structural time-series models](http://research.google.com/pubs/pub41854.html)

Kim Larsen, of the Stitch Fix technology team, wrote a blog post describing their implementation of these methods: [Making Causal Impact Analysis Easy](http://multithreaded.stitchfix.com/blog/2016/01/13/market-watch/)

#### More general Timeseries, Forecasting, and R

Check out [Hyndman's work](http://robjhyndman.com/hyndsight/forecasting/)

[Analyzing Functional Time Series](https://journal.r-project.org/archive/2013-1/shang.pdf)
The curves/functions/components that drive machine learning might also have seasonality. "Recent advances in computer recording and storing technology have tremendously increased the presence of functional data, whose graphical representation can be infinite-dimensional curve, image, or shape. When the same functional object is observed over a period of time, such data are known as functional time series."

## Data

#### C02 data
C02 data at Mauna Loa, Hawaii observatory. [Source](http://www.esrl.noaa.gov/gmd/dv/data/index.php?parameter_name=Carbon%2BDioxide&frequency=Daily%2BAverages&site=MLO). Filename: c02-maunaloa.

#### Births
Daily data from [Google's Big Query sample data](https://bigquery.cloud.google.com/table/publicdata:samples.natality). Based on data from the [CDC](http://www.cdc.gov/nchs/data_access/Vitalstatsonline.htm).

[CDC Vital Stats](https://nchs.beyond2020.com/Vitalstats) for minute of day data - see "babies Time of Day" folder for details

#### Faked Restaurant Time Series

#### Gun Sales Data
Described [here](http://driven-by-data.net/2015/12/10/gun-sales.html)


Hourly data [source]().

#### Additional charts/analysis. 
[Aki on Gelman's blog](http://andrewgelman.com/2012/06/19/slick-time-series-decomposition-of-the-birthdays-data/).
[Chris Mulligan shared on Gelman's blog](http://andrewgelman.com/2012/06/12/simple-graph-win-the-example-of-birthday-frequencies/) and [Chris' work as he presents it](http://chmullig.com/2012/06/births-by-day-of-year/).

### 

## Research

[1985 Tractor Accident Study](http://www.pnas.org/content/108/17/6889.full)

[Prison Sentences](http://www.pnas.org/content/108/17/6889.full)

[Pathogen seasonality](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2631809/pdf/11384511.pdf)

Techniques for Visualizing Seaonality data

[Cycle Plots](https://books.google.com/books?id=YnDivwba2nkC&pg=PA176&lpg=PA176&dq=seasonal+visualization&source=bl&ots=7nkZ7BFZto&sig=M8ywiSChDqIoFdiFuWdDnrSB9Dg&hl=en&sa=X&ved=0ahUKEwikvfCF8t7LAhUX_mMKHamwBLA4ChDoAQgnMAI#v=onepage&q=seasonal%20visualization&f=false)

## Data Viz Examples

[Flickr Flow by Fernanda Viégas and Martin Wattenberg](http://hint.fm/projects/flickr/)

[Weather Circles by Zan Armstrong](http://weather.zanarmstrong.com/#city=NEW YORK&metric=normalTemperature&colored=1)

[Ville Vivante](https://www.villevivante.ch/) by [Interactive Things](https://www.interactivethings.com/) and the [City of Geneva](http://www.ville-geneve.ch/) with Data Processing by the [Near Future Laboratory](https://www.villevivante.ch/), [data from Swisscom](https://www.swisscom.ch/en/residential.html), collaboration with the [Lift Conference](http://liftconference.com/lift16).

[20 hours of Boston Traffic](https://www.youtube.com/watch?v=QW_mVsMWnB0) by Andy Woodruff using a script from Alyson Hurt. Project and analysis described [by Andy on his blog](http://bostonography.com/2016/a-day-of-traffic/).

[Gun Sales Soar After Obama Calls for New Restrictions](http://www.nytimes.com/interactive/2015/12/10/us/gun-sales-terrorism-obama-restrictions.html?_r=0). Gregor describes the process and source data [on his blog](http://driven-by-data.net/2015/12/10/gun-sales.html). 

...

## Images

By Eirik Solheim: [One Year in One Image](http://eirikso.com/2011/01/04/one-year-in-one-image/)

![One year in One Image](https://eirikso.files.wordpress.com/2011/01/allof20101.jpg)
![Image Diversity](https://eirikso.files.wordpress.com/2011/01/oneyeardiversity1.jpg)

Mauna Loa Observatory(http://www.ncdc.noaa.gov/wdc/)
![Mauna Loa Observatory](http://www.ncdc.noaa.gov/wdc/images/CRNSiteinMaunaLoa.JPG)


Other images are from [Pixabay](https://pixabay.com/). "All images and videos on Pixabay are released free of copyrights under Creative Commons CC0. You may download, modify, distribute, and use them royalty-free for anything you like, even in commercial applications. Attribution is not required."

## Other Interesting Sources Related to Seasonality

[Flight delays and cancelations](http://stat-computing.org/dataexpo/2009/posters/)

[Visualization of Time-Oriented Data](https://books.google.com/books?id=YnDivwba2nkC&pg=PA176&lpg=PA176&dq=seasonal+visualization&source=bl&ots=7nkZ7BFZto&sig=M8ywiSChDqIoFdiFuWdDnrSB9Dg&hl=en&sa=X&ved=0ahUKEwikvfCF8t7LAhUX_mMKHamwBLA4ChDoAQgnMAI#v=onepage&q=seasonal%20visualization&f=false)

