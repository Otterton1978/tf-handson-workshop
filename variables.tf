
variable "region" {
    type = string
    description = "The AWS region"
    default = "us-east-1"
}

variable "ami" {
    type = map(string)
    default = {
        us-east-1 = "ami-0d729a60"
        us-west-1 = "ami-7c4b331c"
    }
    description = "The AMIs to use."
} 

variable "security_group_ids" {
    type = list(string)
    description = "List of security group IDs"
    default = ["sg-09c69f609b654fed3"]
}