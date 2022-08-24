#' @export
read_survey <- function(file) {
    df <- read.csv(file)
    read.csv(unz(file, 'data.csv'), header = T)
    read.csv(unz(file, 'weights.csv'), header = T)
    read.csv(unz(file, 'codebook.csv'), header = T)
    df
}