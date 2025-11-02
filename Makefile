.PHONY: dist submission.zip

dist:
	mkdir -p dist
	python generator.py
	rm -rf dist/__pycache__

submission.zip: dist
	zip -j -r submission.zip dist
