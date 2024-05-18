# Dashboard de Observabilidade de Infraestrutura Cloud

## Listagem de Recursos e Utilização deles
Este painel exibirá uma lista de todos os recursos em uso, como pods, serviços, volumes persistentes, etc., juntamente com a utilização atual desses recursos. Isso pode incluir a quantidade de CPU e memória usada, o número de réplicas em execução para cada serviço, o espaço usado por cada volume persistente, etc.

## Painel de Alerta
Este painel exibirá todos os alertas atuais. Isso pode incluir alertas sobre recursos que estão quase atingindo sua capacidade, serviços que estão inativos, falhas de rede, etc. Cada alerta terá um indicador de severidade e uma descrição do problema.

## Filtros
Os filtros permitem que você refine os dados exibidos nos painéis. Por exemplo, você pode querer ver apenas os recursos que estão usando mais de 80% de sua capacidade, ou apenas os serviços que estão atualmente inativos. Os filtros podem ser aplicados a qualquer um dos painéis.

# Considerações de Design e Performance
Ao projetar este dashboard, a principal consideração foi garantir que ele forneça uma visão clara e compreensível do estado atual da infraestrutura. Isso significa evitar a sobrecarga de informações e garantir que os dados mais importantes sejam facilmente visíveis.

Em termos de performance, o dashboard é projetado para ser leve e responsivo. Ele usa consultas eficientes para buscar os dados e atualiza os painéis em intervalos regulares para garantir que as informações estejam sempre atualizadas.