### Dockerfile
#
# BaseJump MariaDB Server

FROM basejump/build-base
MAINTAINER Devon Weller <dweller@atlasworks.com>

# Add yum repo for MariaDB
ADD mariadb.repo /etc/yum.repos.d/mariadb.repo

# Install MariaDB.
RUN yum install -y MariaDB-server

# Add shell script for running MariaDB / container
ADD run.sh /run.sh
RUN chmod +x /run.sh

# Expose ports
EXPOSE 3306

CMD ["/run.sh"]

