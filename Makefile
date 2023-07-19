.PHONY: dev build version

prepare:
	docker build -t obsidian-plugin .

obsidian:
	docker run --rm -v $(PWD):/app -w /app obsidian-plugin npm install obsidian
tslib:
	docker run --rm -v $(PWD):/app -w /app obsidian-plugin npm install tslib
esbuild:
	docker run --rm -v $(PWD):/app -w /app obsidian-plugin npm install esbuild
buildin-modules:
	docker run --rm -v $(PWD):/app -w /app obsidian-plugin npm install builtin-modules --save-dev
dev:
	make prepare
	docker run --rm -v $(PWD):/app -w /app obsidian-plugin npm run dev

build:
	make prepare
	docker run --rm -v $(PWD):/app -w /app obsidian-plugin npm run build

version:
	make prepare
	docker run --rm -v $(PWD):/app -w /app obsidian-plugin npm run version
