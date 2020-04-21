FROM lachlanevenson/k8s-kubectl:v1.18.0

LABEL maintainer="jaehue"

RUN apk update --no-cache && apk add --no-cache jq

WORKDIR /usr/local/kube

COPY ./deployment .

ENTRYPOINT ["/bin/sh","/usr/local/kube/exec.sh"]

CMD ["help"]
