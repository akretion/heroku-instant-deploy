FROM akretion/voodoo-ruby:latest
USER root
ADD . /workspace
RUN bundle install
USER ubuntu
CMD ['rails', 's', '--binding=0.0.0.0']
