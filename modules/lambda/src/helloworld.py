def lambda_handler(event, context):
    return {
        'statusCode': 200,
        'body': "<HTML><HEAD></HEAD><BODY>HEllo, World</BODY>"
    }
