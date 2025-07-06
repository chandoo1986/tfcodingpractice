variable "settings" {
  type = list(object({
    description = string
    port        = number
    })

  )
  default = [
    {
      description = "Allow SSH access"
      port        = "22"
    },
    {
      description = "Allows HTTP traffic"
      port        = 80
    },
    {
      description = "Allows HTTPS traffic"
      port        = 443
    }
  ]
}
