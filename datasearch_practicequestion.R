# 1)�߷�(wt)�� ��հ�, �߾Ӱ�, ������հ�(�������: 15%), ǥ�������� ���� ���Ͻÿ�.
mtcars
wt=mtcars[,6]
wt
mean(wt)
median(wt)
mean(wt,trim=0.15)
quantile(wt)
var(wt)
sd(wt)

# 2) �߷�(wt)�� ���� summary() �Լ��� ���� ����� ����Ͻÿ�.
summary(wt)

# 3) �Ǹ�����(cyl)�� ���� summary()�Լ��� ���� ����� ����Ͻÿ�.
cyl=mtcars[,2]
cyl
summary(cyl)

# 4) �տ��� ���� ��������ǥ�� ����׷����� ����Ͻÿ�.
# cyl�� ����׷����� ����ϱ�
table(wt)
table <- table(cyl)
barplot(table,main='number of cyl',ylab='frequency',xlab='cyl',col='blue',border='black',las=1)

# 5) �߷�(wt)�� ������׷��� ����Ͻÿ�.
hist(wt,main='weight',ylab='frequency',xlab='weight',col='blue',border='white')

#6) �߷�(wt)�� ���� ���ڱ׸��� ����Ͻÿ�.
#6) (��, ���ڱ׸����κ��� ������ �� �ִ� ������ �Բ� ����Ͻÿ�.)
summary(wt)
boxplot(wt,main='weight')
quantile(wt)


#6-1) �� ���� �ڽ��÷� ���ÿ� �׸��� �����غ���
par(mfrow=c(1,2))
boxplot(wt,main='weight')
boxplot(cyl,main='cyl')


#7)��ⷮ(disp)�� ���� ���ڱ׸��� ����Ͻÿ�.
#7) (��, ���ڱ׸����κ��� ������ �� �ִ� ������ �Բ� ����Ͻÿ�.)
disp=mtcars[,3]
disp
par(mfrow=c(1,1))
boxplot(disp,main='disp',col='blue',border='red')
quantile(disp)

#8)����(gear)�� �׷� ������ �Ͽ� ����(mpg)�ڷῡ ���� ���ڱ׸��� �ۼ��ϰ�, 
#8)�� �׷��� ���ڱ׸��� ���Ͽ� ������ �� �ִ� ���� �������� ��Ÿ���ÿ�.
gear=mtcars[,mtcars$gear]
gear
mtcars
gear=mtcars[,10]
gear
boxplot(gear)
quantile(gear)








