# Here's my R script file, 
# in the same directory as 
# my Rmd file 

# ---- set-up-the-data

  # Set up some sample data 
  xvars <- -10:10 
  yvars <- xvars^2 
  
# ---- print-the-data
  
  # Display the xvars 
  # Note that I don't really want to 
  # display the xvars, 
  # but this line is included 
  # to demonstrate that text output 
  # won't show up in the RMarkdown 
  # in this example. 
  
  xvars 
  
# ---- print-the-data-with-print
  
  print(yvars) 
  
# ---- plot-the-data

  # Create the plot 
  plot(xvars, yvars) 
  points(xvars, yvars, pch = 16, col = "red", cex = 1.5) 
  

  
  