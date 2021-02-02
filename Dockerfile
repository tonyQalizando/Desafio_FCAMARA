FROM ruby:2.6.3

RUN mkdir reports

COPY features /features/

COPY Gemfile /

COPY test-without-report.sh /

RUN gem install bundle\
&& bundle install 

ENTRYPOINT ["bundle", "exec", "cucumber"]