if not test -d venv; python3 -m venv venv; end
. venv/bin/activate.fish
python3 -m pip install -r requirements.txt
if test -d _build; rm -rf _build; end
sphinx-build -M html . _build --fail-on-warning
deactivate
