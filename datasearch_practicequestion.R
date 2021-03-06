# 1)중량(wt)의 평균값, 중앙값, 절사평균값(절사범위: 15%), 표준편차를 각각 구하시오.
mtcars
wt=mtcars[,6]
wt
mean(wt)
median(wt)
mean(wt,trim=0.15)
quantile(wt)
var(wt)
sd(wt)

# 2) 중량(wt)에 대해 summary() 함수의 적용 결과를 출력하시오.
summary(wt)

# 3) 실린더수(cyl)에 대해 summary()함수의 적용 결과를 출력하시오.
cyl=mtcars[,2]
cyl
summary(cyl)

# 4) 앞에서 구한 도수분포표를 막대그래프로 출력하시오.
# cyl를 막대그래프로 출력하기
table(wt)
table <- table(cyl)
barplot(table,main='number of cyl',ylab='frequency',xlab='cyl',col='blue',border='black',las=1)

# 5) 중량(wt)의 히스토그램을 출력하시오.
hist(wt,main='weight',ylab='frequency',xlab='weight',col='blue',border='white')

#6) 중량(wt)에 대한 상자그림을 출력하시오.
#6) (단, 상자그림으로부터 관찰할 수 있는 정보를 함께 출력하시오.)
summary(wt)
boxplot(wt,main='weight')
quantile(wt)


#6-1) 두 개의 박스플롯 동시에 그리기 응용해보기
par(mfrow=c(1,2))
boxplot(wt,main='weight')
boxplot(cyl,main='cyl')


#7)배기량(disp)에 대한 상자그림을 출력하시오.
#7) (단, 상자그림으로부터 관찰할 수 있는 정보를 함께 출력하시오.)
disp=mtcars[,3]
disp
par(mfrow=c(1,1))
boxplot(disp,main='disp',col='blue',border='red')
quantile(disp)

#8)기어수(gear)를 그룹 정보로 하여 연비(mpg)자료에 대해 상자그림을 작성하고, 
#8)각 그룹의 상자그림을 비교하여 관찰할 수 있는 것이 무엇인지 나타내시오.
gear=mtcars[,mtcars$gear]
gear
mtcars
gear=mtcars[,10]
gear
boxplot(gear)
quantile(gear)









