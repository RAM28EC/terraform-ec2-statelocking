terraform {
  backend "s3" {
    bucket = "jenkins-bucket-store"
    key = "storestate/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "dynamic-sg-jenkins"
  }
}