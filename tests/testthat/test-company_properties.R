vcr::use_cassette("hs_company_properties_raw", {
  test_that("hs_company_properties_raw works", {
    res <- hs_company_properties_raw()
    expect_is(res, "list")
  })
})

vcr::use_cassette("hs_company_properties_tidy", {
  test_that("hs_company_properties_tidy works", {
    res <- hs_company_properties_tidy(view = "names")
    expect_is(res, "character")
    expect_true(length(res) > 10)
  })
})
