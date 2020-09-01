resource "azuread_group" "group" {

  name                    = var.global_settings.prefix == "" ? format("%s", var.azuread_groups.name) : format("%s-%s", var.global_settings.prefix, var.azuread_groups.name)
  description             = lookup(var.azuread_groups, "description", null)
  prevent_duplicate_names = lookup(var.azuread_groups, "prevent_duplicate_names", null)

}
