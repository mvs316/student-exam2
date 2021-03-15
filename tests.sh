python3 -m venv venv
. venv/bin/activate

pip3 install -e '.[test]'
coverage run -m pytest
coverage report


