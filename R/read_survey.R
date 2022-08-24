#' @export
read_survey <- function(file) {
    df_data <- read.csv(unz(file, 'data.csv'), header = T)
    df_weights <- read.csv(unz(file, 'weights.csv'), header = T)
    df_codebook <- read.csv(unz(file, 'codebook.csv'), header = T)
    df <- dplyr::left_join(df_data, df_weights, by="Human")
    df
}