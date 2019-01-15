tab=read.table('/stor/work/Ochman/brian/examples/conExample3/_conspecifix/database/User_spec/distrib.txt',sep = "\t")
toto=kmeans(tab$V2,2)
png('/stor/work/Ochman/brian/examples/conExample3/_conspecifix/database/User_spec/distrib.png', width = 6,
  height    = 6,
  units     = "in",
  res       = 200)
hist(tab$V2,nclass=60,main="Frequency of ratios", xlab="h/m", ylab="Frequency")
abline(v=toto[2]$centers,col='red')
dev.off()
write(toto[1]$cluster,ncol=1,file='/stor/work/Ochman/brian/examples/conExample3/_conspecifix/database/User_spec/vector.txt')
write(toto[2]$centers,ncol=2,file='/stor/work/Ochman/brian/examples/conExample3/_conspecifix/database/User_spec/key.txt')
