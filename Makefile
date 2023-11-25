#defaults
DATABASE=mysql://root:password@tcp(localhost:3306)/ifinance

#actions
compose-up:
	docker-compose up -d

compose-down:
	docker-compose down

migrate:
	migrate -source file://resources/db/migrations -database $(DATABASE) up $(VERSION)

migrate-force:
	migrate -source file://resources/db/migrations -database $(DATABASE) force $(VERSION)