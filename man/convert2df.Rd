% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert2df.R
\name{convert2df}
\alias{convert2df}
\title{Convert a Clarivate Analytics WoS, SCOPUS and COCHRANE Database Export files or RISmed PubMed/MedLine object into a data frame}
\usage{
convert2df(file, dbsource = "isi", format = "plaintext")
}
\arguments{
\item{file}{can be: a) a character array containing data read from a Clarivate Analytics WoS Export file (in plain text or bibtex format) or SCOPUS Export file (exclusively in bibtex format);
b) an object of the class \code{pubmed (package RISmed)} containing a collection obtained from a query performed with RISmed package.}

\item{dbsource}{is a character indicating the bibliographic database. \code{dbsource} can be \code{"isi"}, \code{"scopus"} or \code{pubmed}. Default is \code{dbsource = "isi"}.}

\item{format}{is a character indicating the format of the SCOPUS and Clarivate Analytics WoS export file. \code{format} can be \code{"bibtex"} or \code{"plaintext"}. Default is \code{format = "plaintext"}.}
}
\value{
a data frame with cases corresponding to articles and variables to Field Tags in the original export file.

data frame columns are named using the standard Clarivate Analytics WoS Field Tag codify. The main field tags are:

\tabular{lll}{
\code{AU}\tab   \tab Authors\cr
\code{TI}\tab   \tab Document Title\cr
\code{SO}\tab   \tab Publication Name (or Source)\cr
\code{JI}\tab   \tab ISO Source Abbreviation\cr
\code{DT}\tab   \tab Document Type\cr
\code{DE}\tab   \tab Authors' Keywords\cr
\code{ID}\tab   \tab Keywords associated by SCOPUS or WoS database \cr
\code{AB}\tab   \tab Abstract\cr
\code{C1}\tab   \tab Author Address\cr
\code{RP}\tab   \tab Reprint Address\cr
\code{CR}\tab   \tab Cited References\cr
\code{TC}\tab   \tab Times Cited\cr
\code{PY}\tab   \tab Year\cr
\code{SC}\tab   \tab Subject Category\cr
\code{UT}\tab   \tab Unique Article Identifier\cr
\code{DB}\tab   \tab Database\cr}

for a complete list of field tags see: \href{http://www.bibliometrix.org/documents/Field_Tags_bibliometrix.pdf}{Field Tags used in bibliometrix}
}
\description{
It converts a SCOPUS, Clarivate Analytics WoS and COCHRANE Database export files or RISmed PubMed/MedLine object into a data frame, with cases corresponding to articles and variables to Field Tags as used in WoS.
}
\details{
Actually the function allows to convert both SCOPUS/WoS files in bibtext format and just WoS files in plain text format.
}
\examples{
# An ISI or SCOPUS Export file can be read using \\code{\\link{readLines}} function:

# D <- readFiles('filename1.txt','filename2.txt','filename3.txt')

# filename1.txt, filename2.txt and filename3.txt are WoS or SCOPUS Export file 
# in plain text or bibtex format.

#  biblio <- readFiles('http://www.bibliometrix.org/datasets/bibliometrics_articles.txt')

data(biblio)

biblio_df_df <- convert2df(file = biblio, dbsource = "isi", format = "bibtex")

}
\seealso{
\code{\link{scopus2df}} for converting SCOPUS Export file (in bibtex format)

\code{\link{isibib2df}} for converting ISI Export file (in bibtex format)

\code{\link{isi2df}} for converting ISI Export file (in plain text format)

\code{\link{pubmed2df}} for converting an object of the class pubmed (RISmed package)

Other converting functions: \code{\link{cochrane2df}},
  \code{\link{isi2df}}, \code{\link{isibib2df}},
  \code{\link{pubmed2df}}, \code{\link{scopus2df}}
}
