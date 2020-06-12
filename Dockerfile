FROM ruby:2.7-alpine

RUN gem install octokit

COPY main.rb /app/main.rb

CMD ["ruby", "/app/main.rb"]
