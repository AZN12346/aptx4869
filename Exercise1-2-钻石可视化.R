library(ggplot2)
require(ggplot2)
data()
data(diamonds)
head(diamonds)
#散点图
plot(price~carat,data=diamonds)
plot(log(price)~log(carat),data=diamonds)
ggplot(diamonds,aes(x=carat,y=price))+geom_point()
#具有渲染效果的散点图
ggplot(diamonds,aes(x=carat,y=price))+geom_point(aes(color=color))
ggplot(diamonds,aes(x=carat,y=price))+geom_point(aes(color=color))+facet_grid(cut~clarity)
#从 ggthemes 提取华尔街日报的图表配色
#suibianlaidianba
library(ggthemes)
ggplot(diamonds,aes(x=carat,y=price))+geom_point(aes(color=color))+theme_wsj()

