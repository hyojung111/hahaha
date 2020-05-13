state.x77

#1
class(state.x77)
st <- data.frame(state.x77)
st

#2 st�� ������ ����Ͻÿ�.
head(st)
tail(st)

#3 st�� ���̸��� ����Ͻÿ�.
colnames(st)

#4 st�� �� �̸��� ����Ͻÿ�.
rownames(st)

#5 st�� ��� ������ ���� ������ ����Ͻÿ�.
nrow(st)
ncol(st)

#6  st�� ��� ������ ����Ͻÿ�.
str(st)

#7 st�� �ະ �հ�� ����� ����Ͻÿ�.
colSums(st)
colMeans(st)

rowSums(st)
rowMeans(st)

#8 st�� ���� �հ�� ����� ����Ͻÿ�.
colSums(st)
colMeans(st)

#9 Florida ���� ��� ������ ����Ͻÿ�.
st["Florida",]

#10 50�� ���� ����(Income) ������ ����Ͻÿ�.   #rownames(inc) <- names
income=st[,"Income"]
income
class(income)
inc <- data.frame(income)


names=rownames(st)
names


names(inc)
inc

rownames(inc) <- names
inc


#11 Texas ���� ����(Area)�� ����Ͻÿ�.
st["Texas","Area"]

#12 Ohio ���� �α�(Population)�� ����(Income)�� ����Ͻÿ�.
st["Ohio","Income"]

#13 �α��� 5,000 �̻��� ���� �����͸� ����Ͻÿ�.
pop1 <- subset(st, Population>=5000)

#14 ������ 4,500 �̻��� ���� �α�, ����, ������ ����Ͻÿ�.
st2=subset(st, Income>=4500)
st2
st2=st2[,c('Population','Income','Area')]
st2

st2=st2[,c(1&2&8)]
st2

#15 ������ 4,500 �̻��� �ִ� �� ������ ����Ͻÿ�.
in1=subset(st,Income>=4500)
nrow(in1)

#16 ��ü ����(Area)�� 100,000 �̻��̰�, 
#����ϼ�(Frost)�� 120 �̻��� ���� ������ ����Ͻÿ�.
cold=subset(st,Area>=100000 & Frost>=120)

#17 �α�(Population)�� 2,000 �̸��̰�, 
#������(Murder)�� 12 �̸��� ���� ������ ����Ͻÿ�.
sm=subset(st,Population<2000 & Murder<12)

#18 ���ͷ�(Illiteracy)�� 2.0 �̻��� ���� ��� ������ ������ ����Ͻÿ�.
ill=subset(st,Illiteracy>2.0)
cm=colMeans(ill)
cm[2]

colMeans(subset(st,Illiteracy>2.0))[2]


#19 ���ͷ�(Illiteracy)�� 2.0 �̸��� �ֿ� 
#2.0 �̻��� ���� ��� ������ ���̸� ����Ͻÿ�.
colMeans(subset(st,Illiteracy<2.0))[2]-colMeans(subset(st,Illiteracy>2.0))[2]


#20 ������(Life Exp)�� ���� ���� �ִ� ������� ����Ͻÿ�.
max(st[,"Life.Exp"])
ss=subset(st,Life.Exp==max(Life.Exp))
rownames(ss)
rownames(subset(st,Life.Exp==max(Life.Exp)))

#21 Pennsylvania �ֺ��� ����(Income)���� �ֵ��� ����Ͻÿ�.
penn=st["Pennsylvania","Income"]
penn
highpenn=subset(st,Income>penn)
highpenn
higher=rownames(highpenn)
higher


class(higher)
data.frame(higher)

















