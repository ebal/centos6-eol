# build packages on centos-vault
#
# VERSION   0.0.1

FROM    centos:6

# Update the repositories
COPY *.repo /etc/yum.repos.d/

