run:
	go run cmd/api/main.go

push:
	docker build -t lemuio/paltas:$(tag) .
	docker push lemuio/paltas:$(tag)

deploy:
	helm upgrade --set appName=paltas-api --set tag=$(tag) paltas-api ./charts/api