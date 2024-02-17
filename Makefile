createmigration:
	migrate create -ext=sql -dir=sql/migrations -seq init

migrate:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(mysql:3306)/wallet" -verbose up

migratedown:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(mysql:3306)/wallet" -verbose down

.PHONY: migrate migratedown createmigration