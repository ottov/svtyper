develop:
	pip install -r requirements.txt

install:
	python setup.py install

test:
	python setup.py test

clean:
	find tests -name "*.pyc" -exec rm -v {} \;
	find scripts -name "*.pyc" -exec rm -v {} \;
	find svtyper -name "*.pyc" -exec rm -v {} \;
	if [ -e svtyper.pyc ]; then rm -v svtyper.pyc; fi;
	if [ -e .eggs ]; then rm -rfv .eggs; fi;
	if [ -e build ]; then rm -rfv build; fi;
	if [ -e dist ]; then rm -rfv dist; fi;
	if [ -e svtyper.egg-info ]; then rm -rfv svtyper.egg-info; fi;
