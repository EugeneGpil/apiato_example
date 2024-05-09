FROM 8.2-fpm-bookworm

ARG USER_ID=1000
ARG GROUP_ID=1000
RUN \
    echo "Создать группу app" && \
    groupadd -g ${GROUP_ID} app && \
    \
    echo "Создать юзера app в группе app" && \
    useradd -u ${USER_ID} -m app -g app && \
    \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    \
    mkdir /commandhistory && \
    touch /commandhistory/.bash_history && \
    chown -R app:app /commandhistory && \
    echo "export PROMPT_COMMAND='history -a' && export HISTFILE=/commandhistory/.bash_history" >> "/home/app/.bashrc"