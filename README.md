# TICK Stack + Grafana (Real-Time Monitoring)

Recorrendo à plataforma Influxdata e à ferramenta para visualização de dados Grafana, pretende-se,
com o presente projeto, implementar uma plataforma de monitorização de sistemas e dispositivos de rede, de forma a obter informações relativas ao seu estado de funcionamento, com o intuito de prevenir e solucionar problemas que ocorram na infraestrutura de rede.

## Getting Started

O conjunto de instruções que se seguem prevêm a instalação e configuração automática, recorrendo à ferramenta Ansible, de toda a plataforma de monitorização (TICK Stack (Telegraf, InfluxDB, Chronograf, Kapacitor) + Grafana), execuntando as diferentes instâncias da plataforma em containers Docker.

### Pré-Requisitos

- Para o correto funcionameto e instalação dos diferentes componentes, existe um conjunto de pacotes que devem estar presentes no terminal em cujas diferentes ferramentas serão executadas:

```
- apt-transport-https
- ca-certificates
- curl
- gnupg-agent
- software-properties-common
- python
- python-pip
- python-setuptools
- docker-ce
- docker-ce-cli
- containerd.io
```

### Estrutura de ficheiros

```
├── playbook.yml
├── telegraf.yml
├── enable_alerts.yml
├── hosts
├── roles
    └── telegraf
        └── files
            ├── telegraf.conf
        └── tasks
            ├── main.yml
        └── vars
            ├── main.yml
    └── influxdb
        └── files
            ├── influxdb.conf
        └── tasks
            ├── main.yml
        └── vars
            ├── main.yml
    └── chronograf
        └── tasks
            ├── main.yml
    └── kapacitor
        └── files
            ├── kapacitor.conf
        └── tasks
            ├── main.yml
    └── grafana
        └── files
            ├── dashboard.yaml
            ├── grafana.ini
            └── GRAFANA_DASHBOARDS
                ├── CPU Statistics-1555349260797.json
                ├── Disk Usage and I_O-1555349247338.json
                ├── Network Overview-1555349238507.json
                ├── RAM Statistics-1555349253674.json
                ├── System Overview-1555349229812.json
        └── tasks
            ├── main.yml
    └── dependencies
        └── tasks
            ├── main.yml
```

### Instalação

1- Efetuar o clone do repositório do github que contêm os ficheiros:
```
$git clone https://github.com/hfrpinto/tick_playbook.git
$cd tick_playbook
```

![](git_clone.gif)

2- Executar o playbook e introduzir o endereço ip do host de destino:
```
$ sudo ansible-playbook -K -u [username do host de destino] playbook.yml --ask-pass
```

![](host.gif)

3- Escolher uma das opções no menu apresentado:

![](menu.gif)

4- Mediante a escolha selecionada, serão instaladas as ferramentas pretendidas:

![](setup.gif)
```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Docker](https://docs.docker.com/)
* [Ansible](https://docs.ansible.com/)
* [Influxdata](https://docs.influxdata.com/)
