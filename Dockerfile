FROM lachlanevenson/k8s-kubectl:v1.8.10

MAINTAINER siriuszg <zhigang52110@sina.com>

RUN mkdir -p /usr/local/kube

WORKDIR /usr/local/kube

COPY ./controller.json.sed /usr/local/kube/
COPY ./service.json.sed /usr/local/kube/

COPY ./exec.sh /usr/local/kube/

COPY ./exechelp /usr/local/kube/

RUN chmod +x /usr/local/kube/exec.sh

ENTRYPOINT ["/bin/sh","/usr/local/kube/exec.sh"]

CMD ["help"]
