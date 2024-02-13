# authtoken-index-bench

```bash
mariadb-slap -u root -p --delimiter=";" --create=schema_baseline.sql --query=client_baseline.sql --concurrency=10 --iterations=5
mariadb-slap -u root -p --delimiter=";" --create=schema_new.sql --query=client.sql --concurrency=10 --iterations=5
```
