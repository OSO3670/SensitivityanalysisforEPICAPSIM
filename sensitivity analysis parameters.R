install.packages(c("devtools", "tidyr", "testthat",
                   "assertthat", "roxygen2", "data.table"))

devtools::install_github("krlmlr/mockr")
install.packages("readr")
devtools::install_version("dplyr", "1.0.10")
CCEE

library(gcamdata)

driver(write_output=FALSE, write_xml=TRUE)

library(readxl)
# Create a data frame with the soil parameter ranges
soil_params <- read_excel("C:/Users/olutuyi/Downloads/SAepic_apsim.xlsx", sheet = 1)

# Extract the low and high values using regular expressions
soil_params$Low <- as.numeric(gsub("^(\\d+\\.?\\d*)\\s*-.*$", "\\1", soil_params$Range))
soil_params$High <- as.numeric(gsub("^.*-\\s*(\\d+\\.?\\d*)$", "\\1", soil_params$Range))

# Set the maximum y-axis scale to the highest range value
ymax <- max(soil_params$High)

# Plot the data using ggplot2
library(ggplot2)


ggplot(soil_params, aes(x = Parameter, y = 0)) +
  geom_segment(aes(x = Parameter, xend = Parameter, y = Low, yend = High, color = Parameter), size = 2) +
  geom_point(aes(x = Parameter, y = Low, color = Parameter), size = 4) +
  geom_point(aes(x = Parameter, y = High, color = Parameter), size = 4) +
  annotate("text", x = 1:27, y = soil_params$Low - ymax/20, label = soil_params$Low, size = 3, color = "black") +
  annotate("text", x = 1:27, y = soil_params$High + ymax/20, label = soil_params$High, size = 3, color = "black") +
  xlab("Soil Parameter") +
  ylab("Range") +
  ggtitle("Soil Parameters Used for Sensitivity Analysis within EPIC") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  ylim(-ymax/10, ymax + ymax/5) +
  scale_color_discrete(guide = FALSE)+
  theme(plot.title = element_text(hjust = 0.5))

ggsave("soil1.jpg", width = 40, height = 25, units = c("cm"), dpi =800)

# Create a data frame with the soil parameter ranges
soil_params <- read_excel("C:/Users/olutuyi/Downloads/SAepic_apsim.xlsx", sheet = 2)

# Extract the low and high values using regular expressions
soil_params$Low <- as.numeric(gsub("^(\\d+\\.?\\d*)\\s*-.*$", "\\1", soil_params$Range))
soil_params$High <- as.numeric(gsub("^.*-\\s*(\\d+\\.?\\d*)$", "\\1", soil_params$Range))

# Set the maximum y-axis scale to the highest range value
ymax <- max(soil_params$High)

# Plot the data using ggplot2
library(ggplot2)

ggplot(soil_params, aes(x = Parameter, y = 0)) +
  geom_segment(aes(x = Parameter, xend = Parameter, y = Low, yend = High, color = Parameter), size = 2) +
  geom_point(aes(x = Parameter, y = Low, color = Parameter), size = 4) +
  geom_point(aes(x = Parameter, y = High, color = Parameter), size = 4) +
  annotate("text", x = 1:43, y = soil_params$Low - ymax/20, label = soil_params$Low, size = 3, color = "black") +
  annotate("text", x = 1:43, y = soil_params$High + ymax/20, label = soil_params$High, size = 3, color = "black") +
  xlab("Crop Parameter") +
  ylab("Range") +
  ggtitle("Crop Parameters Used for Sensitivity Analysis within EPIC") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  ylim(-ymax/10, ymax + ymax/5) +
  scale_color_discrete(guide = FALSE)+
  theme(plot.title = element_text(hjust = 0.5))
ggsave("soil2.jpg", width = 40, height = 25, units = c("cm"), dpi =800)

# Create a data frame with the soil parameter ranges
soil_params <- read_excel("C:/Users/olutuyi/Downloads/SAepic_apsim.xlsx", sheet = 3)

# Extract the low and high values using regular expressions
soil_params$Low <- as.numeric(gsub("^(\\d+\\.?\\d*)\\s*-.*$", "\\1", soil_params$Range))
soil_params$High <- as.numeric(gsub("^.*-\\s*(\\d+\\.?\\d*)$", "\\1", soil_params$Range))

# Set the maximum y-axis scale to the highest range value
ymax <- max(soil_params$High)

# Plot the data using ggplot2
library(ggplot2)

ggplot(soil_params, aes(x = Parameter, y = 0)) +
  geom_segment(aes(x = Parameter, xend = Parameter, y = Low, yend = High, color = Parameter), size = 2) +
  geom_point(aes(x = Parameter, y = Low, color = Parameter), size = 4) +
  geom_point(aes(x = Parameter, y = High, color = Parameter), size = 4) +
  annotate("text", x = 1:32, y = soil_params$Low - ymax/20, label = soil_params$Low, size = 3, color = "black") +
  annotate("text", x = 1:32, y = soil_params$High + ymax/20, label = soil_params$High, size = 3, color = "black") +
  xlab("Control Editor") +
  ylab("Range") +
  ggtitle("Control Editor Used for Sensitivity Analysis within EPIC") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  ylim(-ymax/10, ymax + ymax/5) +
  scale_color_discrete(guide = FALSE)+
  theme(plot.title = element_text(hjust = 0.5))
ggsave("soil3.jpg", width = 40, height = 25, units = c("cm"), dpi =800)

# Create a data frame with the soil parameter ranges
soil_params <- read_excel("C:/Users/olutuyi/Downloads/SAepic_apsim.xlsx", sheet = 4)

# Extract the low and high values using regular expressions
soil_params$Low <- as.numeric(gsub("^(\\d+\\.?\\d*)\\s*-.*$", "\\1", soil_params$Range))
soil_params$High <- as.numeric(gsub("^.*-\\s*(\\d+\\.?\\d*)$", "\\1", soil_params$Range))

# Set the maximum y-axis scale to the highest range value
ymax <- max(soil_params$High)

# Plot the data using ggplot2
library(ggplot2)

ggplot(soil_params, aes(x = Parameter, y = 0)) +
  geom_segment(aes(x = Parameter, xend = Parameter, y = Low, yend = High, color = Parameter), size = 2) +
  geom_point(aes(x = Parameter, y = Low, color = Parameter), size = 4) +
  geom_point(aes(x = Parameter, y = High, color = Parameter), size = 4) +
  annotate("text", x = 1:39, y = soil_params$Low - ymax/20, label = soil_params$Low, size = 3, color = "black") +
  annotate("text", x = 1:39, y = soil_params$High + ymax/20, label = soil_params$High, size = 3, color = "black") +
  xlab("Soil-Water Parameter") +
  ylab("Range") +
  ggtitle("Soil-Water Parameters Used for Sensitivity Analysis within APSIM") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  ylim(-ymax/10, ymax + ymax/5) +
  scale_color_discrete(guide = FALSE)+
  theme(plot.title = element_text(hjust = 0.5))
ggsave("soil4.jpg", width = 40, height = 25, units = c("cm"), dpi =800)

