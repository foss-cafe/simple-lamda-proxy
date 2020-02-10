import json
import os
import requests

backend = os.environ['BACKEND']


def lambda_handler(event, context):
    print(event)
    headers = {"Content-Type": "application/json"}

    r = requests.post(backend, headers=headers, data=json.dumps(event))

    response = {"statusCode": 200, "headers": {
        "Access-Control-Allow-Origin": '*'
    }, "isBase64Encoded": False, 'body': r.text}

    # Add the search results to the response
    return r.json()
