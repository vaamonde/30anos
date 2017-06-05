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

#Comandos básicos de redes no GNU/Linux Kali
#Obtendo informações das configurações de rede

#Informações do endereçamento IPv4 (no Microsoft Windows usamos o ipconfig /all)
ifconfig

#Informações do gateway padrão IPv4 (no Microsoft Windows usamos o ipconfig /all)
route -n

#Informações dos servidores de DNS IPv4 (no Microsoft Windows usamos o ipconfig /all)
cat /etc/resolv.conf

#Informações sobre o nome do servidor (no Microsoft Windows usamos o hostname)
hostnamectl