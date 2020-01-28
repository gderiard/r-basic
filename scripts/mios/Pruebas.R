require(graphics)

## Annette Dobson (1990) "An Introduction to Generalized Linear Models".
## Page 9: Plant Weight Data.
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)
lm.D90 <- lm(weight ~ group - 1) # omitting intercept

anova(lm.D9)
summary(lm.D90)

opar <- par(mfrow = c(2,2), oma = c(0, 0, 1.1, 0))
plot(lm.D9, las = 1)      # Residuals, Fitted, ...
par(opar)

### less simple examples in "See Also" above

install.packages("magic" , dep = TRUE)
library(magic)
magic(10)

choose(30, 3)
10^3
log(1000,10)
log10(1000)

asin(0)  
acos(1)
acos(1) * 180 / pi

180 * pi / 180

miVar = pi*2
miVar2 <- pi*2
pi*2 -> miVar3

miVar3

var <- sqrt(16)
var
nombre="Giuseppe"
nombre

var=4
doble=function(arg){
  arg*2
  }
cuadrado=function(arg){arg^2}
doble(var)
cuadrado(var)

## lista de las variables presentes en el entonro
ls()
## elimina la variable pasada como argumento
rm(miVar3)
## elimina todas las variables presentes en el entorno
rm(list = ls())

suma1 <- function(arg){arg+1}

suma5 <- function(arg){
  num=suma1(arg);
  num=suma1(num);
  num=suma1(num);
  num=suma1(num);
  suma1(num);
}
suma5(7)

(4+5)^7
(4+2)^7

complex(0,0)

sqrt(1)
sqrt(2)
sqrt(4)
sqrt(16)
sqrt(as.complex(-1))
sqrt(-1i)
sqrt(as.complex(-2))
sqrt(as.complex(-4))
sqrt(as.complex(-16))

4+4i
(0+1i)*(0+1i)
(3+2i)*(4+3i)
(0+1i)+(0+1i)
(3+2i)+(4+3i)
(0+1i)/(0+1i)
(3+2i)/(4+3i)

pi+sqrt(2)i ## error
complex(real = pi, imaginary = sqrt(2))
complex(real = pi, imaginary = sqrt(2)) -> Z
Z
exp(1)
log(1)
round()
round(atan(50),3)
atan(50)
print(atan(50),3)
print(atan(50),digits = 3)
