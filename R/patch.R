#' A wrap function of plot_annotation of patchwork pkg
#'
#' @param tag_levels A character vector defining the enumeration format to use at each level. Possible values are 'a' for lowercase letters, 'A' for uppercase letters, '1' for numbers, 'i' for lowercase Roman numerals, and 'I' for uppercase Roman numerals. It can also be a list containing character vectors defining arbitrary tag sequences. If any element in the list is a scalar and one of 'a', 'A', '1', 'i, or 'I', this level will be expanded to the expected sequence.
#' @param ... other param, such as title subtitle caption tag_prefix and tag_suffix
#'
#' @return
#' @export
#'
#' @author Zhonghui Gai
#' @examples
#' library(ggplot2)
#' p1 <- ggplot(mtcars) + geom_point(aes(mpg, disp))
#' p2 <- ggplot(mtcars) + geom_boxplot(aes(gear, disp, group = gear))
#' p3 <- ggplot(mtcars) + geom_bar(aes(gear)) + facet_wrap(~cyl)
#' p1 + p2 + p3 + patch_annotation()
patch_annotation <- function(tag_levels = "A", ...){
  patchwork::plot_annotation(tag_levels = tag_levels, ...)
}

#' A wrap function of plot_layout function of patchwork pkg to  control how different plots are layed out
#'
#' @param widths The relative widths and heights of each column and row in the grid. Will get repeated to match the dimensions of the grid.
#' @param ... other para of plot_layout function
#'
#' @return
#' @export
#'
#' @author Zhonghui Gai
#' @examples
#' library(ggplot2)
#' p1 <- ggplot(mtcars) + geom_point(aes(mpg, disp))
#' p2 <- ggplot(mtcars) + geom_boxplot(aes(gear, disp, group = gear))
#' p3 <- ggplot(mtcars) + geom_bar(aes(gear)) + facet_wrap(~cyl)
#' p1 + p2 + p3 + patch_annotation() + patch_layout()
#' library(patchwork)
#' (p1 | p2 | p3) + patch_annotation() + patch_layout(ncol = 3)
#' (p1 + patch_tag()| p2 | p3) + patch_annotation() + patch_layout(ncol = 3)
#' (p1 + patch_tag())/ p2 / p3 + patch_annotation() + patch_layout()
#' (p1 + patch_tag()) + p2 / p3 + patch_annotation() + patch_layout()
#' ((p1 + patch_tag()) + p2) / p3 + patch_annotation() + patch_layout()
#' p1 + p2 + p3 + patch_annotation() + patch_layout(ncol = 3, widths = c(1,2,3))
#' (p1 + p2 + p3+ patch_layout( widths = c(1,2,3)))/p3 + patch_annotation()
#' (p1 + p2 + p3+ patch_layout( widths = c(1,2,3)))/p3 + patch_annotation() +
#' patch_layout(heights = c(1,2))
patch_layout <- function(widths = c(5,5), ...){
  patchwork::plot_layout(widths = widths, ...)
}

#' Format the tag test of Figures, using with patchwork usually
#'
#' @param vjust adjust the y_position of the tags
#'
#' @return
#' @export
#'
#' @author Zhonghui Gai
#' @examples
#' library(ggplot2)
#' ggplot(mtcars) + geom_point(aes(mpg, disp)) + patch_tag()
patch_tag <- function(vjust = -1){
  theme(plot.tag = element_text(size = 25, face = "bold", family = "serif",
                                vjust = vjust, hjust = 0))
}
