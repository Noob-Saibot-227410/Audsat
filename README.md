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

<h2>Tecnologias Utilizadas</h2>
<p>Este projeto utiliza várias tecnologias e ferramentas para fornecer uma solução robusta e eficiente. Aqui estão as principais tecnologias utilizadas:</p>
<ul>
<ul>
    <li><img src="https://cdn.icon-icons.com/icons2/2389/PNG/512/kubernetes_icon_144086.png" alt="Kubernetes" style="width:50px;height:50px;"> Kubernetes</li>
    <li><img src="https://cdn.icon-icons.com/icons2/2108/PNG/512/windows_icon_130754.png" alt="Windows" style="width:50px;height:50px;"> Windows</li>
    <li><img src="https://cdn.icon-icons.com/icons2/2699/PNG/512/docker_logo_icon_168974.png" alt="Docker" style="width:50px;height:50px;"> Docker</li>
    <li><img src="https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_vscode_icon_130084.png" alt="VSCode" style="width:50px;height:50px;"> VSCode</li>
    <li><img src="https://cdn.icon-icons.com/icons2/2415/PNG/512/postgresql_plain_wordmark_logo_icon_146390.png" alt="Postgres"> Postgres</li>
    <li><img src="https://cdn.icon-icons.com/icons2/2421/PNG/512/github_original_logo_icon_146506.png" alt="GitHub"> GitHub</li>
    <li><img src="https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_git_icon_130581.png" alt="Git"> Git</li>
    <li><img src="https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_yaml_icon_130664.png" alt="YAML"> YAML</li>
    <li><img src="https://cdn.icon-icons.com/icons2/2389/PNG/512/prometheus_icon_144044.png" alt="Prometheus"> Prometheus</li>
    <li><img src="https://cdn.icon-icons.com/icons2/2389/PNG/512/grafana_logo_icon_144095.png" alt="Grafana"> Grafana</li>
</ul>

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
<p>Para acessar os serviços, você pode usar as seguintes URLs no seu navegador local:</p>
<br>
<p>No seu browser assim que tudo estiver rodando:</p>
<br>
<p>Aplicação principal</p>
<pre>http://localhost</pre>
<p>Prometheus</p>
<pre>http://localhost:9090</pre>
<p>Grafana</p>
<pre>http://localhost:3000</pre>
<p>Postgres, lembrando que precisa do dbeaver</p>
<pre>Postgres: http://localhost:5432</pre>

<p>Para acessar o banco de dados Postgres, você precisará de um cliente de banco de dados, como o DBeaver. Você pode fazer o download do DBeaver a partir do site oficial. Após a instalação, você pode se conectar ao Postgres usando a URL acima e as credenciais fornecidas na configuração do seu banco de dados.</p>

<p>Note que o Prometheus e o Grafana são usados para monitoramento e visualização, respectivamente. Eles estão configurados para coletar métricas da sua aplicação e do banco de dados Postgres.</p>
<p>Este projeto é uma estrutura básica para uma aplicação Kubernetes. Ele não inclui a configuração específica do Grafana e do Prometheus. Você precisará adicionar suas próprias configurações de painel e alerta no Grafana, e suas próprias configurações de coleta de métricas no Prometheus, de acordo com as necessidades da sua aplicação.</p>
<p>Além disso, você pode escalar a aplicação para mais instâncias usando o comando:</p>
<pre>kubectl scale --replicas=3 deployment/app-deployment</pre>
<p>Este comando aumentará o número de réplicas da aplicação para 3. Você pode substituir '3' pelo número de réplicas que deseja.</p>
<p>Para verificar o status do balanceador de carga, você pode usar o comando:</p>
<pre>kubectl get svc load-balancer-service</pre>
<p>Este comando mostrará o status do serviço do balanceador de carga, incluindo o endereço IP externo.</p>

<h2>Padrões de Design</h2>
    <p>Este projeto segue vários padrões de design de software para garantir um código limpo e manutenível. Por exemplo, ele usa o padrão de design MVC (Model-View-Controller) para separar a lógica de negócios da interface do usuário.</p>

<h2>Ambiente</h2>
    <p>Este projeto foi projetado para ser executado em um ambiente Windows com o Kubernetes ativado através do Docker Desktop. Isso permite que você execute o projeto localmente para desenvolvimento e teste.</p>

</body>
</html>
