resource "google_firebaserules_ruleset" "firebaserules_rulesets" {
  for_each = var.firebaserules_rulesets

  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  source {
    dynamic "files" {
      for_each = each.value.source.files
      content {
        content     = files.value.content
        fingerprint = files.value.fingerprint
        name        = files.value.name
      }
    }
    language = each.value.source.language
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

