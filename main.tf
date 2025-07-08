resource "aws_ecr_repository" "container_repository" {
  count                = var.no_of_ecrs
  name                 = var.name[count.index]
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
  encryption_configuration {
    encryption_type = var.encryption_type
    kms_key         = var.kms_key_id != "" ? var.kms_key_id : null
  }
  force_delete = var.force_delete

    lifecycle {
    ignore_changes = [tags]
  }
}
