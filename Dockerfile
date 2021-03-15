# build packages on centos-vault
#
# VERSION   0.0.1

FROM centos:6

# Update the repositories
COPY *.repo /etc/yum.repos.d/

# Copy and import SIG-SCLo key
COPY RPM-GPG-KEY-CentOS-SIG-SCLo /etc/pki/rpm-gpg/
RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-SCLo

# Install c++
RUN yum -y install rpm-build epel-release devtoolset-7-gcc-c++

# Clean up
RUN yum clean all && rm -rf /var/cache/yum