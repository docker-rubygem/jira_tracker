FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.0

RUN gem install jira_tracker --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jira_tracker"]
CMD ["--help"]
