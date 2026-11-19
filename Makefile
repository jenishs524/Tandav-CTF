PRETTIER := Tandav/themes/admin/node_modules/.bin/prettier

lint:
	ruff check Tandav/ migrations/ tests/
	ruff format --check --diff .
	yarn --cwd Tandav/themes/admin lint
	yarn --cwd Tandav/themes/core lint
	$(PRETTIER) --check '**/*.md'

format:
	ruff check --select I --fix Tandav/ migrations/ tests/
	ruff format .
	yarn --cwd Tandav/themes/admin format
	yarn --cwd Tandav/themes/core format
	$(PRETTIER) --write '**/*.md'

# requirements.txt is generated from uv.lock for consumers that install with
# pip. uv.lock is the source of truth - edit pyproject.toml and re-run this.
requirements:
	uv export --frozen --no-dev --no-hashes --no-emit-project --output-file requirements.txt

test:
	pytest -rf --cov=Tandav --cov-context=test --cov-report=xml \
		--ignore-glob="**/node_modules/" \
		--ignore=node_modules/ \
		-W ignore::sqlalchemy.exc.SADeprecationWarning \
		-W ignore::sqlalchemy.exc.SAWarning \
		-n auto

coverage:
	coverage html --show-contexts

serve:
	python serve.py

shell:
	python manage.py shell

translations-init:
	# make translations-init lang=af
	pybabel init -i messages.pot -d Tandav/translations -l $(lang)

translations-extract:
	pybabel extract -F babel.cfg -k lazy_gettext -k _l -o messages.pot .

translations-update:
	pybabel update --ignore-obsolete -i messages.pot -d Tandav/translations

translations-compile:
	pybabel compile -f -d Tandav/translations

translations-lint:
	dennis-cmd lint Tandav/translations
