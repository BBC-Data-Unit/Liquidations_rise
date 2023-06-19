# Liquidations_rise
The background and data behind the Shared Data Unit's recent regional study of UK business insolvencies 

In June 2023, the Shared Data Unit carried out an [investigation into business liquidations across the UK](https://www.bbc.co.uk/news/uk-65767982) - looking at how areas had been affected differently by the cost of living crisis.

<img width="347" alt="insolvencies map" src="https://github.com/BBC-Data-Unit/Liquidations_rise/assets/61186777/3aae9494-13b7-421b-92f8-ccf92054ca08">

We found that some parts of the UK saw a fivefold increase in firms closing down in 2022, compared to the year prior to the pandemic.

Two towns in the London commuter belt, Havering and Southend-on-Sea saw the biggest rise.

Experts pointed to the withdrawal of government support and soaring energy costs as creating the record insolvency levels in the UK - with retail and construction the hardest hit industries.

The government said it had provided around £400bn of support to businesses since the pandemic.

The Shared Data Unit analysed creditors’ voluntary liquidation notices on the London Gazette between 2019 and 2022 and mapped them to 221 upper-tier local authorities across the UK. 

## Findings

- 187 out of 221 upper tier authorities in the UK (85%) saw a rise in liquidations comparing 2019 to 2022
- Commuter belt areas on the outskirts of London made up five of the top ten authorities with the largest proportional rise
- On a regional level, the East of England saw the biggest rise of 78%, while the South West of England saw the smallest at 31%


## Get the Data

- We shared figures showing the number of business insolvencies in every upper-tier local authority in the United Kingdom with our partner network. [You can access the data here](https://docs.google.com/spreadsheets/d/1OdOFA1g9otTf7wLF-rH9T3P1zrFr6jr9bxJGFCsE5YY/edit?usp=sharing).
- We also shared [this story pack](https://docs.google.com/document/d/1HsvRk7aXIlrPUAlURqBTm2bAr5hd3LlJVyqAINfUJWA/edit?usp=sharing), containing detailed backround and expert analysis from the Federation of Small Businesses, Propertymark and insolvency practitioners Begbies Traynor.


## Methodology
- We used Python notebooks to extract all insolvency notices from the Gazette - the official public record for insolvencies in the UK - between 2019 and 2022. An example of the notebook can be found [here](https://colab.research.google.com/drive/18wNXHZGR0i0F9CibQI2McXfKiI5sOPMk?usp=sharing).
- We then used R Studio to analyse the data, first filtering the results down to just one insolvency type: creditors' voluntary liquidations, before extracting the postcode from each entry and mapping those to upper and lower-tiered local authority areas in the UK using the National Postcode Lookup released by the Office for National Statistics. A script for this process can be found in the files section at the top of this repository.
- Finally we used the Companies House shapshot to map SIC codes (which describe the nature of a business) to the liquidation notices in our dataset. This way we could get a regional picture of the types of industry to fail in each area in 2022.     

## Interviews
- Ryan Waite - former owner of the Geek Retreat in Bolton.
- Dale and Rachel Wright - former owners of the Auction House restaurant in Louth.
- Michael Weedon, member lead for retail at the Federation of Small Businesses.
- Julie Palmer, regional director of insolvency experts Begbies Traynor.
- Nathan Emerson, CEO of estate agents' regulatory body Propertymark.

## Partner usage
The story appeared on the UK BBC News homepage as well as regional radio bulletins across the UK. It was also used by more than 20 outlets in our wider partner network, including the following:

- My Local Lincolnshire: [Navigating tough times: Lincolnshire's insolvency figures on the rise](https://mylocal.co.uk/lincolnshire/feed/navigating-tough-times-lincolnshire-s-insolvency-figures-on-the-rise/76369) 13 June, 2023.
- Suffolk News: [Suffolk sees a 40 per cent rise in company insolvencies](https://www.suffolknews.co.uk/bury-st-edmunds/news/suffolk-sees-40-per-cent-rise-in-company-insolvencies-9316654/)  13 June 2023.
- Lichfield Live: [Figures reveal company insolvencies have jumped by two thirds in Staffordshire](https://lichfieldlive.co.uk/2023/06/13/figures-reveal-company-insolvencies-in-staffordshire-have-jumped-by-more-than-two-thirds-since-before-the-covid-pandemic/) 13 June 2023.
- Belfast Telegraph: [Rise in firms going out of business as pandemic support ends](https://www.belfasttelegraph.co.uk/business/northern-ireland/rise-in-firms-going-out-of-business-as-pandemic-support-measures-end/a1253431168.html) 13 June 2023.
- Planet Radio: [East of England saw largest rise in businesses voluntarily shutting down last year](https://planetradio.co.uk/hits-radio/suffolk/news/east-england-insolvencies/) June 13, 2023.
- The Scotsman: [Scotland records biggest post-Covid rise in business insolvencies out of UK nations](https://www.scotsman.com/business/scotland-records-biggest-post-covid-rise-in-business-insolvencies-out-of-all-uk-nations-4179986) June 13, 2023.
