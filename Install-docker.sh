#!/bin/bash
set -eE -o functrace
failure() {
  local lineno=$1
  local msg=$2
  echo "Failed at $lineno: $msg"
}
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [$USERID -ne 0]
then
    echo -e "$R Please run this script with root access $N"
    exit 1
fi 

yum update -y

yum -y install docker

service docker start

usermod -a -G docker ec2-user

chmod 666 /var/run/docker.sock

docker version

echo -e "$G Docker Installed Succesfully.. $N" 