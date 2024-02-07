options(digits=5)
data <- read.csv("cleaned_news.csv")

set.seed(123)
data$X <- NULL

logistic_model <- glm(label ~ ., data = data, family = binomial)
summary(logistic_model)
