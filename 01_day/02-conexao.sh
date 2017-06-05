#!/bin/bash
# Autor: Robson Vaamonde
# Site: www.procedimentosemti.com.br
# Facebook: facebook.com/ProcedimentosEmTI
# Facebook: facebook.com/BoraParaPratica
# YouTube: youtube.com/BoraParaPratica
# Data de criação: 31/10/2016
# Data de atualização: 05/06/2017
# Versão: 1.1

#Comandos utilizados no #Escape_Room_TI_SENAC_Tatuapé_30_Anos

#Comandos básicos para testar a conexão com a internet no GNU/Linux Kali

#Pingando o Google, o comando ping faz o teste fim-a-fim, traduzindo Nome para IP.
#64 bytes = tamanho do pacote, TTL = Time to Live, Time = Tempo de Resposta
ping google.com

#Descobrindo o endereço IP do domínio google.com
host google.com

#Verificando os servidores de DNS responsável pela tradução de nomes do domínio google.com
nslookup google.com

#Verificando informações mais detalhadas do DNS do google.com
nslookup -type=any google.com

#Usando o dig para ver mais informações de DNS
dig google.com

#Verificando informações do registro do DNS
whois google.com

#Verificando as rotas (saltos) até o domínio google.com
#n=não traduzir nomes
traceroute -n google.com

#Verificando as conexões estabelecidas
#n=não traduzir nomes, a=tudo, t=tcp, u=udp, p=processo
netstat -natup

#Verificando informações de trafégo
#=i=interface
netstat -i

#Acesando serviços com o Telnet
telnet google.com 80

#Analisando os pacotes enviados pela Interface com o TCPdump
tcpdump
tshark

#Vendo a tabela de ARP Local
#a=tudo
arp -a

#Teste de acesso ao Servidor Web usando o Curl
#I=Head (cabeçalho)
curl -I google.com

#Teste de download utilizando o wget
#N=Timestamping (Marca Temporal)
wget -N google.com