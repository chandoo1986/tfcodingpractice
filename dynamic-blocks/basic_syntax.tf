dynamic "label" {
  for_each = var.iterable_variable
  iterator = iterator_name # Optional, defaults to label

  content {
    # Configuration details for each iteration
    attribute = iterator_name.value
  }
}