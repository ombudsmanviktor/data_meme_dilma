
##### TODOS OS GRÁFICOS E TABELAS DO ARTIGO DILMA

library(ggplot2)
library(dplyr)
library(forcats)
library(hrbrthemes)
library(RColorBrewer)

# Geral
ggplot(Geral, aes(y=Total, x=X)) + 
  geom_bar(stat = "identity", fill = "red", alpha=.7, width=.9) +
  coord_flip() +
  scale_fill_brewer(palette = "Reds") +
  theme_ipsum() + 
  labs(title = "Gráfico 1: Alvos de ataques em memes", 
       subtitle = "N = 635",
       x = "Personagens representados nos memes",
       y = "Quantidade de memes circulados",
       caption = "Fonte: coLAB/UFF")

# Geral_Plataforma (dodge)
ggplot(stacked, aes(fill=Plataforma, y=N, x=Alvo)) + 
  geom_bar(position="dodge", stat = "identity", alpha=.8, width=.9) +
  coord_flip() +
  scale_fill_brewer(palette = "Reds") +
  theme_ipsum() + 
  labs(title = "Gráfico 3: Alvos de ataques em memes (por plataforma)", 
       subtitle = "N = 635",
       x = "Personagens representados nos memes",
       y = "Quantidade de memes circulados",
       caption = "Fonte: coLAB/UFF")

# Geral_Periodo (dodge)
ggplot(stacked_periodo, aes(fill=Período, y=N, x=Alvo)) + 
  geom_bar(position="dodge", stat = "identity", alpha=.8, width=.9) +
  coord_flip() +
  scale_fill_brewer(palette = "Reds") +
  theme_ipsum() + 
  labs(title = "Gráfico 2: Alvos de ataques em memes (por período analisado)", 
       subtitle = "N = 635",
       x = "Personagens representados nos memes",
       y = "Quantidade de memes circulados",
       caption = "Fonte: coLAB/UFF")

# Crítica (dodge)
ggplot(stacked_critica, aes(fill=Tipo, y=N, x=Alvo)) + 
  geom_bar(position="dodge", stat = "identity", alpha=.8, width=.9) +
  coord_flip() +
  scale_fill_brewer(palette = "Reds") +
  theme_ipsum() + 
  labs(title = "Gráfico 4: Tipos de ataques em memes", 
       subtitle = "N = 635",
       x = "Personagens representados nos memes",
       y = "Quantidade de memes circulados",
       caption = "Fonte: coLAB/UFF")

# Foco (dodge)
ggplot(stacked_foco, aes(fill=Foco, y=N, x=Alvo)) + 
  geom_bar(position="dodge", stat = "identity", alpha=.8, width=.9) +
  coord_flip() +
  scale_fill_brewer(palette = "Reds") +
  theme_ipsum() + 
  labs(title = "Gráfico 5: Foco dos ataques em memes", 
       subtitle = "N = 635",
       x = "Personagens representados nos memes",
       y = "Quantidade de memes circulados",
       caption = "Fonte: coLAB/UFF")

# Personalidade (dodge)
ggplot(stacked_personalidade, aes(fill=Personalidade, y=N, x=Alvo)) + 
  geom_bar(position="dodge", stat = "identity", alpha=.8, width=.9) +
  coord_flip() +
  scale_fill_brewer(palette = "Reds") +
  theme_ipsum() + 
  labs(title = "Gráfico 6: Enquadramentos de personalidade em memes", 
       subtitle = "N = 635",
       x = "Personagens representados nos memes",
       y = "Quantidade de memes circulados",
       caption = "Fonte: coLAB/UFF")

# Tabela 1
install.packages("ggpubr")
library(ggpubr)
# Add titles andd footnote
# :::::::::::::::::::::::::::::::::::::::::::::::::::
# Add titles and footnote
# Wrap subtitle into multiple lines using strwrap()
main.title <- paste0("Tabela 1: Alvos de ataques em memes")
subtitle <- paste0(
  "Resíduos padronizados"
) %>%
  strwrap(width = 80) %>%
  paste(collapse = "\n")

tab <- ggtexttable(head(residuos_alvo), theme = ttheme("light"))
#Células realçadas
tab <- table_cell_bg(tab, row = 2, column = 3, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 2, column = 4, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 2, column = 5, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 3, column = 3, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 3, column = 4, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 3, column = 5, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 4, column = 4, linewidth = 5,
                     fill="salmon", color = "salmon")
#Plot
tab %>%
  tab_add_title(text = subtitle, face = "plain", size = 10) %>%
  tab_add_title(text = main.title, face = "bold", padding = unit(0.1, "line")) %>%
  tab_add_footnote(text = "Fonte: coLAB/UFF", size = 10, face = "italic")

# Tabela 2
#install.packages("ggpubr")
#library(ggpubr)
# Add titles andd footnote
# :::::::::::::::::::::::::::::::::::::::::::::::::::
# Add titles and footnote
# Wrap subtitle into multiple lines using strwrap()
main.title <- paste0("Tabela 2: Tipos de ataques em memes")
subtitle <- paste0(
  "Resíduos padronizados"
) %>%
  strwrap(width = 80) %>%
  paste(collapse = "\n")

tab <- ggtexttable(head(residuos_critica), theme = ttheme("light"))
#Células realçadas
tab <- table_cell_bg(tab, row = 3, column = 4, linewidth = 5,
                     fill="salmon", color = "salmon")
#Plot
tab %>%
  tab_add_title(text = subtitle, face = "plain", size = 10) %>%
  tab_add_title(text = main.title, face = "bold", padding = unit(0.1, "line")) %>%
  tab_add_footnote(text = "Fonte: coLAB/UFF", size = 10, face = "italic")


# Tabela 3
#install.packages("ggpubr")
#library(ggpubr)
# Add titles andd footnote
# :::::::::::::::::::::::::::::::::::::::::::::::::::
# Add titles and footnote
# Wrap subtitle into multiple lines using strwrap()
main.title <- paste0("Tabela 3: Enquadramentos de personalidade em memes")
subtitle <- paste0(
  "Resíduos padronizados"
) %>%
  strwrap(width = 80) %>%
  paste(collapse = "\n")

tab <- ggtexttable(head(residuos_padronizados_personalidade), theme = ttheme("light"))
#Células realçadas
tab <- table_cell_bg(tab, row = 2, column = 6, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 2, column = 7, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 2, column = 8, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 3, column = 6, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 4, column = 6, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 5, column = 6, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 5, column = 7, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 5, column = 9, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 6, column = 6, linewidth = 5,
                     fill="salmon", color = "salmon")
#tab <- table_cell_bg(tab, row = 6, column = 8, linewidth = 5,
#                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 7, column = 3, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 7, column = 4, linewidth = 5,
                     fill="salmon", color = "salmon")
tab <- table_cell_bg(tab, row = 7, column = 8, linewidth = 5,
                     fill="salmon", color = "salmon")
#Plot
tab %>%
  tab_add_title(text = subtitle, face = "plain", size = 10) %>%
  tab_add_title(text = main.title, face = "bold", padding = unit(0.1, "line")) %>%
  tab_add_footnote(text = "Fonte: coLAB/UFF", size = 10, face = "italic")


#Anexo Imagens
# Plotar quatro imagens lado a lado com um único título
library(cowplot)
imagem1 <- ggdraw() +
  draw_image("./anexos/ok500.jpeg", scale = 0.9) +
  geom_text(
    data = data.frame(x = 0.5, y = 0.5, label = "Antipatia"),
    aes(x, y, label = label),
    hjust = 0.5, vjust = -7, angle = 0, size = 10/.pt,
    color = "tomato2",
    inherit.aes = FALSE
    )
imagem2 <- ggdraw() + 
  draw_image("./anexos/ok655.jpg", scale = 0.9) +
  geom_text(
    data = data.frame(x = 0.5, y = 0.5, label = "Desgosto, asco e abjeção"),
    aes(x, y, label = label),
    hjust = 0.5, vjust = -7, angle = 0, size = 10/.pt,
    color = "tomato2",
    inherit.aes = FALSE
  )
imagem3 <- ggdraw() + 
  draw_image("./anexos/ok140.jpeg", scale = 0.9) +
  geom_text(
    data = data.frame(x = 0.5, y = 0.5, label = "Destempero ou desequilíbrio"),
    aes(x, y, label = label),
    hjust = 0.5, vjust = -7, angle = 0, size = 10/.pt,
    color = "tomato2",
    inherit.aes = FALSE
  )
imagem4 <- ggdraw() + 
  draw_image("./anexos/ok589.jpg", scale = 0.9)  +
  geom_text(
    data = data.frame(x = 0.5, y = 0.5, label = "Estupidez ou inépcia"),
    aes(x, y, label = label),
    hjust = 0.5, vjust = -7, angle = 0, size = 10/.pt,
    color = "tomato2",
    inherit.aes = FALSE
  )
imagem5 <- ggdraw() + 
  draw_image("./anexos/ok748.jpg", scale = 0.9)  +
  geom_text(
    data = data.frame(x = 0.5, y = 0.5, label = "Manipulação, falsidade ou tirania"),
    aes(x, y, label = label),
    hjust = 0.5, vjust = -7, angle = 0, size = 10/.pt,
    color = "tomato2",
    inherit.aes = FALSE
  )
imagem6 <- ggdraw() + 
  draw_image("./anexos/ok059.jpeg", scale = 0.9)  +
  geom_text(
    data = data.frame(x = 0.5, y = 0.5, label = "Suspeição e desonestidade"),
    aes(x, y, label = label),
    hjust = 0.5, vjust = -7, angle = 0, size = 10/.pt,
    color = "tomato2",
    inherit.aes = FALSE
  )
imagem7 <- ggdraw() + 
  draw_image("./anexos/ok270.png", scale = 0.9)  +
  geom_text(
    data = data.frame(x = 0.5, y = 0.5, label = "Vacilação"),
    aes(x, y, label = label),
    hjust = 0.5, vjust = -7, angle = 0, size = 10/.pt,
    color = "tomato2",
    inherit.aes = FALSE
  )

# Criar lista para imagens a serem plotadas
plot_row <- plot_grid(imagem1, imagem2, imagem3, imagem4, imagem5, imagem6, imagem7, ncol = 2)

# Adicionar título
title <- ggdraw() +
  draw_label(
    "Quado 1: Exemplos de memes analisados",
    fontface = 'bold',
    x = 0,
    hjust = 0
  ) +
  theme_ipsum()

# Adicionar legenda
caption <- ggdraw() +  
  theme_ipsum() +
  labs(caption = "Fonte: coLAB/UFF")

# Plotar imagens com título e legenda
plot_grid(
  title, plot_row, caption,
  ncol = 1,
  # rel_heights values control vertical title margins
  rel_heights = c(0.1, 1)
)



