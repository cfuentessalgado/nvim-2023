#!/bin/bash


ansible-playbook local.yml -i ~/.ansible/hosts --ask-become-pass --ask-vault-pass $@
