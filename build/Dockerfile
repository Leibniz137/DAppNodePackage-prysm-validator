FROM openjdk:8 as build

# Install Bazel and dependencies
RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list  && \
    curl https://bazel.build/bazel-release.pub.gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y bazel git patch bash && \
    rm -rf /var/lib/apt/lists/*

# Set up workspace
WORKDIR /usr/src/app
ENV BRANCH 0.1.2
RUN git clone -b ${BRANCH} https://github.com/prysmaticlabs/prysm.git /usr/src/app && \
    bazel build //validator:validator

FROM alpine

# Install dependencies
RUN apk --update add bash ca-certificates libc6-compat bash supervisor && \
    rm  -rf /tmp/* /var/cache/apk/*

#Copy binaries from build stage
COPY --from=build /usr/src/app/bazel-bin/validator/linux_amd64_pure_stripped/validator /usr/local/bin/validator

#Copy binaries from build stage
COPY entrypoint.sh /usr/local/bin/entrypoint
COPY supervisord.conf /etc/supervisord.conf
ENTRYPOINT ["entrypoint"]
