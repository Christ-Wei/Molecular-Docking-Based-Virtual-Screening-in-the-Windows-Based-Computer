# Define a Function
process_pdbqt_files <- function(folder_path, output_file) {
  # Get the Pathway
  file_paths <- list.files(folder_path, pattern = "\\_out.pdbqt$", full.names = TRUE)
  
  # Create a Framework
  result <- data.frame(Compound = character(), Affinity = numeric(), stringsAsFactors = FALSE)
  
  # Set a loop
  for (file_path in file_paths) {
    # read files
    file_lines <- readLines(file_path, n = 2)
    
    # Extract Files
    file_name <- basename(file_path)
    
    # Extract Affinitys
    Affinity <- as.numeric(sub("REMARK VINA RESULT:\\s+(-?\\d+\\.\\d+).*", "\\1", file_lines[2]))
    
    # Add them into Framwork
    result <- rbind(result, data.frame(Compound = file_name, Affinity = Affinity, stringsAsFactors = FALSE))
  }
  
  # write into CSV
  write.csv(result, file = output_file, row.names = FALSE)
}

# Pathway of pdbqts, fold nor files
folder_path <- "D:\\!!!!!!pathway!!!!\\input"

# Pathway of output, an unexsist file nor fold
output_file <- "D:\\!!!!!!pathway!!!!\\Binding_affinity.csv"

# Run it
process_pdbqt_files(folder_path, output_file)