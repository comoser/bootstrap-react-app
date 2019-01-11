FROM node:8.11.1-alpine

ENV NPM_CONFIG_LOGLEVEL warn
ARG app_env
ENV APP_ENV $app_env

RUN mkdir -p /app
WORKDIR /app
COPY ./ ./

RUN yarn
CMD if [ ${APP_ENV} = production ]; \
	then \
	yarn global add http-server && \
	yarn run build && \
	cd build && \
	hs -p 3000; \
	else \
	yarn start; \
	fi
EXPOSE 3000
