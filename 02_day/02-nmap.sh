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

#Variável do comando Nmap
ALVO="www.uninove.br"

#Executando o comando Nmap com a opções: -sV=Detecção de Versão -O=Detecção de Sistema Operacional --script http-wordpress-enum=Script para Enumeração do Wordpress --script-args limit=25=Limite de envio de pacotes
echo -e "Executando o comando Nmap no alvo: $ALVO"
echo
  nmap -sV -O --script http-wordpress-enum --script-args limit=25 $ALVO | less
echo
echo -e "Fim da execução `date`"
