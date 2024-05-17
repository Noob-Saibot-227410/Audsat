<!DOCTYPE html>
<html>
<body>
    <h1>Projeto Audsat</h1>
    <p>Este é o projeto Audsat, que inclui várias implementações de Kubernetes. O projeto foi projetado para ser executado em um ambiente Windows com o Kubernetes ativado através do Docker Desktop.</p>

<h2>Estrutura do Projeto</h2>
    <hr>
    <pre>
    Audsat
    |__ .github
    |__ deployments
    |   |__ app.yaml
    |   |__ postgres.yaml
    |__ network
    |   |__ network.yaml
    |__ services
    |   |__ load-balancer.yaml
    |__ observability
        |__ grafana-config.yaml
        |__ observability.yaml
        |__ prometheus-config.yaml
    </pre>

<h2>Implementações</h2>
    <ul>
        <li><strong>app.yaml:</strong> Implementação do aplicativo.</li>
        <li><strong>postgres.yaml:</strong> Implementação do banco de dados Postgres.</li>
        <li><strong>network.yaml:</strong> Configuração de rede para conectar os vários componentes.</li>
        <li><strong>load-balancer.yaml:</strong> Configuração do balanceador de carga para distribuir o tráfego entre várias instâncias do aplicativo.</li>
        <li><strong>observability.yaml:</strong> Configurações de observabilidade, incluindo Prometheus para monitoramento e Grafana para visualização.</li>
    </ul>

<h2>Como usar</h2>
    <p>Para usar este projeto, você precisa ter o Kubernetes instalado e configurado em sua máquina. Em seguida, você pode aplicar as configurações usando o comando:</p>
    <pre>kubectl apply -f all.yaml</pre>
    <p>Esse comando subirá todos os serviços definidos no arquivo `all.yaml`. Você pode verificar o status dos pods usando:</p>
    <pre>kubectl get pods</pre>
    <p>Se precisar deletar algum pod, utilize o comando:</p>
    <pre>kubectl delete pod <nome-do-pod></pre>

<h2>Padrões de Design</h2>
    <p>Este projeto segue vários padrões de design de software para garantir um código limpo e manutenível. Por exemplo, ele usa o padrão de design MVC (Model-View-Controller) para separar a lógica de negócios da interface do usuário.</p>

<h2>Ambiente</h2>
    <p>Este projeto foi projetado para ser executado em um ambiente Windows com o Kubernetes ativado através do Docker Desktop. Isso permite que você execute o projeto localmente para desenvolvimento e teste.</p>

</body>
</html>
