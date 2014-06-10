con <- url("http://biostat.jhsph.edu/~jleek/contact.html ")
htmlCode <- readLines(con)
lines <- c(10,20,30,100)
result <- character()
for(i in lines) {
        result <- c(result, nchar(htmlCode[i], type="chars"))
}