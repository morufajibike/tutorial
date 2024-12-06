import logging
import azure.functions as func

def main(req: func.HttpRequest) -> func.HttpResponse:
    logging.info('Python HTTP trigger function processed a request.')

    # Check if the request method is POST
    if req.method == 'POST':
        try:
            # Get the request body
            req_body = req.get_json()

            # Process the request and perform necessary actions
            # For example, you can access the request data using req_body['key']
            # Log the request body content
            logging.info(f'Request Body: {req_body}')

            # Return a response
            return func.HttpResponse("POST request processed successfully", status_code=200)

        except ValueError:
            return func.HttpResponse("Invalid request data", status_code=400)
    else:
        return func.HttpResponse("Please send a POST request", status_code=405)
