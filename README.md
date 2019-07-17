```
zip awscli.zip bootstrap
zip function.zip function.sh
```


```
aws lambda publish-layer-version \
    --layer-name awscli \
    --zip-file fileb://awscli.zip \
    --compatible-runtimes python3.7
```


```
aws lambda create-function --function-name lambda-cli \
  --handler function.handler \
  --runtime provided \
  --role <RoleArn> \
  --zip-file fileb://function.zip \
  --layers arn:aws:lambda:ap-northeast-1:<AWSAccountID>:layer:awscli:1
```
