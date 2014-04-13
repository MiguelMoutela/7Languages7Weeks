let colors= ["red","green","blue"]

let colorCombinations= [(ten,mis,ala,geo,flo) | ten <- colors, mis <- colors, ala <- colors, geo <- colors, flo <- colors, ten /= mis, ten /=ala, ten /=geo, mis /= ala, ala /=geo, ala /=flo, geo/=flo]
