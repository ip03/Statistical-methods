
dataset <- c(10, 35, 156, 25, 30, 200, 40, 45, 35)
mean = sum(dataset)/length(dataset)
mean
deviation <-c()
for (i in dataset) {
  t = i - mean
  deviation <- c(deviation, t)
}
deviation


deviation_2 = deviation^2
sec_mo = deviation_2/length(dataset)
sec_mo
print(paste("Second Moment: ", sum(sec_mo)))


deviation_3 = deviation^3
thr_mo = deviation_3/length(dataset)
thr_mo
print(paste("Third Moment: ", sum(thr_mo)))


deviation_4 = deviation^4
for_mo = deviation_4/length(dataset)
for_mo
print(paste("Fourth Moment: ", sum(for_mo)))


kurtosis <- sum(for_mo)/(sum(sec_mo))^2
print(paste("Manual Kurtosis: ", kurtosis))



if (kurtosis > 3){
  print('kurtosis > 3: Leptokurtic Distribution')
} else if (kurtosis == 3) {
  print('kurtosis = 3: Mesokurtic Distribution')
} else if (kurtosis < 3) {
  print('kurtosis < 3: Platykurtic Distribution')
}


library(moments)

cal_kur <- kurtosis(dataset)
print(paste("Calculated Kurtosis: ", cal_kur))
if (cal_kur > 3){
  print('kurtosis > 3: Leptokurtic Distribution')
} else if (cal_kur == 3) {
  print('kurtosis = 3: Mesokurtic Distribution')
} else if (cal_kur < 3) {
  print('kurtosis < 3: Platykurtic Distribution')
}
