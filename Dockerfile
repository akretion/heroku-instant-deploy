FROM akretion/voodoo-ruby:latest
USER root

ADD . /workspace
RUN rm /usr/local/bundle && mkdir /usr/local/bundle
RUN bundle install
USER developer
CMD ['rails', 's', '--binding=0.0.0.0']
