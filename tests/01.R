library('ggplots')
library('testthat')

df <- data.frame(a = c(1, 2, 3, 4, 5),
                 b = c(2, 3, 4, 4, 3),
                 c = c(5, 3, 4, 1, 1),
                 d = c(1, 2, 4, 3, 1))

p <- correlation.matrix(df)

expect_that(p, is_a('ggplot'))
