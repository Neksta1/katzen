fit_histogram <- function (data)

# construct the data vectors using c()
xdata = data[,1]
ydata = data[,2]

# look at it
plot(xdata,ydata)

# some starting values
p1 = 1
p2 = 0.2
p3 =
p4 = 
p5 =
p6 =

# do the fit
fit = nls(ydata ~ P[0]*(2/P[1]*1/sqrt(2*!Pi)*exp(-((xdata-P[2])/P[1])^2/2)*1/2*(1+erf((P[3]*((xdata-P[2])/P[1]))/sqrt(2)))) $
                  + P[4]*(2/P[5]*1/sqrt(2*!Pi)*exp(-((xdata-P[6])/P[5])^2/2)*1/2*(1+erf((P[7]*((xdata-P[6])/P[5]))/sqrt(2)))), 
          start=list(p1=p1,p2=p2))

# summarise
summary(fit)

new = data.frame(xdata = seq(min(xdata),max(xdata),len=200))
lines(new$xdata,predict(fit,newdata=new))