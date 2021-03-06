% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getCHIRPS.R
\name{getCHIRPS}
\alias{getCHIRPS}
\title{Download CHIRPS data}
\usage{
getCHIRPS(
  region = c("global", "whem", "africa", "camer-carib"),
  format = c("tifs", "netcdf", "bils", "pngs"),
  tres = c("6-hourly", "daily", "pentad", "dekad", "monthly"),
  sres = c(0.05, 0.25),
  begin = NULL,
  end = NULL,
  dsn = getwd(),
  overwrite = FALSE,
  cores = 1L,
  ...
)
}
\arguments{
\item{region}{'character'. Region of interest; one of 'global', 'whem'
(western hemisphere), 'africa' or 'camer-carib' (Central America and the
Caribbean). See the official CHIRPS README (available online at
\url{ftp://chg-ftpout.geog.ucsb.edu/pub/org/chg/products/CHIRPS-2.0/README-CHIRPS.txt})
for further information.}

\item{format}{'character'. Desired file format; one of 'tifs' (default),
'netcdf', 'bils' or 'pngs'.}

\item{tres}{'character'. Desired temporal resolution; one of '6-hourly'
(default), 'daily', 'pentad', 'dekad' or 'monthly'.}

\item{sres}{'numeric'. Desired spatial resolution; one of
\code{c(0.05, 0.25)}.}

\item{begin, end}{'date'. If not supplied, data download starts (stops) with
the first (last) record available.}

\item{dsn}{'character'. Destination folder for file download, defaults to the
current working directory.}

\item{overwrite}{Logical. If \code{TRUE}, already downloaded files in 'dsn'
will be overwritten.}

\item{cores}{'integer'. The number of cores used for parallel downloads.}

\item{...}{Further arguments passed to \code{\link{download.file}}.}
}
\value{
A \code{character} vector of file paths.
}
\description{
Download Climate Hazards Group InfraRed Precipitation with Station (CHIRPS)
data for a given time span from Climate Hazards Group's (CHG) FTP server
(\url{ftp://chg-ftpout.geog.ucsb.edu/pub/org/chg/products/CHIRPS-2.0/}).
}
\examples{
\dontrun{
## Download CHIRPS monthly data over Africa from 1982-1983
gzs <- getCHIRPS("africa", tres = "monthly"
                 , begin = as.Date("1982-01-01"), end = as.Date("1983-12-31")
                 , dsn = file.path(getwd(), "data"))
gzs[1:10]
}

}
\seealso{
\code{\link{download.file}}
}
\author{
Florian Detsch
}
