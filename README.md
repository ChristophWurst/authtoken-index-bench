# authtoken-index-bench

```bash
mariadb-slap -u root -p --delimiter=";" --create=schema_old.sql --query=client.sql --concurrency=10 --iterations=5
mariadb-slap -u root -p --delimiter=";" --create=schema_new.sql --query=client.sql --concurrency=10 --iterations=5
```
