                                  Usuários
                                     |
                           +-------------------+
                           |   Amazon Route 53  |
                           +-------------------+
                                     |
                           +-------------------+
                           |        ELB        |
                           +-------------------+
                                     |
                    +----------------+----------------+
                    |                |                |
+-------------------+    +--------------------+   +--------------------+
|  Amazon EKS       |    |    Amazon RDS      |   |    Observability   |
|   Cluster         |    |    (Postgres)      |   |   (Prometheus,     |
| +---------------+ |    | +---------------+  |   |    Grafana)        |
| |   Deployments | |    | | Postgres DB    |  |   | +---------------+ |
| | +-----------+ | |    | +---------------+  |   | | Prometheus     | |
| | | app.yaml   | | |    +-------------------+   | +---------------+ |
| | +-----------+ | |                             | +---------------+ |
| | +-----------+ | |                             | | Grafana        | |
| | | postgres.  | |                             | +---------------+ |
| | | yaml       | |                             +--------------------+
| +---------------+ |
+-------------------+
                                     |
                           +-------------------+
                           |  Amazon CloudWatch |
                           +-------------------+
                                     |
                           +-------------------+
                           |  Prometheus &      |
                           |    Grafana         |
                           +-------------------+


Descrição
Usuários: Representam os usuários finais ou clientes que acessam os serviços.
Amazon Route 53: Serviço de DNS para gerenciar nomes de domínio.
ELB (Elastic Load Balancer): Distribui o tráfego de entrada entre as instâncias de aplicação.
Amazon EKS (Elastic Kubernetes Service):
Deployments:
app.yaml: Definição da aplicação principal.
postgres.yaml: Definição do banco de dados Postgres.
Network Configuration:
network.yaml: Configuração da rede.
Load Balancer Configuration:
load-balancer.yaml: Configuração do balanceador de carga.
Observability:
observability.yaml: Configurações de observabilidade com Prometheus e Grafana.
Prometheus: Para monitoramento.
Grafana: Para visualização.
Amazon RDS (Relational Database Service):
Postgres: Banco de dados gerenciado.
Amazon CloudWatch: Monitoramento e logs.
Prometheus & Grafana: Serviços de monitoramento e visualização adicionais.
Ferramentas de Desenho
Para criar um diagrama como este, você pode usar ferramentas de diagramação como:

Lucidchart: Oferece uma biblioteca de ícones AWS integrada.
Draw.io (diagrams.net): Ferramenta gratuita que suporta ícones da AWS.
Microsoft Visio: Outra opção que pode ser utilizada com ícones personalizados.