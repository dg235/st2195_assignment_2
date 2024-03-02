# Load necessary libraries
if (!requireNamespace("rvest", quietly = TRUE)) install.packages("rvest")
library(rvest)

# Define the URL of the Wikipedia page
url <- "https://en.wikipedia.org/wiki/Comma-separated_values"

# Read the HTML content of the webpage
webpage <- read_html(url)

# Extract tables from the webpage
tables <- webpage %>% html_table(fill = TRUE)

# Inspect the contents of all tables to identify which one you need to scrape
# You can print out each table or the first row of each to see their content
# This is a manual step, you should look at the printed tables in your R console
# and find out which one is the correct table index for the car table
# Let's assume for this example that the car table is the second table
csv_data <- tables[[2]]  # Replace 2 with the actual index of the car table

# Save the data to a CSV file in the specified folder
write.csv(csv_data, "/Users/dorotheagrkovic/Downloads/cars_data.csv", row.names = FALSE)

