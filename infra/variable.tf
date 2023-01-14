variable "instance-region" {
  description = "Value of AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "instance-name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "OverEngineeredVPS"
}

variable "key-pair" {
  description = "Value of AWS SSH key-pair name"
  type        = string
  default     = "oei-key-pair"
}
