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

#Comandos básicos de atualização do GNU/Linux Kali

#Atualizando as Lista do Apt-Get:
apt-get update

#Atualizando os pacotes instalados:
apt-get upgrade

#Atualizando o Kernel
apt-get dist-upgrade

#Removendo pacotes desnecessários
apt-get autoremove

#Limpamdo o cache do Apt-Get
apt-get autoclean
apt-get cache