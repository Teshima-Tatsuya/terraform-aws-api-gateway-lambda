module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source = "./modules/lambda"

  role       = module.iam.iam_role_arn
  common     = var.common
  apigateway = module.api-gateway.apigateway

  depends_on = [
    module.iam
  ]
}

module "api-gateway" {
  source = "./modules/api-gateway"

  common = var.common
  lambda = module.lambda.lambda
}
