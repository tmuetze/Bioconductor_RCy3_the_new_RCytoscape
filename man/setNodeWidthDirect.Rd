\name{setNodeWidthDirect}
\alias{setNodeWidthDirect}
\alias{setNodeWidthDirect,CytoscapeWindowClass-method}
\title{setNodeWidthDirect}
\description{
In the specified CytoscapeWindow, set the width of the specified node(s).
Note that the node dimensions (width and width) must be unlocked for
this to work. If they are locked, then node and width change together,
as specified by a node size rule, or the setNodeSize method.
}
\usage{
setNodeWidthDirect(obj, node.names, new.widths)
}
\arguments{
  \item{obj}{a \code{CytoscapeWindowClass} object. }
  \item{node.names}{one or more \code{String} objects.}
  \item{new.widths}{one or more \code{integer} objects, in pixel units.}
}

\value{
None.
}
\author{Tanja Muetze, Georgi Kolishovski, Paul Shannon}

\seealso{
  setNodeWidthRule
  lockNodeDimensions
  setNodeSizeDirect
  setNodeHeightDirect
 }

\examples{
  \dontrun{
  # first, delete existing windows to save memory:
  deleteAllWindows(CytoscapeConnection())

  cw <- CytoscapeWindow ('setNodeWidthDirect.test', graph=makeSimpleGraph())
  displayGraph (cw)
  layoutNetwork (cw, 'force-directed')
  # lockNodeDimensions (cw, 'default', FALSE) # --> not required anymore.
  # setNodeWidthDirect does this for you.
  setNodeWidthDirect (cw, 'A', 32)
  setNodeWidthDirect (cw, getAllNodes(cw), 15)
  setNodeWidthDirect (cw, c('A', 'B'), c(30, 40))
}

}
\keyword{graph}
