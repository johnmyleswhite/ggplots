correlation.matrix <- function(df, method = 'spearman', scale = TRUE, colors = NULL)
{
  correlation.matrix <- cor(df,
                            use = 'pairwise.complete.obs',
                            method = method)
  
  melted.correlation.matrix <- melt(correlation.matrix)
  
  if (scale)
  {
    melted.correlation.matrix.scaled <- transform(melted.correlation.matrix,
                                                  value = scale(abs(value)))
  }
  else
  {
    melted.correlation.matrix.scaled <- melted.correlation.matrix
  }
  
  p <- ggplot(melted.correlation.matrix.scaled,
              aes(x = X2, y = X1, fill = value)) +
         geom_tile(color = 'black') +
         theme_bw() +
         xlab('') +
         ylab('') +
         opts(legend.position = 'none') +
         scale_fill_gradient(low = "white", high = "steelblue") +
         scale_x_discrete(expand = c(0, 0)) +
         scale_y_discrete(expand = c(0, 0)) +
         opts(axis.ticks = theme_blank()) +
         opts(axis.text.x = theme_text(hjust = 0, angle = -90))
  
  return(p)
}

