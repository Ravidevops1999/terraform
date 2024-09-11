variable "ami_id" {
    type        = string
    default     = "ami-09c813fb71547fc4f"
    description = " This is the AMI ID of Devops"
}

variable "Instance_type"{
    type    = string
    default = "t3.micro"
}

variable "tags"{
    type    = map
    default = {
        Name = "backend"
        Project = "Expense"
        Component = "backend"
        Environment = "Dev"
        Terraform = "true"
    }
}

variable "sg_name"{
    default = "allow_ssshhh"

}

variable "sg_description"{
    default = "Allow port number:22 for ssh access"
}

variable "from_port"{
    default = 22
    type    = number
    
}

variable "to_port"{
    default = 22
    type    = number
    
}

variable "protocol"{
    default = "tcp"
    
}

variable "ingress_cidr"{
    type = list(string)
    default = ["0.0.0.0/0"]
}