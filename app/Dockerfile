FROM webdevops/php:7.4-alpine

WORKDIR /app

COPY ./code .

RUN { if [ -f ./vendor ]; \
    then rm -rfv ./vendor; \
fi \
} \
&& { if [ -f composer.lock ]; \
    then rm composer.lock; \
fi \
} \
&& composer install
