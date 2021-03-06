% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mf_legend.R
\name{mf_legend}
\alias{mf_legend}
\title{Plot a legend}
\usage{
mf_legend(
  type,
  pos,
  val,
  pal,
  col,
  inches,
  lwd,
  border,
  symbol,
  pt_pch,
  pt_cex,
  title,
  title_cex,
  val_cex,
  val_rnd,
  col_na,
  pt_cex_na,
  pt_pch_na,
  no_data,
  no_data_txt,
  frame,
  bg,
  fg,
  cex
)
}
\arguments{
\item{type}{type of legend; one of "prop", "choro", "typo", "symb",
"prop_line", "grad_line"}

\item{pos}{position. It can be one of 'topleft', 'top','topright', 'right', 'bottomright', 'bottom','bottomleft', 'left' or a vector of two coordinates in map units (c(x, y))}

\item{val}{a vector of values}

\item{pal}{a vector of colors}

\item{col}{a color}

\item{inches}{size of the biggest symbol (radius for circles, half width for squares) in inches.}

\item{lwd}{line width(s)}

\item{border}{border color}

\item{symbol}{type of symbols, 'circle' or 'square'}

\item{pt_pch}{pch of the symbols (0:25)}

\item{pt_cex}{cex of the symbols}

\item{title}{legend title}

\item{title_cex}{size of the legend title}

\item{val_cex}{size of the values in the legend}

\item{val_rnd}{number of decimal places of the values in the legend}

\item{col_na}{color for missing values}

\item{pt_cex_na}{cex of the symbols for missing values}

\item{pt_pch_na}{pch of the symbols for missing values}

\item{no_data}{if TRUE a 'missing values' box is plotted}

\item{no_data_txt}{label for missing values}

\item{frame}{whether to add a frame to the legend (TRUE) or not (FALSE)}

\item{bg}{background color}

\item{fg}{foreground color}

\item{cex}{size of the legend; 2 means two times bigger}
}
\value{
No return value, a legend is displayed.
}
\description{
Plot all types of legend.
The "type" argument defines the legend type:
\itemize{
\item \strong{prop}, for proportional symbols maps, see \link{mf_legend_p}
for arguments, default values and details;
\item \strong{choro}, for choropleth maps, see \link{mf_legend_c}
for arguments, default values and details;
\item \strong{typo}, for typology maps, see \link{mf_legend_t} for arguments,
default values and details;
\item \strong{symb} for symbols maps, see \link{mf_legend_s}
for arguments, default values and details;
\item \strong{prop_line}, for proportional lines maps, see \link{mf_legend_pl}
for arguments, default values and details;
\item \strong{grad_line} for graduated lines maps, see \link{mf_legend_gl},
for arguments, default values and details.
}
}
\examples{
mtq <- mf_get_mtq()
mf_map(mtq)
mf_legend(type = "prop", pos = "topright", val = c(1, 5, 10), inches = .3)
mf_legend(
  type = "choro", pos = "bottomright", val = c(10, 20, 30, 40, 50),
  pal = hcl.colors(4, "Reds 2")
)
mf_legend(
  type = "typo", pos = "topleft", val = c("A", "B", "C", "D"),
  pal = hcl.colors(4, "Dynamic")
)
mf_legend(
  type = "symb", pos = "bottomleft", val = c("A", "B", "C"),
  pt_pch = 21:23, pt_cex = c(1, 2, 2),
  pal = hcl.colors(3, "Dynamic")
)
mf_legend(
  type = "grad_line", pos = "top", val = c(1, 2, 3, 4, 10, 15),
  lwd = c(0.2, 2, 4, 5, 10)
)
mf_legend(type = "prop_line", pos = "bottom", lwd = 20, val = c(5, 50, 100))
}
