# creating a dataframe

employee.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c("Ravi","Sagar","Nehal","shaik","jameel"),
  salary = c(20000, 25000, 15000, 28000, 27000),
  start_date = as.Date(c("2012- 01-01","2013-09-02","2014-05-06","2012-04-03","2010-04-02"))
)
# to View your dataframe
View(employee.data)

# print your dataframe
print(employee.data)

# check structure of dataframe
str(employee.data)
# check summary of dataframe
summary(employee.data)

employee.data$salary

attach(employee.data)

emp_name
# creating new data frame
emp_newdata <- data.frame(
  emp_id = c(6:10),
  emp_name = c("prashanth","fatima","john","fred","king"),
  salary = c(12000,23000,19000,22000,32000),
  start_date = as.Date(c("2010-03-04","2012-03-03","2010-03-02","2013-03-04","2010-03-04"))
)

# to combine two datasets we use rbind() function 

final_emp_data <- rbind(employee.data,emp_newdata)

View(final_emp_data)
attach(final_emp_data)

str(final_emp_data)

## column bind then use cbind() 
# creating new dataframe with new columns
col_emp <- data.frame(
  dept = c("IT","Operations","Finance","Managment","HR"),
  skills = c("java","Python","R","Matlabe","c"),
  
)

final1 <- cbind(final_emp_data,col_emp)

summary(final1)

attach(final1) # to call use your column names without referring to your dataframe
# visual analysis
mean(final1$salary)
median(final1$salary)
range(final1$salary)
range(salary)
hist(final1$salary)

#### load your data into R studio 
install.packages("readr")
library(readr)

df <- read.csv(file.choose())

View(df)

attach(df)

# load your excel or it also called as .xlsx format 
install.packages("readxl")
library(readxl)
# change path location accordingly # watch video for more details
df1 <- read_csv("C:/Users/abdul/Desktop/assignmnent@360 key/Python codes/Python codes/clustering/crime_data.csv")
# removing first column
#df1 <- df1[-1]
summary(df1)
str(df1)
attach(df1)

## histogram is univariate analysis

hist(df1$Murder)
a = hist(df1$Rape)
a
## boxplot is univariate analysis

c = boxplot(df1$Rape)
c
# to get outlier information
c$out


str(df1)

# to convert it to factors use as.factor

df1$city <- as.factor(df1$city)
str(df1)
# to check if its a factor
is.factor(df1$city)
is.numeric(df1$Murder)
is.character(df1$city)

# loading execl files,check video for more details on it
# load files of .xlxs format type
df2 <- read_excel(file.choose(),sheet = 2)


# creating a vector data 
data <- c("east","west","north","south","north","west","east","east")
# check if its a factor
is.factor(data)
# convert it into factor type
factor_data <- as.factor(data)

print(is.factor(factor_data))
print(factor_data)


