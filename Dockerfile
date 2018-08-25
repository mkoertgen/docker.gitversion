FROM mono:5.14.0.177

ARG GITVERSION=v4.0.0-beta.14
ARG GITVERSION_NUGET=4.0.0-beta0014

RUN apt-get update && apt-get install -y --no-install-recommends unzip git \
&& rm -rf /var/lib/apt/lists/*

ENV GITVERSION_HOME /usr/lib/GitVersion
RUN mkdir -p ${GITVERSION_HOME}
WORKDIR ${GITVERSION_HOME}

RUN curl https://github.com/GitTools/GitVersion/releases/download/${GITVERSION}/GitVersion_${GITVERSION_NUGET}.zip -L -o /tmp/gitversion.zip \
&& unzip /tmp/gitversion.zip && rm /tmp/gitversion.zip

CMD [ "mono", "./GitVersion.exe", "/repo" ]
