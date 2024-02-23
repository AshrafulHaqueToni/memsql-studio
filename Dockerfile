FROM centos:7

RUN yum-config-manager --add-repo https://release.memsql.com/production/rpm/x86_64/repodata/memsql.repo && \
    yum install -y memsql-studio

EXPOSE 8081

ENTRYPOINT ["singlestoredb-studio"]