CLOCAL_AMFLAGS = -I config/m4 -I aclocal
ACLOCAL_AMFLAGS = -I config/m4 -I aclocal

python: 
	python3 -m venv _build
	( \
		. _build/bin/activate; \
		_build/bin/python -m pip install --upgrade pip; \
		_build/bin/python -m pip install -r requirements.txt; \
	)
