all: build

build:
	bundle exec rake build

install: uninstall build
	ls -1 pkg/*.gem | tail -1 | xargs gem install

uninstall:
	gem uninstall --executables cristiano >/dev/null
