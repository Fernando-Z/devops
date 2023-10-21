#!/bin/bash

echo "Desafio DevOps - Fernando"
echo "Instalando Ansible..."

sudo apt update && sudo apt install -y ansible

echo "Instalando dependências e pacotes utilizados no desafio"
sleep 3
ansible-playbook ansible/install.yaml

echo "Executando stacks"
sleep 3
ansible-playbook ansible/run.yaml
