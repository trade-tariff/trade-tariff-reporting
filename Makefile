REPORTING_DOMAIN ?= https://reporting.dev.trade-tariff.service.gov.uk
PORT ?= 8000
HOST ?= 127.0.0.1
BUILD_DIR ?= /tmp/trade-tariff-reporting-static

.PHONY: build-local serve clean-local

build-local:
	mkdir -p $(BUILD_DIR)
	sed 's|REPORTING_DOMAIN|$(REPORTING_DOMAIN)|g' index.html > $(BUILD_DIR)/index.html
	cp favicon.png robots.txt $(BUILD_DIR)/

serve: build-local
	python3 -m http.server $(PORT) --bind $(HOST) --directory $(BUILD_DIR)

clean-local:
	rm -rf $(BUILD_DIR)
