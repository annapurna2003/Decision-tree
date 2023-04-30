library(datasets)
library(caTools)
library(party)
library(dplyr)
library(magrittr)
data("readingskills")
head(readingSkills)
#splitting dataset into 4:1 ratio for train and test data
sample_data = sample.split(readingSkills, SplitRatio = 0.8)
train_data <-subset(readingSkills, sample_data == TRUE)
test_data <- subset(readingSkills, sample_data == FALSE)
#create the decision tree model using ctree and plot the model
model <- ctree(nativeSpeaker ~ ., train_data)
plot(model)

