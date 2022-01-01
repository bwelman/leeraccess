#set.seed(25)
options(digits = 3)

# packages ---------------------------------------------------------------------

suppressMessages(library(knitr))
suppressMessages(library(tidyverse))
suppressMessages(library(kableExtra))
suppressMessages(library(patchwork))
suppressMessages(library(scales))
suppressMessages(library(DiagrammeR))
suppressMessages(library(readxl))

# knitr chunk options ----------------------------------------------------------

knitr::opts_chunk$set(
	echo = FALSE,          # nodig voor rmd block2 chunks in latex
	message = FALSE,
	warning = FALSE,
	#cache = TRUE,
	comment = "#>",
	collapse = TRUE,
	fig.retina = 2,       # Control gebruik dpi
	fig.width = 6,
	fig.pos = "ht",       # positie figuur latex mode
	fig.align = 'center',
	fig.asp = 0.618,      # gulden snede verhouding
	fig.show = "hold",
	out.width = "100%",
	dev = "svg",
	dev.args = list(png = list(type = "cairo-png"))
)

# knit options -----------------------------------------------------------------

options(knitr.kable.NA = "")

# kableExtra options -----------------------------------------------------------

options(kableExtra.html.bsTable = TRUE)

# ggplot2 options

theme_set(theme_bw())

# NL vertaling torf functie uit package webexercises
torf_nl <- function(answer) {
	opts <- c("WAAR", "ONWAAR")
	if (answer)
		names(opts) <- c("answer", "")
	else
		names(opts) <- c("", "answer")
	mcq(opts)
}

