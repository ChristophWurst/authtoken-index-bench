# authtoken-index-bench

## Baseline

```bash
mariadb-slap -u root -p --delimiter=";" --create=schema_baseline.sql --query=client_baseline.sql --concurrency=10 --iterations=5
```

## Empty passwords

```bash
mariadb-slap -u root -p --delimiter=";" --create=schema_empty-password.sql --query=client_baseline.sql --concurrency=10 --iterations=5
```

## SELECT without keys and password

```
mariadb-slap -u root -p --delimiter=";" --create=schema_baseline.sql --query=client_select-no-keys-password.sql --concurrency=10 --iterations=5
```

Result: no improvement.

## VARCHARS instead of LONGTEXT

```bash
mariadb-slap -u root -p --delimiter=";" --create=schema_varchar.sql --query=client_baseline.sql --concurrency=10 --iterations=5
```
