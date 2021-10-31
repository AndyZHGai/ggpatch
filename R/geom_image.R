#' Make an image as ggplot2 background or change a bitmap to a ggplot2 object
#'
#' @param image raster object to display
#'
#' @return
#' @export
#'
#' @author Zhonghui Gai
#' @examples
#' image <- jpeg::readJPEG(source = "Einstein.JPG")
#' p <- ggplot() + geom_image(image = image)
#' p <- p + ggpatch:::theme_nothing()
#' library(patchwork)
#' p1 <- ggplot(mtcars) + geom_point(aes(mpg, disp))
#' p + patchwork::inset_element(p1, 0.6, 0.6, 1, 1)
#' p1 + inset_element(p, 0.6, 0.6, 1, 1)
#' p + p1
#' image2 <- jpeg::readJPEG(source = "GoldenGirls.JPG")
#' p2 <- ggplot() + geom_image(image = image2) + ggpatch:::theme_nothing()
#' p + p1/p2 + patch_annotation()

geom_image <- function (image){
  annotation_raster(image, xmin = -Inf, xmax = Inf, ymin = -Inf,
                    ymax = Inf)
}

theme_nothing <- function (){
  theme_void() %+replace%
    theme(plot.margin = unit(c(0, 0, -0.2, -0.2), "lines"))
}
