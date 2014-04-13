let colors= ["black", "white", "blue", "yellow", "red"]
[(x,y) | x <-colors, y<-colors, x < y]
