###### Field data import function dev

#Date convention: "mm.dd.YY

#Script

import=function(){
readline("Hit ENTER and select field download folder")
setwd(choose.dir())
print(paste("Current download folder:",getwd()))
#Select upload folder
upload="S:\\CNR\\Labs-Hudiburg\\TEMP_JEFF"
download.folder=getwd()
download.dir=list.dirs(recursive=F)
upload.dirs=list.dirs(upload,recursive=F)
upload.date=gsub("-",".",Sys.Date())
if(length(grep("TH",download.dir))==1){
  ###would the new directory creation overwrite something w/ same name?!
  new.TH.dir=paste0(upload,"\\TH","\\",upload.date)
  dir.create(new.TH.dir)
  TH.files=list.files("./TH",full.names=T)
  file.copy(TH.files,new.TH.dir,overwrite=F)
}
if(length(grep("FD",download.dir))==1){
  new.FD.dir=paste0(upload,"\\FD","\\",upload.date)
  dir.create(new.FD.dir)
  FD.files=list.files("./FD",full.names=T)
  file.copy(FD.files,new.FD.dir)
}
##Add in whatever other equipment data will be used
}

import() 
  
