context("count")

invisible(connect())

test_that("count", {
  a <- count()
  b <- count(index = 'shakespeare')
  c <- count(index = 'shakespeare', q = "a*")
  d <- count(index = 'shakespeare', q = "z*")

  expect_is(a, "integer")
  expect_is(b, "integer")
  expect_is(c, "integer")
  expect_is(d, "integer")

  expect_equal(b, 5000)

  expect_error(count("adfadf"), "missing")
  expect_error(count(type = "adfad"), "missing")
})
