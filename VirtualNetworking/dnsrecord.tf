# Create the Azure DNS Zone for the domain
resource "azurerm_dns_zone" "contoso" {
  name                = "web.contoso.com"
  resource_group_name = azurerm_resource_group.az104-04.name
}

resource "azurerm_dns_a_record" "primary" {
  name                = "www"
  resource_group_name = azurerm_resource_group.az104-04.name
 zone_name           = azurerm_dns_zone.contoso.name
  records             = ["13.90.37.78","13.90.37.62"] # IP Publico alterar
  ttl                 = 300
}