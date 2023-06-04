library(tm)
data(acq)

#PARAMETRIZACIJA
#
pod <- system.file("texts", "acq", package = "tm")
Pod <- VCorpus(DirSource(pod, mode = "binary"),readerControl = list(reader = readReut21578XMLasPlain))
Pod <- tm_map(Pod, stripWhitespace)
Pod <- tm_map(Pod, content_transformer(tolower))
Pod <- tm_map(Pod, removeWords, stopwords("english"))
Pod<- tm_map(Pod,PlainTextDocument)
Pod<-tm_map(Pod,removePunctuation )
Pod<-tm_map(Pod,removeNumbers)
Pod = tm_map(Pod, stemDocument)

#
#
#
dtmCorpus_small<-TermDocumentMatrix(Pod)
corpusMatrix_small<-as.matrix(removeSparseTerms(dtmCorpus_small, 0.99))
df<-data.frame(corpusMatrix_small)
names(df)[1:50] <- paste("Var", 1:50, sep="") 
pod_small<-as.matrix(df)
#
#
#
#
#
t_small<-pod_small
n_small<-ncol(pod_small)
x<-as.vector(rowSums(as.matrix(pod_small)>0))
idf<-x
m<-length(idf)
#

xi<-matrix(0,nrow=m,ncol=n_small)
for(j in 1:m){
  for(i in 1:n_small)
    xi[j,i]<-t_small[j,i]*log(n_small/idf[j])
}
X<-xi

#Dobili smo matricu koja je spremna za ubacivanje u algoritam; ili 