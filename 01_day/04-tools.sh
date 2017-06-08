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

#Ferramentas básicas de análise de vulnerabilidade do GNU/Linux Kali

#PRIMEIRA FERRAMENTA: NMAP (https://nmap.org/)

#Descobrindo computadores na rede
#-sP=Ping Scanner
nmap -sP 192.168.1.0/24

#Verificando portas abertas com o Nmap
nmap 192.168.1.10

#Verificando as portas abertas é o sistema operacional
#O=detecção do Sistema Operacional
nmap -O 192.168.1.10

#Verificando as portas abertas, sistema operacional e versões do serviços
#O=detecção do Sistema Operacional, sV=detecção do Sistema Operacional e Versão, A=informações detalhadas do sistema operacional e versão
nmap -O -sV -A 192.168.1.10

#Verificando as portas abertas, sistema operacional, versões de serviços e protocolos TCP
nmap -O -sV -sT 192.168.1.10

#Verificando as portas abertas, sistema operacional, versões de serviços e protocolos TCP
#Informações detalhadas dos pacotes que foram enviados
nmap -O -sV -sT --packet-trace 192.168.1.10

#Detalhes da Placa de Rede do alvo
nmap --iflist 192.168.1.10

#SEGUNDA FERRAMENTA: WPSCAN (https://wpscan.org/)

#Atualizando o wpscan
wpscan --update

#Analisando o nosso alvo
wpscan 192.168.1.10

#TERCEIRA FERRAMENTA: Wireshark (https://www.wireshark.org/)

#Analisando o tráfego da Placa de Rede
wireshark

#Filtrar HTTP
http.request.method == "POST" 

#QUARTA FERRAMENTA: Dicionários de Usuários/Senhas (darkc0de.lst)
#Site: https://crackstation.net/
#Pesquisar no Google: top 10 username and password wordpress

#QUINTA FERRAMENTA: Linguagem de Programação Curl

#Verificando o campo de Username
curl -I 192.168.1.10 | grep -i user_login

#Verificando o campo de Password
curl -I 192.168.1.10 | grep password

#SEXTA FERRAMENTA: Brute Force Hydra (https://www.thc.org/thc-hydra/) CUIDADO!!!
#hydra OPÇÕES ALVO
hydra -l admin -P senhas.txt 192.168.1.X ftp

#SETIMA FERRAMENTA: Brute Force Sucrack (http://www.leidecker.info/projects/sucrack.shtml)
sucrack wordlist.lst

#OITAVA FERRAMENTA: Metasploit (https://www.metasploit.com/)

#Atualizando a base de dados
msfupdate

#Acessando o console
msfconsole

#Utilizar a ferramenta de scanner do Metasploit para Wordpress
use auxiliary/scanner/http/wordpress_scanner
show options
set RHOSTS 192.168.1.10
run

use auxiliary/scanner/http/wordpress_login_enum
show options
set RHOSTS 192.168.1.10
run

#NONA FERRAMENTA: Nikto (https://cirt.net/Nikto2)
nikto -h 192.168.1.10

#DÉCIMA FERRAMENA: OWASP-ZAP (https://www.owasp.org)
owasp-zap
