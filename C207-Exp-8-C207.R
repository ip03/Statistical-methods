r <- hist(sqrt(islands), breaks = c(4*0:5, 10*3:5, 70, 100, 140),
          col = "blue1")

data <- c(10, 35, 15, 25, 30, 20, 40, 45, 35)

cumulative_freq <- cumsum(table(data))

cumulative_perc <- cumulative_freq / sum(cumulative_freq) * 100


plot(c(0, data), c(0, cumulative_perc), type = "s", xlab = "Data", ylab = "Cumulative Percentage")
data <- c(10, 35, 15, 25, 30, 20, 40, 45, 35)

cumulative_freq <- cumsum(table(data))


cumulative_perc <- cumulative_freq / sum(cumulative_freq) * 100

df <- data.frame(data, cumulative_perc)


ggplot(df, aes(x = data, y = cumulative_perc, group = 1)) +
  geom_polygon(fill = "blue", alpha = 0.3) +
  geom_line(color = "blue") +
  xlab("Data") +
  ylab("Cumulative Percentage")
