FROM bitnami/kubectl:1.17-debian-10

USER root
RUN mkdir /var/lib/apt/lists \
 && apt-get update \
 && apt-get install gettext libint1 -y \
# && rm -rf /var/lib/apt/lists/* \
 && apt-get autoremove -y \
 && apt-get clean

USER 1001
ENTRYPOINT []
CMD [ "kubectl", "--help" ]
