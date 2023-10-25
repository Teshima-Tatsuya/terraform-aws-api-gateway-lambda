module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source = "./modules/lambda"

  role       = module.iam.iam_role_arn
  apigateway = module.api-gateway.apigateway

  depends_on = [
    module.iam
  ]
}

module "api-gateway" {
  source = "./modules/api-gateway"

  lambda = module.lambda.lambda
}
