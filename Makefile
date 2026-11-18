
.PHONY: integration-test integration-test-python integration-test-typescript

integration-test: integration-test-python integration-test-typescript

integration-test-python:
	cd network-as-code-py; uv run pytest --cov=network_as_code --cov-report html

integration-test-typescript:
	cd network-as-code-ts; npm run test:integration

