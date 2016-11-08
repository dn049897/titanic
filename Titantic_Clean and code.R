titanic3$age[is.na(titanic3$age)] <- mean(titanic3$age,na.rm = TRUE)
titanic3$boat[titanic3$boat == 0] <- "NA"
titanic3$embarked[titanic3$embarked == ""] <- "S"
titanic3$has_cabin_number <- titanic3$cabin
titanic3$has_cabin_number <- sub("^$", "0",titanic3$has_cabin_number)
titanic3$has_cabin_number[titanic3$has_cabin_number != "0"] <- "1"
pclass survived                                            name    sex     age sibsp parch ticket     fare   cabin embarked boat body
1      1        1                   Allen, Miss. Elisabeth Walton female 29.0000     0     0  24160 211.3375      B5        S    2   NA
2      1        1                  Allison, Master. Hudson Trevor   male  0.9167     1     2 113781 151.5500 C22 C26        S   11   NA
3      1        0                    Allison, Miss. Helen Loraine female  2.0000     1     2 113781 151.5500 C22 C26        S        NA
4      1        0            Allison, Mr. Hudson Joshua Creighton   male 30.0000     1     2 113781 151.5500 C22 C26        S       135
5      1        0 Allison, Mrs. Hudson J C (Bessie Waldo Daniels) female 25.0000     1     2 113781 151.5500 C22 C26        S        NA
6      1        1                             Anderson, Mr. Harry   male 48.0000     0     0  19952  26.5500     E12        S    3   NA
home.dest has_cabin_number
1                    St Louis, MO                1
2 Montreal, PQ / Chesterville, ON                1
3 Montreal, PQ / Chesterville, ON                1
4 Montreal, PQ / Chesterville, ON                1
5 Montreal, PQ / Chesterville, ON                1
6                    New York, NY                1
