# download and unzip necessary files
download.file(url = 'https://raw.githubusercontent.com/GeoScripting-WUR/VectorRaster/gh-pages/data/MODIS.zip', destfile = 'modis.zip', method = 'auto')
unzip('modis.zip')

# import file to R
modis <- brick('MOD13A3.A2014001.h18v03.005.grd')

# select data from January
NDVIjanuary <- modis[modis@data@names == 'January']

# import municipality boundaries
nlMunicipality <- getData('GADM',country='NLD', level=2)