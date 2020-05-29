FROM kong:1.0.3

LABEL org.label-schema.vcs-url="https://github.com/MrSaints/kong-plugin-aws" \
      maintainer="Ian L. <os@fyianlai.com>"

COPY . /kong-plugin-aws/
RUN cd /kong-plugin-aws/ \
    && luarocks make \
    && rm -rf /kong-plugin-aws/

ENV KONG_CUSTOM_PLUGINS=aws
