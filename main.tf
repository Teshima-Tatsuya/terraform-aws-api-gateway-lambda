module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source = "./modules/lambda"

  role       = module.iam.iam_role_arn
  apigateway = module.apigateway.apigateway

  depends_on = [
    module.iam
  ]
}

module "apigateway" {
  source = "./modules/api-gateway"

  lambda = module.lambda.lambda
  apigateway = local.apigateway
}

module "route53" {
  source = "./modules/route53"

  apigateway = module.apigateway.apigateway
  route53 = local.route53
}