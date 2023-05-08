library(webexercises)

# NL vertaling torf functie
torf <- function(answer) {
	opts <- c("WAAR", "ONWAAR")
	if (answer)
		names(opts) <- c("answer", "")
	else
		names(opts) <- c("", "answer")
	mcq(opts)
}
