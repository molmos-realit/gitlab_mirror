FROM makocchi/alpine-git-curl-jq:latest

LABEL "com.github.actions.name"="Mirror to GitLab "
LABEL "com.github.actions.description"="Automate mirroring of git commits to GitLab"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/aarriagadac/test_mirror"
LABEL "homepage"="https://github.com/aarriagadac/test_mirror"
LABEL "maintainer"="Antonina A <aarriagadac@realit.cl>"


COPY entrypoint.sh /entrypoint.sh
COPY cred-helper.sh /cred-helper.sh

RUN chmod +x /entrypoint.sh
RUN chmod +x /cred-helper.sh

ENTRYPOINT ["/entrypoint.sh"]