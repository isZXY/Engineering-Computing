# poly2sum:多项式函数转化为系数
```
clc
clear
p=[2 1 4 5]; % 降幂排列
poly2sym(p)
```

## poly2sym()：系数转化为多项式函数

# 基本运算
## poly_add(),conv():相加，相乘
## deconv：多项式相除
```
clc
clear
[q,r] = deconv([2,1,4,5],[1,0,1])
```


## polyder：多项式微分
```
clc
clear
polyder([2,1,4,5])
```

## polyint ： 多项式积分
```
clc
clear
polyint([2,1,4,5])
```

# roots: 求根
```
p=[2 1 4 5];
r=roots(p)
```
# poly(r):由零点求系数
由零点求系数，是roots的逆运算，算出后差常系数


# 多项式插值的实现
## p=polyfit(x,y,n):多项式函数插值
- 多项式函数插值，x和y是需拟合的坐标 n为阶次
- 返回多项式插值的系数信息


## Y=polyval(P,X) 得到多项式插值函数
- P是系数，X是自变量，得到Y的信息
```
x=[1,2,6,10];
y=[3,2,8,9];
P=polyfit(x,y,3)

X=1:0.01:10;
Y=polyval(P,X);

plot(x,y,'ro',X,Y)
```

# Lagrange插值的实现
## 使用prod连乘（咋写？）

# 其他插值
## interp1 实现各类一维分段插值
` y= interp1(x,y,xx,'method')`
x:插值节点 y:节点函数值 xx：插值位置

方法：
- spline 
- v5cubic
- linear
- nearest
- pchip

## csapi(x,y) 三次样条插值
## fnplt(S)绘制插值结果

# yp=fnval(S,xp)绘制给点插值点的结果
yp 是xp上个点的插值结果
