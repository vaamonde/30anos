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

#Variável do comando Curl
ALVO="http://www.uninove.br/wp-login.php"

#Executando o comando Curl integrado com o comando Grep, opção -i não Case Sensitive.
#Localizando o campo de Username Login
echo -e "Executando o comando Curl no alvo: $ALVO, localizando o campo User Login"
echo
  curl $ALVO | grep --color -i user_login
echo
echo -e "Fim da execução `date`"
echo
echo -e "Pressione <Enter> para continuar!!!!"
read
sleep 2
clear


#Executando o comando Curl integrado com o comando Grep, opção -i não Case Sensitive.
#Localizando o campo de Password
echo -e "Executando o comando Curl no alvo: $ALVO, localizando o campo Password"
echo
  curl $ALVO | grep --color -i password
echo
echo -e "Fim da execução `date`"
echo
echo -e "Pressione <Enter> para continuar!!!!"
read
sleep 2
clear

#Executando o comando Curl integrado com o comando Grep, opção -i não Case Sensitive.
#Localizando o campo de Hidden
echo -e "Executando o comando Curl no alvo: $ALVO, localizando o campos Hidden (atributo booleano que indica se um elemento é ou não relevante)"
echo
  curl $ALVO | grep --color -i hidden
echo
echo -e "Fim da execução `date`"
echo
echo -e "Pressione <Enter> para continuar!!!!"
read
sleep 2
clear
