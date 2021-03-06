% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/company_properties.R
\name{hs_company_properties_raw}
\alias{hs_company_properties_raw}
\alias{hs_company_properties_tidy}
\title{Company properties endpoint (raw and tidy)}
\usage{
hs_company_properties_raw(
  token_path = hubspot_token_get(),
  apikey = hubspot_key_get()
)

hs_company_properties_tidy(
  company_properties = hs_company_properties_raw(),
  view = "names"
)
}
\arguments{
\item{token_path}{Path to OAuth 2.0 token.
See \code{\link[=hubspot_token_create]{hubspot_token_create()}}.}

\item{apikey}{API key to work with Hubspot (only used if \code{token_path}
is \code{NULL}). See \code{\link[=hubspot_key_set]{hubspot_key_set()}}.}

\item{company_properties}{Company properties as returned by \code{hs_company_properties_raw()}}

\item{view}{A view (see Details)}
}
\value{
List of company properties (\code{hs_company_properties_raw()})

Something tidy (\code{hs_company_properties_tidy()})
}
\description{
Retrieve raw and tidy results from \href{https://developers.hubspot.com/docs/methods/companies/get_company_properties}{the company properties endpoint}.
}
\details{
Required scope(s) of the OAuth token: contacts.

Different \code{view} values and associated output.
\itemize{
\item "names": A character vector of the names of available company properties.
}
}
\examples{
properties <- hs_company_properties_raw()
property_names <- hs_company_properties_tidy(properties, view = "names")
}
