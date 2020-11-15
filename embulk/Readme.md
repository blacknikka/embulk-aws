### How to use embulk
- First, you should copy the example liquid file.
```
$ cp _env.yml.liquid.sample _env.yml.liquid
```

- Next, fill the secret values according to your environment. (fill below)
```
{% assign bucket_name = 'bucket-name' %}
{% assign aws_key_id = 'id' %}
{% assign aws_access_key = 'key' %}
{% assign rdb_endpoint = 'rds-endpoint' %}
```

- Run `guess` with `liquid` file.
```
$ embulk guess ./from_s3_to_psql.yml.liquid -o guessed.yml
```

- Then, the `guessed.yml` file will be created, and run it to run ETL.
```
$ embulk run guessed.yml
```
