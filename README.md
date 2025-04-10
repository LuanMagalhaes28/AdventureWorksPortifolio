# Análise AdventureWorks 2022
Utilizando o banco de dados AdventureWorks, empresa imaginária de fabricação e venda de bicicletas, iniciamos uma análise para entender a evolução das vendas ao longo do tempo. O objetivo inicial é fazer uma análise exploratória dos panoramas que influenciam nas vendas da AdventureWorks, analisando métricas de negócio, volume de produtos vendidos, logística por país e análise de características dos principais clientes.

Fazendo o download do arquivo AdventureWorksDW2022.bak e anexando-o no SQL Server, é possível executar cada consulta SQL utilizada nesta análise e obter os mesmos resultados apresentados.
<br><br>

## Evolução das Vendas – Month-over-Month (MoM)
<img align="right" width="550"  src="https://github.com/LuanMagalhaes28/AdventureWorksPortifolio/blob/main/Imagens/05%20Vendas%20MoM.png?raw=true">
Iniciamos o projeto entendendo cada objeto, tabela, campo, tipos de dados e relacionamentos do modelo de dados AdventureWorks. 
Esta análise mostra como as vendas evoluíram mês a mês, comparando o desempenho de um mês com o anterior. Para isso, utilizei as Windowns Functions (LAG) para calcular a variação absoluta e percentual entre os meses.<br> <br>
Alguns Insights extraídos: <br>
 <br>
- Jan/2012 apresentou uma queda de -26%, sugerindo possível sazonalidade após o aumento de fim de ano. <br>
- Em Jun/2012, as vendas subiram +55% em relação a maio, indicando uma possível campanha ou sazonalidade favorável. <br>
- Em Jul/2013, houve queda de -17%, talvez reflexo de sazonalidade ou efeito pós-promoção.
<br><br>
<a href="https://github.com/LuanMagalhaes28/AdventureWorksPortifolio/blob/main/SQL/05%20Vendas%20MoM.sql" target="_blank">Clique aqui</a> e acesse o script SQL no Github.



<br><br>



## Análise Vendas por Categoria de Produtos
<img align="left" width="550"  src="https://github.com/LuanMagalhaes28/AdventureWorksPortifolio/blob/main/Imagens/09%20Vendas%20por%20Categoria.png?raw=true">
Para realizarmos análise sobre as categorias de produtos, foi necessário agrupar os dados de vendas e custos por categoria de produto utilizando uma CTE. 
A CTE foi nomeada como LUCRO_PRODUTO, onde consolidamos o total de vendas (SalesAmount) e o custo total (TotalProductCost) por categoria. 
A partir disso, foi possível calcular a margem de lucro em valor absoluto e percentual, permitindo identificar quais categorias geram maior retorno financeiro para o negócio.
Essa estrutura facilita a análise de lucratividade e pode ser adaptada para detalhamentos mais profundos, como por subcategoria ou produto individual..<br><br>
Após analisar os reultados, podemos chegar as seguintes conclusões: <br><br>
- Bikes geram o maior faturamento, mas com margem menor (40,6%), exigindo controle de custos.<br>
- Accessories têm a maior margem (62,6%), sendo altamente rentáveis mesmo com menor volume de vendas.<br>
- Clothing tem performance equilibrada, com boa margem (40,1%) e potencial de crescimento.<br>
- Estratégias diferentes por categoria podem otimizar resultados: foco em volume para Bikes e rentabilidade para Accessories.<br>
<br>
<a href="https://github.com/LuanMagalhaes28/AdventureWorksPortifolio/blob/main/SQL/09%20Vendas%20por%20Categoria.sql" target="_blank">Clique aqui</a> e acesse o script SQL no Github.



<br><br>



## Análise Perfil do Cliente
<img align="right" width="350" src="https://github.com/LuanMagalhaes28/AdventureWorksPortifolio/blob/main/Imagens/10%20An%C3%A1lise%20Clientes.png?raw=true">
Analisando o perfil dos clientes, foi necessário agrupar as informações de compra por faixa de renda, gênero e escolaridade, a fim de entender o comportamento de consumo com base em características demográficas. Para isso, utilizei duas CTEs, uma para classificar os clientes por perfil (faixa de renda, gênero e escolaridade)
e outra para calcular o valor total comprado por cliente. Com os dados cruzados, foi possível concluir que:
<br><br>
- Clientes de renda média (30K-70K) concentram o maior volume de compras, sendo o público com maior impacto no faturamento.<br>
- Mulheres com nível superior completo (Bachelors) são o grupo que mais consome, superando inclusive os homens na mesma faixa.<br>
- A renda alta (>70K) não apresentou o maior volume de compras, indicando que poder aquisitivo não é o único fator decisivo.<br>
- Clientes de baixa renda (<30K) contribuíram com a menor parte do total comprado, mesmo com uma base significativa.<br>
- A escolaridade mostrou ser um forte indicativo de consumo, com destaque para quem possui ensino superior ou graduação. <br>
<br>
<a href="https://github.com/LuanMagalhaes28/AdventureWorksPortifolio/blob/main/Imagens/10%20An%C3%A1lise%20Clientes.png?raw=true" target="_blank">Clique aqui</a> e acesse o script SQL no Github.

<br><br>

## Conclusão técnica SQL
Os três últimos códigos demonstram como o SQL é eficiente para analisar diretamente a base de dados, extraindo insights sobre vendas ao longo do tempo, perfil dos clientes e lucratividade por categoria.
Com CTEs e funções de janela, conseguimos fazer análises rápidas e precisas. No entanto, o SQL não oferece recursos visuais dinâmicos, exigindo reescrita dos comandos a cada nova necessidade.<br>
Por isso, o SQL deve ser o primeiro passo na análise de dados, sendo essencial para validar informações antes de utilizar ferramentas como o Power BI. Cada ferramenta tem seu valor, e a escolha deve ser feita conforme a necessidade do projeto.<br>
<br>
<a href="https://github.com/LuanMagalhaes28/AdventureWorksPortifolio/tree/main/SQL" target="_blank">Clique aqui</a> e acesse todo o projeto SQL no Github.

<br><br>
