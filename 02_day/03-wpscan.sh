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

#Variável do comando WPScan
ALVO="www.uninove.br"

#Executando o comando WPScan sem opções. 
echo -e "Executando o comando WPScan no alvo: $ALVO"
echo
  wpscan $ALVO
echo
echo -e "Fim da execução `date`"
