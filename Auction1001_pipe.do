* Start over
clear

* Primary merged dataset from bids w/ demographics

import delimited using ~/Desktop/SpectrumLab/Auction1001/data/merged_bid_area.csv

* Initial graph clearing

graph drop _all

* Graph generation

hist compensation, freq normal name(bidHist)

gr box compensation, name(bidBox)

gr combine bidBox bidHist, name(boxCombine)

* Regression models

reg compensation population age num_bidders, vce(r)
