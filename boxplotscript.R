names(median.table) <- c("Katze.No", "Name", "Messung", "ADC","D_slow",
                         "D_fast", "f", "Pf",
                         "D_kurtosis", "Kurtosis")
png("./graphs/boxplotADC.png", width = 20, height = 20, units = "cm", res = 600)
       ggplot(median.table, aes(factor(Messung), median.table[, 4])) +
                scale_shape_identity() +
                geom_boxplot(aes(fcolour = I("#3366FF"))) +
                geom_point(aes(color = factor(Name), shape = as.numeric(Name)), size = 4) +
                geom_line(aes(group = factor(Name), color = factor(Name)), alpha = 0.5) +
                ylab("ADC [mm²/10³s]") + 
                xlab("Measurement") +
                ggtitle("Median ADC") +
                #theme(legend.position="none") +
                theme(panel.background = element_rect(fill = "#CCCCCC", color = "#333333"),
                      legend.title=element_blank()) +
                guides(colour = guide_legend(override.aes = list(shape= 1:length(unique(median.table[,2])))))
dev.off()

png("./graphs/boxplotADC_nolines.png", width = 20, height = 20, units = "cm", res = 600)
ggplot(median.table, aes(factor(Messung), median.table[, 4])) +
        scale_shape_identity() +
        geom_boxplot(aes(fcolour = I("#3366FF"))) +
        geom_point(aes(color = factor(Name), shape = as.numeric(Name)), size = 4) +
        ylab("ADC [mm²/10³s]") + 
        xlab("Measurement") +
        ggtitle("Median ADC") +
        #theme(legend.position="none") +
        theme(panel.background = element_rect(fill = "#CCCCCC", color = "#333333"),
              legend.title=element_blank()) +
        guides(colour = guide_legend(override.aes = list(shape= 1:length(unique(median.table[,2])))))                      
dev.off()

png("./graphs/boxplotADC_nolines_nopoints.png", width = 20, height = 20, units = "cm", res = 600)
ggplot(median.table, aes(factor(Messung), median.table[, 4])) +
        scale_shape_identity() +
        geom_boxplot(aes(fcolour = I("#3366FF"))) +
        ylab("ADC [mm²/10³s]") + 
        xlab("Measurement") +
        ggtitle("Median ADC") +
        #theme(legend.position="none") +
        theme(panel.background = element_rect(fill = "#CCCCCC", color = "#333333"),
              legend.title=element_blank()) +
        guides(colour = guide_legend(override.aes = list(shape= 1:length(unique(median.table[,2])))))                      
dev.off()