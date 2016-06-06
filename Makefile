.PHONY: build gem-push
build:
	gem build cfnlego.gemspec

gem-push:
	gem push cfnlego-$$(./bin/cfnlego --version).gem

