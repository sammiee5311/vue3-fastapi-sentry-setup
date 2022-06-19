setup-backend:
	cd backend &&\
		python -m pip install --upgrade pip &&\
			pip install -r requirements_dev.txt

test-backend:
	cd backend &&\
		python -m pytest . && \
			python -m mypy main.py

setup-frontend:
	cd frontend &&\
		npm install

test-frontend:
	cd frontend &&\
		npm run coverage

test-all: setup-backend test-backend setup-frontend test-frontend

create-ssl-key:
	cd nginx &&\
		openssl req -config local.conf -new -sha256 -newkey rsa:2048 -nodes -keyout local.key -x509 -days 365 -out local.crt
