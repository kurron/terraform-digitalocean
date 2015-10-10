#!/bin/bash

IP=$1
ssh -v -i .ssh/id_rsa root@${IP}
