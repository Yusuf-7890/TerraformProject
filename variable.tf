variable "second" {
    type = list(any)
    default = ["Hello this content is Passed from the List",1,1112]
}
variable "third" {
    type = object({
        name3 = string
        cont3 = number  
    })
    description = "Enter the Name and Content for the  file"
      
}
variable "fourth" {
    type = map(any)
    default = {
      "cont4" ="This content is passed by the variable for Map"  
    }
  
}
variable "fifth" {
    type = number
    default = 1234
  
}
variable "Sixth" {
    type = string
    default = "This content is form String Varibale"
  
}
variable "seven" {
    type = string
}
variable "Eight" {
    type = any
  
}
variable "Nine" {
    type = string
    default = "Output.txt"
  
}
variable "content" {
    type = string
    default = "Content for Output Block"
  
}

