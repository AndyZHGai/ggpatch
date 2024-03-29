% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/patch.R
\name{patch_annotation}
\alias{patch_annotation}
\title{A wrap function of plot_annotation of patchwork pkg}
\usage{
patch_annotation(tag_levels = "A", ...)
}
\arguments{
\item{tag_levels}{A character vector defining the enumeration format to use at each level. Possible values are 'a' for lowercase letters, 'A' for uppercase letters, '1' for numbers, 'i' for lowercase Roman numerals, and 'I' for uppercase Roman numerals. It can also be a list containing character vectors defining arbitrary tag sequences. If any element in the list is a scalar and one of 'a', 'A', '1', 'i, or 'I', this level will be expanded to the expected sequence.}

\item{...}{other param, such as title subtitle caption tag_prefix and tag_suffix}
}
\value{

}
\description{
A wrap function of plot_annotation of patchwork pkg
}
\examples{
library(ggplot2)
p1 <- ggplot(mtcars) + geom_point(aes(mpg, disp))
p2 <- ggplot(mtcars) + geom_boxplot(aes(gear, disp, group = gear))
p3 <- ggplot(mtcars) + geom_bar(aes(gear)) + facet_wrap(~cyl)
p1 + p2 + p3 + patch_annotation()
}
\author{
Zhonghui Gai
}
