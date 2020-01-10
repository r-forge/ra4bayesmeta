\name{M_j_sigc}
\alias{M_j_sigc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Optimization function for the SIGC(m) prior: Approximate Jeffreys' reference posterior
%%  ~~function to do ... ~~
}
\description{
  Numerically determines the parameter value \eqn{M=M_J} of the SIGC(\eqn{M}) prior,
such that the Hellinger distance between the marginal posteriors for the heterogeneity
standard deviation \eqn{\tau} induced by the SIGC(\eqn{M_J}) prior and Jeffreys' (improper) reference prior
is minimal.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
M_j_sigc(df, upper=3, digits=2, mu.mean=0, mu.sd=4)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{df}{
    data frame with one column "y" containing the (transformed) effect estimates for the individual studies and
    one column "sigma" containing the standard errors of these estimates.
%%     ~~Describe \code{x} here~~
}
\item{upper}{
   upper bound for parameter \eqn{M}. Real number in \eqn{(1,\infty)}.
%%     ~~Describe \code{x} here~~
}
\item{digits}{
   specifies the desired precision of the parameter value \eqn{M=M_J}, i.e. to how many digits this value
   should be determined. Possible values are 1,2,3. Defaults to 2.
%%     ~~Describe \code{x} here~~
}
\item{mu.mean}{
  mean of the normal prior for the effect mu.
}
\item{mu.sd}{
  standard deviation of the normal prior for the effect mu.
}
}
\details{
See Ott et al. (2020, Section 2.7) for details.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Parameter value \eqn{M=M_J} of the SIGC(M) prior. Real number > 1.
}
\references{
Ott, M., Plummer, M., Roos, M. How vague is vague? How informative is
informative? Reference analysis for
Bayesian meta-analysis. Manuscript submitted to \emph{Statistics in Medicine}. 2020.
}
\section{Warning }{
This function takes several minutes to run if the desired precision
is \code{digits=2} and even longer for higher precision.
}
\seealso{
\code{\link{m_j_sgc}}
}
\examples{
# for aurigular acupuncture (AA) data set
# warning: it takes ca. 2 min. to run this function
data(aa)
M_j_sigc(df=aa, digits=1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.