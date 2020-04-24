start_time<-Sys.time()
fun1<-function(n){return(lapply(1:n, function(i){return(mean(1:i))}))}
fun1(10000)
end_time<-Sys.time()
elapsed_time_lapply<-as.numeric(difftime(time1 = end_time,
                                  time2 = start_time,
                                  units = "secs"))
cat("elapsed time : ", sprintf("%.3f", elapsed_time_lapply), "sec", sep="")

start_time<-Sys.time()
fun2<-function(n){
  for(i in 1:n){
    print(mean(1:i))}}
fun2(10000)
end_time<-Sys.time()
elapsed_time_for<-as.numeric(difftime(time1 = end_time,
                                  time2 = start_time,
                                  units = "secs"))
cat("elapsed time : ", sprintf("%.3f", elapsed_time_for), "sec", sep="")
elapsed_time_lapply
elapsed_time_for
