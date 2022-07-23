# Using locals 
resource "local_file" "myfile" {
 filename = local.name
 content = local.content
}
locals {
   name= "Locals.txt"
   content= "Hello my name is Yusuf and I am creating this Terraform Project amd this content is written form locals"
}
# Using Random
resource "local_file" "randomfile" {
   filename = "Random.txt"
   content = "${random_id.content1.hex}"
  
}
resource "random_id" "content1" {
   byte_length = 12
  
}
# Using Number
resource "local_file" "myfile2" {
   filename = "Numberfile.txt"
   content = var.fifth
   
}
# Using String
resource "local_file" "Myfile3" {
   filename = "String.txt"
   content = var.Sixth
  
}
# Using List
resource "local_file" "myfile4" {
   filename = "Yusuf1.txt"
   content = var.second[0]
  
}
# Using Map
resource "local_file" "myfile5" {
   filename = "Mapfile.txt"
   content = var.fourth["cont4"]
  
}
# Using Object
resource "local_file" "Myfile6" {
   filename = var.third["name3"]
   content = var.third["cont3"]
}
# Using Terraform.tfvars
resource "local_file" "myfile7" {
   filename = var.seven 
   content = var.Eight
}
resource "local_file" "myfile9" {
  filename  = var.Nine
  content = var.content
}
output "output_name" {
  value = local_file.myfile9.content
}

