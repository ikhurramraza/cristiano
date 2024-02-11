all: build

build:
	bundle exec rake build

install: build
	ls -1 pkg/*.gem | tail -1 | xargs gem install
