# area maps
m = map("state", fill = TRUE, plot = FALSE)
area.map(m)
area.map(m, ".*dakota")
area.map(m, c("North Dakota", "South Dakota"))

if(require(mapproj)) {
  # true areas on the globe
  m = map("state", proj="bonne", param=45, fill=TRUE, plot=FALSE)
  # North Dakota is listed as 70,704 square miles
  area.map(m, "North Dakota")
}


#usando maps.cities


map("world", "China")
map.cities(country = "China", capitals = 2)
map("state", "New Jersey")
data(us.cities)
map.cities(us.cities, country="NJ")

#Country

map('county', 'iowa', fill = TRUE, col = palette())
#france
map('france', fill = TRUE, col = 1:10)

#identify map
 
identify(map("state", fill = TRUE, col = 0))
if(require(mapproj))
  identify(map("world", proj = "lagrange", fill = TRUE, col = 0, wrap=c(-180,180,-90)))

#iso.expand {maps}	
sov.expand("France") 

iso.expand("ES")

map(regions=sov.expand("Spain"))


wm <- map("world", fill=TRUE, col=0, xlim=c(-10,40), ylim=c(30,60))

nam <- grep(":", wm$names, inv=TRUE, val=TRUE)

map.text(wm, regions=nam, label=iso.alpha(nam), col=2, exact=TRUE, add=TRUE)


#italy
map('italy', fill = TRUE, col = 1:10)

#World lakes database

 map('legacy_world', fill = TRUE, col = 1:10)
## Use mapdata::worldLores instead:
if (requireNamespace("mapdata", quietly=TRUE) && packageVersion("mapdata") >= "2.3") {
  map("mapdata::worldLores", fill = TRUE, col = 1:10)
}
 
 ## DEPRECATED:
  # map('legacy_world', fill = TRUE, col = 1:10)
 ## Use mapdata::worldLores instead:
 if (requireNamespace("mapdata", quietly=TRUE) && packageVersion("mapdata") >= "2.3") {
   map("mapdata::worldLores", fill = TRUE, col = 1:10)
 }
 
 
 #Draw Geographical Maps
 map()	# low resolution map of the world
 map(wrap = c(0,360), fill = TRUE, col = 2) # pacific-centered map of the world
 map(wrap = c(0, 360, NA), fill = TRUE, col = 2) # idem, without Antarctica
 map('usa')	# national boundaries
 map('county', 'new jersey')	# county map of New Jersey
 map('state', region = c('new york', 'new jersey', 'penn'))	# map of three states
 map("state", ".*dakota", myborder = 0)	# map of the dakotas
 map.axes()				# show the effect of myborder = 0
 if(require(mapproj))
   map('state', proj = 'bonne', param = 45)	# Bonne equal-area projection of states
 
 # names of the San Juan islands in Washington state
 map('county', 'washington,san', names = TRUE, plot = FALSE)
 
 
 
 #map.axes
 
 map("state")
 map.axes(cex.axis=0.8)
 
 # national boundaries in one linetype, states in another
 # (figure 5 in the reference)
 map("state", interior = FALSE)
 map("state", boundary = FALSE, lty = 2, add = TRUE)
 
 # plot the ozone data on a base map
 # (figure 4 in the reference)
 data(ozone)
 map("state", xlim = range(ozone$x), ylim = range(ozone$y))
 text(ozone$x, ozone$y, ozone$median)
 box()
 if(require(mapproj)) {	# mapproj is used for  projection="polyconic"
   # color US county map by 2009 unemployment rate
   # match counties to map using FIPS county codes
   # Based on J's solution to the "Choropleth Challenge"
   # http://blog.revolutionanalytics.com/2009/11/choropleth-challenge-result.html
   
   # load data
   # unemp includes data for some counties not on the "lower 48 states" county
   # map, such as those in Alaska, Hawaii, Puerto Rico, and some tiny Virginia
   #  cities
   data(unemp)
   data(county.fips)
   
   # define color buckets
   colors = c("#F1EEF6", "#D4B9DA", "#C994C7", "#DF65B0", "#DD1C77", "#980043")
   unemp$colorBuckets <- as.numeric(cut(unemp$unemp, c(0, 2, 4, 6, 8, 10, 100)))
   leg.txt <- c("<2%", "2-4%", "4-6%", "6-8%", "8-10%", ">10%")
   
   # align data with map definitions by (partial) matching state,county
   # names, which include multiple polygons for some counties
   cnty.fips <- county.fips$fips[match(map("county", plot=FALSE)$names,
                                       county.fips$polyname)]
   colorsmatched <- unemp$colorBuckets [match(cnty.fips, unemp$fips)]
   
   # draw map
   map("county", col = colors[colorsmatched], fill = TRUE, resolution = 0,
       lty = 0, projection = "polyconic")
   map("state", col = "white", fill = FALSE, add = TRUE, lty = 1, lwd = 0.2,
       projection="polyconic")
   title("unemployment by county, 2009")
   legend("topright", leg.txt, horiz = TRUE, fill = colors)
   
   # Choropleth Challenge example, based on J's solution, see:
   # http://blog.revolutionanalytics.com/2009/11/choropleth-challenge-result.html
   # To see the faint county boundaries, use RGui menu:  File/SaveAs/PDF
 }
 
 
 #map.cities {maps}	
 
 map("world", "China")
 map.cities(country = "China", capitals = 2)
 map("state", "New Jersey")
 data(us.cities)
 map.cities(us.cities, country="NJ")
 
 
 
 map("world", "China")
 map.scale()
 
 
 map.text("world", "ira")    # iran and iraq
 map.text("state", "penn")
 map.text("county", "penn")  # Pennsylvania counties
 map.text("county", "new jersey")  # New Jersey counties
 
 #map.where  |Locate points on a map

 
 
 map.where("state", -73.8, 41)
 # Auckland
 map.where("nz", 174.6, -36.92)
 # find both in the world
 map.where(x = c(174.6, -73.8), y = c(-36.92, 41))
 # with a map object:
 m = map("state", "new york", fill = TRUE, plot = FALSE)
 map.where(m, -73.8, 41)
 
 # DEPRECATED:
  map('legacy_world', fill = TRUE, col = 1:10)
 ## Use mapdata::worldLores instead:
 #Not run
 if (requireNamespace("mapdata", quietly=TRUE) && packageVersion("mapdata") >= "2.3.0") {
   map("mapdata::worldLores", fill = TRUE, col = 1:10)
 }
  
  # filled map showing Republican vote in 1900
  # (figure 6 in the reference)
  data(state, package = "datasets")
  data(votes.repub)
  state.to.map <- match.map("state", state.name)
  x <- votes.repub[state.to.map, "1900"]
  gray.colors <- function(n) gray(rev(0:(n - 1))/n)
  color <- gray.colors(100)[floor(x)]
  map("state", fill = TRUE, col = color); map("state", add = TRUE)
  
  
  #map
  
  map('nz')
  map('nz', xlim = c(166, 179), ylim = c(-48, -34))
 
  
  
  
  # filled map showing Republican vote in 1900
  # (figure 6 in the reference)
  data(state, package = "datasets")
  data(votes.repub)
  state.to.map <- match.map("state", state.name)
  x <- votes.repub[state.to.map, "1900"]
  gray.colors <- function(n) gray(rev(0:(n - 1))/n)
  color <- gray.colors(100)[floor(x)]
  map("state", fill = TRUE, col = color); map("state", add = TRUE)
  
  
  
  
  
  
  
  #Draw Axes on Geographical Maps
    map("state")
  map.axes(cex.axis=0.8)
   
  
 # Add Cities to Existing Map

  map("world", "China")
  map.cities(country = "China", capitals = 2)
  map("state", "New Jersey")
  data(us.cities)
  map.cities(us.cities, country="NJ")
  
  
  #map.scales
  
  map("world", "China")
  map.scale()
  
 
  
  #map.text
  
  map.text("world", "ira")    # iran and iraq
  map.text("state", "penn")
  map.text("county", "penn")  # Pennsylvania counties
  map.text("county", "new jersey")  # New Jersey counties
  
  
  
map('legacy_world', fill = TRUE, col = 1:10)
  ## Use mapdata::worldLores instead:
  #Not run
  if (requireNamespace("mapdata", quietly=TRUE) && packageVersion("mapdata") >= "2.3.0") {
    map("mapdata::worldLores", fill = TRUE, col = 1:10)
  }  
  
#match.map

# filled map showing Republican vote in 1900
# (figure 6 in the reference)
data(state, package = "datasets")
data(votes.repub)
state.to.map <- match.map("state", state.name)
x <- votes.repub[state.to.map, "1900"]
gray.colors <- function(n) gray(rev(0:(n - 1))/n)
color <- gray.colors(100)[floor(x)]
map("state", fill = TRUE, col = color); map("state", add = TRUE)

#nz

map('nz')
map('nz', xlim = c(166, 179), ylim = c(-48, -34))




data(ozone)
data(unemp)
data(votes.repub)

 



# compare to the example for match.map
data(state, package = "datasets")
data(votes.repub)
z = votes.repub[, "1900"]
m = map("state", fill = TRUE, plot = FALSE)
# use a small span to fill in, but not smooth, the data
# increase the resolution to get better results
fit = smooth.map(m, z, span = 1/100, merge = TRUE, ave = TRUE)
mat = tapply(fit$z, fit[1:2], mean)
gray.colors <- function(n) gray(rev(0:(n - 1))/n)
par(bg = "blue")
filled.contour(mat, color.palette = gray.colors, nlev = 32, asp = 1)
# another way to visualize:
image(mat, col = gray.colors(100))

# for a higher degree of smoothing:
# fit = smooth.map(m, z, merge = TRUE, ave = TRUE)
# interpolation, state averages are preserved:
# fit = smooth.map(m, z, merge = TRUE, ave = TRUE, type = "interp")



map('state', fill = TRUE, col = palette())



#Smooth out aggregated data

# compare to the example for match.map
data(state, package = "datasets")
data(votes.repub)
z = votes.repub[, "1900"]
m = map("state", fill = TRUE, plot = FALSE)
# use a small span to fill in, but not smooth, the data
# increase the resolution to get better results
fit = smooth.map(m, z, span = 1/100, merge = TRUE, ave = TRUE)
mat = tapply(fit$z, fit[1:2], mean)
gray.colors <- function(n) gray(rev(0:(n - 1))/n)
par(bg = "blue")
filled.contour(mat, color.palette = gray.colors, nlev = 32, asp = 1)
# another way to visualize:
image(mat, col = gray.colors(100))

# for a higher degree of smoothing:
# fit = smooth.map(m, z, merge = TRUE, ave = TRUE)
# interpolation, state averages are preserved:
# fit = smooth.map(m, z, merge = TRUE, ave = TRUE, type = "interp")

xamples
# France and all its overseas departments, territories etc.
sov.expand("France") # France and all its overseas departments, territories etc.

# Canary Islands are not included in map("Spain")
iso.expand("ES")
map(regions=sov.expand("Spain"))

# draw a map with ISO codes as labels:
wm <- map("world", fill=TRUE, col=0, xlim=c(-10,40), ylim=c(30,60))
# take out islands, but you loose e.g. UK, New Zealand, small island states
nam <- grep(":", wm$names, inv=TRUE, val=TRUE)
# ad ISO codes as label
map.text(wm, regions=nam, label=iso.alpha(nam), col=2, exact=TRUE, add=TRUE)
 

map('state', fill = TRUE, col = palette())

map('state.carto', fill = TRUE, col = palette())


map("state")
map.axes(cex.axis=0.8)



#map.cities



map("world", "China")
map.cities(country = "China", capitals = 2)
map("state", "New Jersey")
data(us.cities)
map.cities(us.cities, country="NJ")



# map.axes


map("state")
map.axes(cex.axis=0.8)

#map.scale
map("world", "China")
map.scale()

#map.text

text("world", "ira")    # iran and iraq
map.text("state", "penn")
map.text("county", "penn")  # Pennsylvania counties
map.text("county", "new jersey")  # New Jersey counties
 
#map.where
NYC
map.where("state", -73.8, 41)
# Auckland
map.where("nz", 174.6, -36.92)
# find both in the world
map.where(x = c(174.6, -73.8), y = c(-36.92, 41))
# with a map object:
m = map("state", "new york", fill = TRUE, plot = FALSE)



#deprecated

 map('legacy_world', fill = TRUE, col = 1:10)
## Use mapdata::worldLores instead:
#Not run
if (requireNamespace("mapdata", quietly=TRUE) && packageVersion("mapdata") >= "2.3.0") {
  map("mapdata::worldLores", fill = TRUE, col = 1:10)
}

map.where(m, -73.8, 41)





#INDEX MAP Regions

 # (figure 6 in the reference)
data(state, package = "datasets")
data(votes.repub)
state.to.map <- match.map("state", state.name)
x <- votes.repub[state.to.map, "1900"]
gray.colors <- function(n) gray(rev(0:(n - 1))/n)
color <- gray.colors(100)[floor(x)]
map("state", fill = TRUE, col = color); map("state", add = TRUE)

 

map('nz')
map('nz', xlim = c(166, 179), ylim = c(-48, -34))



#Smooth out aggregated data


data(state, package = "datasets")
data(votes.repub)
z = votes.repub[, "1900"]
m = map("state", fill = TRUE, plot = FALSE)
# use a small span to fill in, but not smooth, the data
# increase the resolution to get better results
fit = smooth.map(m, z, span = 1/100, merge = TRUE, ave = TRUE)
mat = tapply(fit$z, fit[1:2], mean)
gray.colors <- function(n) gray(rev(0:(n - 1))/n)
par(bg = "blue")
filled.contour(mat, color.palette = gray.colors, nlev = 32, asp = 1)
# another way to visualize:
image(mat, col = gray.colors(100))

# for a higher degree of smoothing:
# fit = smooth.map(m, z, merge = TRUE, ave = TRUE)
# interpolation, state averages are preserved:
# fit = smooth.map(m, z, merge = TRUE, ave = TRUE, type = "interp")

#Identify countries by ISO 3166 codes (2 or 3 letters) or by Sovereignty.

Examples
# France and all its overseas departments, territories etc.
sov.expand("France") # France and all its overseas departments, territories etc.

# Canary Islands are not included in map("Spain")
iso.expand("ES")
map(regions=sov.expand("Spain"))

# draw a map with ISO codes as labels:
wm <- map("world", fill=TRUE, col=0, xlim=c(-10,40), ylim=c(30,60))
# take out islands, but you loose e.g. UK, New Zealand, small island states
nam <- grep(":", wm$names, inv=TRUE, val=TRUE)
# ad ISO codes as label
map.text(wm, regions=nam, label=iso.alpha(nam), col=2, exact=TRUE, add=TRUE)


example(Spatial2map)

#United States State Population Cartogram Map

map('state.vbm', fill = TRUE, col = palette())

map('state.carto', fill = TRUE, col = palette())


#usa

map('usa')



  map('world', fill = TRUE, col = 1:10)
# if you wrap at [-180,180], you also can get a clean closure of Antarctica
map('world', fill = TRUE, col = 1:10, wrap=c(-180,180) )


map('state.vbm', fill = TRUE, col = palette())


data(ozone)
data(unemp)
data(votes.repub)