% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/camt.cor.func.R
\name{camt.fwer.rejection}
\alias{camt.fwer.rejection}
\title{Return the rejected hypotheses at a given significance level.}
\usage{
camt.fwer.rejection(camt.fwer.obj, alpha = 0.1)
}
\arguments{
\item{camt.fwer.obj}{the output from running \code{'camt.fwer'}.}

\item{alpha}{a numeric value for the desired signficance level.}
}
\value{
A vector containing the indices of the rejected hypotheses.
}
\description{
The function outputs the indices of the rejected hypotheses at a specified signficance level.
}
\examples{

data <- simulate.data(feature.no = 10000, covariate.strength = 'Moderate', covariate.model = 'pi0',
	sig.density = 'Medium', sig.strength = 'L4', cor.struct = 'None')
camt.obj.fwer <- camt.fwer(pvals = data$pvals, pi0.var = data$pi0.var)
camt.fwer.rejection(camt.obj.fwer, alpha = 0.1)

}
\references{
Huijuan Zhou, Xianyang Zhang, Jun Chen. Covariate Adaptive Family-wise Error Control with Applications to Genome-wide Association Studies. Submitted.
}
\author{
Huijuan Zhou
}
\keyword{FWER,}
\keyword{multiple}
\keyword{testing}
