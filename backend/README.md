## Запуск тестов

```shell
docker-compose -f docker-compose.test.yml up -d --build --renew-anon-volumes
```

Откройте http://localhost:5050/allure-docker-service/projects/default/reports/latest/index.html?redirect=false

```shell
docker-compose -f docker-compose.test.yml down -v
```