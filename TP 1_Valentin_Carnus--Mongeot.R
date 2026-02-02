"Exercice 1"

"1"
iris
class(iris)

"2"
View(iris)

"3"
nrow(iris)

"4"
ncol(iris) "nbr col"

"5"
colnames(iris) "nom col"

"6"
summary(iris) "carte d'identite de la data frame"

"7"
iris[ , c("Sepal.Length","Species")]

"8"
iris[ c(100,103,105),] " LIGNE,COLLONE donc la virgule apres et au dessus la virgule avant"

"9"
iris[ c(50:100),]

"10"
mean(iris$Sepal.Length)

"11"
median(iris$Sepal.Length)

"12"
sd(iris$Petal.Length)

"13"
quantile(iris$Petal.Width, probs = seq(from = 0.1, to = 0.9, by =0.1))

"Exercice 2"
"1"
dfManga <- read.csv("C:/Users/vcarnusmongeot/Downloads/manga.csv", header = TRUE, sep = ",", dec = ".")
dfAnime <- read.csv("C:/Users/vcarnusmongeot/Downloads/anime.csv", header = TRUE, sep = ",", dec = ".")
class(dfManga)
class(dfAnime)

"2"
View(dfManga)
View(dfAnime)

"3"
dim(dfManga)
dim(dfAnime)

"4"
mean(dfManga$Score)
mean(dfAnime$Score)

"5"
sum(dfManga$Vote)
sum(dfAnime$Vote)
"6"
sd(dfManga$Score)
sd(dfAnime$Score)

"7"
quantile(dfManga$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))
quantile(dfAnime$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))

"1"
extraction1 <- subset(dfManga, Score > 9)
nrow(extraction1)

"2"
extraction2 <- subset(dfManga, Vote > 200000)
nrow(extraction2)

"3"
extraction3 <- subset(dfManga, Vote >= 200000 & Score >= 8)
nrow(extraction3)

"4"
extraction4 <- subset(dfManga, Score >= 7 & Score <= 8)
nrow(extraction4)

"1"
effectifRating <- table(dfAnime$Rating)
print(effectifRating)
length(effectifRating)
prop.table(effectifRating)

"2"
extraction2 <- subset(dfAnime, Rating == "R - 17+ (violence & profanity)")
nrow(extraction2)

"3"
extraction3 <- subset(dfAnime, Rating == "R - 17+ (violence & profanity)" &
                        Score >= 8)
nrow(extraction3)

"4"
extraction4 <- subset(dfAnime, Rating != "R - 17+ (violence & profanity)") "!="
nrow(extraction4)

"5"
extraction5 <- subset(dfAnime, Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction5)

"6"
extraction6 <- subset(dfAnime, !Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction6)

"7"
extraction7 <- subset(dfAnime, Score >= 9 | Vote > 400000) "ou" 
nrow(extraction7)

"1"
dfAnime <- dfAnime[ , c("Title","Score","Vote","Ranked")]
dfManga <- dfManga[ , c("Title","Score","Vote","Ranked")]

"2"
dfAnime$Type <- "Anime"
dfManga$Type <- "Manga"

"3"
dfConcat <- rbind(dfManga,dfAnime)
View(dfConcat)

"4"
write.table(x = dfConcat, file = ".../.../.../ExportTp1.csv",
            sep = ";",row.names = FALSE)

