def lambda_handler(event, context):
    return {
        'statusCode': 200,
        "headers": {
            "Content-Type": "text/html"
        },
        'body': "<HTML><HEAD></HEAD><BODY>hello, World</BODY>"
    }
