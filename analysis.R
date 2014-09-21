
load(url("http://bit.ly/dasi_gss_data"))
gss<-gss[,c("year","polviews","natenvir")]
gss<-gss[complete.cases(gss),]

png("rough_draft.png")
mosaicplot(polviews~natenvir,gss,main="Political Outlook versus Opinion on Environmental Spending",xlab="Political Outlook", ylab="Opinion on Environmental Spending")
dev.off()

plot(gss$polviews, gss$natenvir,main="Political Outlook versus Opinion on Environmental Spending",xlab="Political Outlook", ylab="Opinion on Environmental Spending")

