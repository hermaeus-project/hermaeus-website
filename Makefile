# Serve the documentation based on the current version. Useful to write and auto-reload.
.PHONY: serve-dev
serve-dev: .env.auto/touchfile
	./scripts/serve-dev.sh

# Serve the documentation from the gh-pages branch include previous published versions of the documentation.
.PHONY: serve-full
serve-full: .env.auto/touchfile
	./scripts/serve-full.sh

# Build the website locally
.PHONY: build
build: .env.auto/touchfile
	./scripts/build.sh

# Create the python environments and install the dependencies.
.env.auto/touchfile: requirements.txt
	./scripts/create-venv.sh

# Delete the python environment and other generated files.
.PHONY: clean
clean:
	./scripts/clean.sh