library("leaflet")

m<-leaflet()

m <- addTiles(m)
m <- addCircleMarkers(m, lng=-118.29581, lat=34.01971,label="Home", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28916, lat=34.02048,label="Epstein Plaza", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28778, lat=34.01855,label="USC Lovine", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28519, lat=34.02039,label="Patsy", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28463, lat=34.02051,label="Prentiss", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28287, lat=34.02139,label="Reflecting", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28322, lat=34.02222,label="Generations", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28905, lat=34.01953,label="Viterbi Lib", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28677, lat=34.01892,label="Hoose Lib", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28410, lat=34.02032,label="Doheny Lib", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28251, lat=34.02071,label="International", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28299, lat=34.02166,label="Leavy Lib", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28567, lat=34.01946,label="Marshall Lib", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m