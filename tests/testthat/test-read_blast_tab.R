test_that("read_blast_tab() reads in tabular data", {
  blast <- read_blast_tab(system.file("extdata", "blast.tab", package = "trutils"))
  expect_equal(object = ncol(blast), expected = 12)
})
