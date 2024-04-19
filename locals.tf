locals {
    apigateway = {
        api_name = "api-gateway-lambda-integration"
        stage_name = "dev"
        domain_name = "api.${data.terraform_remote_state.domain-management.outputs.domain.domain_name}"
        certificate_arn = data.terraform_remote_state.domain-management.outputs.domain.certificate_arn
        path_part = "helloworld"
    }
}