Mutual_info<-function(x,y){
  l<-length(unique(x)) #pogledaj koliko klastera ima
  ai<-numeric(l)
  bj<-numeric(l)
  cont<-table(x,y)
  #for petlja ide do k-broja klastera.
  for(i in 1:l){
    ai[i]<-sum(cont[i,])
    bj[i]<-sum(cont[,i])
  }
  N<-sum(ai)
  H_a<--sum( (ai/N) * log2(ai/N))
  H_b<--sum(   (bj/N)* log2(bj/N))
  MI<-0
  for(i in 1:l){
    for(j in 1:l){
      if(cont[i,j]!=0){#0*log(0):=0
        MI<-MI+(cont[i,j]/N)*log2( (cont[i,j]*N)/(ai[i]*bj[j])       )
      }
    }
  }
  return(MI/max(H_a,H_b))
}