### Useful Commands
---

#### Create a new migration file
```bash
npx dbmate new <migration_name>
```

#### Apply pending migrations (creates DB if missing)
```bash
npx dbmate up
```

#### Rollback the most recent migration
```bash
npx dbmate rollback
```

#### Check migration status
```bash
npx dbmate status
```
