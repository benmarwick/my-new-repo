
# get the MS Word doc with track changes and convert to Rmd with Criticmarkup
redoc::dedoc(docx = "redoc-example/redoc-example-with-track-changes.docx", 
             to = "redoc-example/redoc-example-dedoc.Rmd",
             track_changes = "criticmarkup")

# View diff between original Rmd and md with Criticmarkup
redoc::redoc_diff("redoc-example/redoc-example-with-track-changes.docx")
