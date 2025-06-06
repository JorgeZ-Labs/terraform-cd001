
module "servicebus" {
  source   = "../../modules/servicebus"
  name     = local.asb_name
  location = var.location
  rg_name  = module.resource_group_k8s.name
  sku      = var.sku

  queues = var.queues
  topics = var.topics

  subscriptions = [
    {
      topic = "topic-inventory"
      name  = "sub-products"
    }
  ]

  subscription_rules = [
    {
      topic        = "topic-inventory"
      subscription = "sub-products"
      name         = "rule-high-priority"
      rule_type    = "SqlFilter"
      filter_type  = "SqlFilter"
      sql_filter   = "priority = 'high'"
    }
  ]

  tags = {
    environment = var.env_name
    team        = "platform"
    owner       = "Jorge"
  }
}
