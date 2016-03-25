# Everything is Seasonal

This github repo is designed as a place to store/reference the data, code, and sources behind my 'Everything is Seasonal' talk at OpenVisConf. 

[Presentation](https://slides.com/zanarmstrong/everything-is-seasonal)

## Summary

If your data includes change over time, take seasonality into account.

Seaonality are patterns that repeat over known, fixed periods of time [-Wikipedia](https://en.wikipedia.org/wiki/Seasonality#cite_note-1).

Assume that your metric has a seasonal cycle. 

## 5 recommendations

1. Consider the seasonality of causal factors
2. 
3. 
4. 
5. 

## Analysis Tools

##### De-seaonalizing data

##### Decomposing a time series with STL

##### Bayes Impact Analysis with the R package CausalImpact

![](http://2.bp.blogspot.com/-EmqnkfLkz48/VBDAnBtrU6I/AAAAAAAAYiU/w23tbIXCCTE/s1600/image00.png)

[Google Blog Post](http://google-opensource.blogspot.com/2014/09/causalimpact-new-open-source-package.html) describing Kay H. Brodersen's Causal Impact package

[Causal Impact R package](https://google.github.io/CausalImpact/CausalImpact.html)

[Inferring causal impact using Bayesian structural time-series models](http://research.google.com/pubs/pub41854.html)

Kim Larsen, of the Stitch Fix technology team, wrote a blog post describing their implementation of these methods: [Making Causal Impact Analysis Easy](http://multithreaded.stitchfix.com/blog/2016/01/13/market-watch/)

## Data

##### C02 data
C02 data at Mauna Loa, Hawaii observatory. [Source](http://www.esrl.noaa.gov/gmd/dv/data/index.php?parameter_name=Carbon%2BDioxide&frequency=Daily%2BAverages&site=MLO). Filename: c02-maunaloa.

##### Births
Daily data from [Google's Big Query sample data](https://bigquery.cloud.google.com/table/publicdata:samples.natality). Based on data from the [CDC](http://www.cdc.gov/nchs/data_access/Vitalstatsonline.htm).

##### Faked Restaurant Time Series

##### Gun Sales Data


Hourly data [source]().

##### Additional charts/analysis. 
[Aki on Gelman's blog](http://andrewgelman.com/2012/06/19/slick-time-series-decomposition-of-the-birthdays-data/).
[Chris Mulligan shared on Gelman's blog](http://andrewgelman.com/2012/06/12/simple-graph-win-the-example-of-birthday-frequencies/) and [Chris' work as he presents it](http://chmullig.com/2012/06/births-by-day-of-year/).

### 

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


Other images are from [Pixabay](https://pixabay.com/). "All images and videos on Pixabay are released free of copyrights under Creative Commons CC0. You may download, modify, distribute, and use them royalty-free for anything you like, even in commercial applications. Attribution is not required."