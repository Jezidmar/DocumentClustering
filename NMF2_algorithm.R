#Ovo je druga verzija NMF algoritma
#

NNMF_b<-function(L,k){
  U<-matrix(0,nrow=dim(L)[1],ncol=k) #definiramo pocetne matrice U i V
  V<-t(matrix(0,nrow=k,ncol=dim(L)[2]))
  for(i in 1:k){ #simuliramo
    U[,i]<-rnorm(dim(L)[1])
    V[,i]<-rnorm(dim(L)[2])  #n je broj artikala
  }
  U<-abs(U) #napravimo ih da su nenegativne
  V<-abs(V)
  #algoritam slozenosti O(t*k*n)
  eps=0.01
  U_l<-U
  V_l<-V
  L=L+0.001    #dodamo neki fiksan član na svaki izraz da se rješimo nula.
  while(1){
    U<-U_l
    V<-V_l
    if(length(which( (U %*% t(V) %*% V)==0))>0){  #ako algoritam ne konvergira vrati 0
      return (0)
    }
    U<-U * (L %*% V)/(U %*% t(V) %*% V)
    V<-V * ((t(L) %*% U)/(V %*% t(U) %*% U))
    if( norm(U-U_l)<eps & norm(V-V_l)<eps ){break}
    U_l<-U
    V_l<-V

  }
  #normaliziramo U i V
  for(t in 1:10){
    U<-U/sqrt(sum(U*U))
    V<-V/sqrt(sum(U*U))
  }
  klas<-numeric(dim(L)[2])
  z<-apply(t(V),2,max) #koristimo apply funkciju da pronađemo maksimume svakoga stupca.
  for(i in 1:dim(L)[2]){
    klas[i]<-which(V[i,]==z[i])
  }
  return (klas)
}
hist(NNMF_b(X,20) )
