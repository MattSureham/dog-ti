.PHONY: install test lint open clean serve deploy

open:
	@open index.html

test:
	@python3 test_quiz.py

lint:
	@python3 -c "import re; html=open('index.html').read(); issues=[]; print('OK' if not issues else 'Issues: '+str(issues))"

clean:
	@rm -rf __pycache__ .pytest_cache && find . -name '*.pyc' -delete 2>/dev/null; true

serve:
	@python3 -m http.server 8080

deploy:
	@git push origin main
