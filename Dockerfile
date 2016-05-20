FROM debian:jessie
MAINTAINER Michael Ferguson <mpherg@gmail.com>

ENV JIRA_HOME /var/atlassian/jira

RUN mkdir -p "${JIRA_HOME}" \
    mkdir    "${JIRA_HOME}" \
    && chmod -R 700 "${JIRA_HOME}" \
    && chown -R daemon:daemon "${JIRA_HOME}"

USER daemon

VOLUME ${JIRA_HOME}

CMD ["echo", "Data container for Atlassian JIRA"]
