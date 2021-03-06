% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deals-deprecated.R
\name{deal_stages_history}
\alias{deal_stages_history}
\title{Retrieve the version history of deal stages}
\usage{
deal_stages_history(
  deals = hs_deals_raw(properties = "dealstage", property_history = "true", associations
    = "false")
)
}
\arguments{
\item{deals}{A deals list object, typically produced by running \code{hs_deals_raw}}
}
\value{
A tbl containing all stages a deal has gone through
}
\description{
Soon deprecated! Use \code{hs_deals_tidy(deals, view = "properties")}
}
