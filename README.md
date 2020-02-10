# Simple python AWS Lambda Proxy

## Required tools

- Python 3.7, virtualenv
- Make

## Expected Environment Variables

| Name    | Description |
| ------- | ----------- |
| BACKEND | Backend url |

`Handler`: lambda_function.lambda_handler

### Usage
```bash
make install # installing virtual env and site packages
make cleanall # clean  workspace
make build # building zip file
````
