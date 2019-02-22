## plot_util.R | unikn
## hn  |  uni.kn |  2019 02 22
## ---------------------------

## Utility functions for plotting 
## (for internal use, not exported): 

## plot_grid: Helper function to plot a grid of points (to position objects): ------ 

plot_grid <- function(x_min = 0, x_max = 1, y_min = 0, y_max = 1){
  
  if (dev.cur() == 1) {  # no graphics device open (null device)
    
    message("No existing plot: Please plot something first...")  
    
  } else {
    
    # Add default grid: 
    grid()
    
    # Mark points:
    points(0, 0, pch = 1, col = grey(.01, .50), cex = 2)  # origin
    points(x_max, y_max, pch = 0, col = grey(.01, .50), cex = 2)  # top right
    
    # Grid parameters:
    if ((abs(x_max - x_min) > 1) && (abs(y_max - y_min) > 1)) { 
      stepsize <- 1
    } else { 
      stepsize <- 1/10 
    }
    
    grid_x <- rep(seq(x_min, x_max, by = stepsize), times = length(seq(y_min, y_max, by = stepsize)))  # x/horizontal
    grid_y <- rep(seq(y_min, y_max, by = stepsize), each =  length(seq(x_min, x_max, by = stepsize)))  # y/vertical
    
    # Plot grid of points:    
    points(grid_x, grid_y, pch = 3, col = grey(.66, .50), cex = 3/4)
    
  }
  
} # plot_grid end.

## Check:
# plot.new()
# plot_grid()

# plot(x = 0, y = 0, type = "n", xlim = c(0, 10), ylim = c(0, 5))
# plot_grid(x_max = 10, y_max = 5)



## Test: Testbed for code above: ------ 

## ToDo: ------

## eof. ----------