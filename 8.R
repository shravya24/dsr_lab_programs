library(naivebayes)
library(dplyr)
library(ggplot2)
library(psych)
getwd()
# Data
data <- read.csv("C:/Users/user/Documents/iris.csv", header = T)
str(data)
xtabs(~SepalWidth+SepalLength, data = data)
data$SepalWidth <- as.factor(data$SepalWidth)
data$SepalLength <- as.factor(data$SepalLength)

# Visualization
pairs.panels(data[-1])
data %>%
  ggplot(aes(x=SepalLength, y=SepalWidth, fill = SepalLength)) +
  geom_boxplot() +
  ggtitle("Box Plot")

data %>% ggplot(aes(x=SepalWidth, fill = SepalLength)) +
  geom_density(alpha=0.8, color= 'black') +
  ggtitle("Density Plot")

# Data Partition
set.seed(1234)
ind <- sample(2, nrow(data), replace = T, prob = c(0.8, 0.2))
train <- data[ind == 1,]
test <- data[ind == 2,]

# Naive Bayes Model
model <- naive_bayes(data1$SepalWidth ~ ., data = train, usekernel = T)
model

train %>%
  filter(SepalLength == "1") %>%
  summarise(mean(SepalLength), sd(SepalLength))

plot(model)

# Predict
p <- predict(model, train, type = 'prob')
head(cbind(p, train))

# Confusion Matrix - train data
p1 <- predict(model, train)
(tab1 <- table(p1, train$admit))
1 - sum(diag(tab1)) / sum(tab1)

# Confusion Matrix - test data
p2 <- predict(model, test)
(tab2 <- table(p2, test$admit))
1 - sum(diag(tab2)) / sum(tab2)
print("Smita Sindhu")
