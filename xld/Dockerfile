FROM java:8u77-jre-alpine

# based on this repo: https://github.com/ffung/docker

ENV version 5.5.1
ENV root /lib
ENV home ${root}/xl-deploy-${version}-server 

RUN wget \
      https://dist.xebialabs.com/public/trial/xl-deploy/xl-deploy-${version}-server-trial-edition.zip \
      -O /tmp/xld.zip \
  && unzip \
      /tmp/xld.zip \
      -d ${root} \
  && rm -R \
      /tmp/xld.zip \
      ${home}/serviceWrapper \
      ${home}/samples \
      ${home}/importablePackages/*
      
ADD xldeploy.answers ${home}/bin/xldeploy.answers

WORKDIR ${home}/bin
RUN ["./run.sh", "-setup", "-reinitialize", "-force", "-setup-defaults", "./bin/xldeploy.answers"]

VOLUME ["${home}/conf", \ 
	"${home}/ext", \
	"${home}/hotfix", \ 
	"${home}/importablePackages", \
	"${home}/log", \
	"${home}/plugins", \ 
	"${home}/repository"]

ADD deployit-license.lic ${home}/conf/deployit-license.lic

EXPOSE 4516

CMD ["./run.sh"]
