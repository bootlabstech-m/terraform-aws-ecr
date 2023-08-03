resource "aws_ecr_repository" "container_repository" {
  count                = var.no_of_ecrs
  name                 = var.ecr_name[count.index]
  force_delete         = var.force_delete
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }
    lifecycle {
    ignore_changes = [tags]
  }
}