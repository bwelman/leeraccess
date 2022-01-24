library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)

# example-dsd1
dsd1 <- grViz(diagram = "digraph dsd1 {
  graph [rankdir=LR, bgcolor=transparent]
  node [shape = rectangle, fontname = Helvetica]
  KLANT
  FACTUUR
  FACTUURREGEL
  ARTIKEL
  KLANT->FACTUUR[arrowhead = crow]
  FACTUUR->FACTUURREGEL[arrowhead = crow]
  FACTUURREGEL->ARTIKEL[arrowtail = crow, dir=back]
}", height = 50)

dsd1 %>%
	export_svg() %>%
	charToRaw() %>%
	rsvg_png("images/normalization/example-dsd1.png")

# example-dsd2
dsd2 <- grViz(diagram = "digraph dsd2 {
  graph [rankdir=LR, bgcolor=transparent]
  node [shape = rectangle, fontname = Helvetica]
  KLANT
  FACTUUR
  FACTUURREGEL
  ARTIKEL
  KLANT->FACTUUR[arrowhead = crow, label='Klantnaam']
  FACTUUR->FACTUURREGEL[arrowhead = crow, label='Factuurnr']
  FACTUURREGEL->ARTIKEL[arrowtail = crow, dir=back, label='Artikelnr']
}", height = 50)

dsd2 %>%
	export_svg() %>%
	charToRaw() %>%
	rsvg_png("images/normalization/example-dsd2.png")

# animal-clinic-dsd
dsd3 <- grViz(diagram = "digraph case {
  graph [rankdir=LR, bgcolor=transparent]
  node [shape = rectangle, fontname = Helvetica]
  1[label='DIER']
  2[label = 'BEZOEK']
  3[label = 'BEHANDELING']
  1->2[arrowhead = crow, label='diernr']
  2->3[arrowtail = crow, dir=back, label='behandelnr']
}", height = 50)

dsd3 %>%
	export_svg() %>%
	charToRaw() %>%
	rsvg_png("images/normalization/animal-clinic-dsd.png")
