# Liquidations_rise
The background and data behind the Shared Data Unit's recent regional study of UK business insolvencies 

In June 2023, the Shared Data Unit carried out an investigation into business liquidations across the UK - looking at how areas had been affected differently.

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


## What we shared

We shared figures showing the number of business insolvencies in every upper-tier local authority in the United Kingdom with our partner network. You can access the data here.
We also shared this story pack, containing expert analysis from the Federation of Small Businesses, Propertymark and insolvency practitioners Begbies Traynor.


## Methodology
We used Python notebooks to extract all insolvency notices from the Gazette - the official public record for insolvencies in the UK - between 2019 and 2022.
We then used R Studio to analyse the data, first filtering the results down to just one insolvency type: creditors' voluntary liquidations, before extracting the postcode from each entry and mapping those to upper and lower-tiered local authority areas in the UK using the National Postcode Lookup. Finally we used the Companies House shapshot to map SIC codes (which describe the nature of a business) to the liquidation notices in our dataset.    

## Scripts and code
