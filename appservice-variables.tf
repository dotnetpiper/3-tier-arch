# variable "aks_rg" {
#   type = string
#   description = "resource group of aks cluster"
# }

variable "rg_location" {
  type = string
  description = "Resource group location of aks cluster"
}

variable "client_secret" {
  description = "A client_secret to establish connection with subscription"
}

variable "subscription_id" {
  type = string
}

# variable "vnet_name" {
#   type = string
#   description = "Virtual network of aks cluster"
# }

# variable "appgw_subnet_name" {
#   default = "appgwsubnet"
# }

# variable "aks_pod_subnet" {
#   default = "aks-pod-subnet"
# }



# variable "aks_subnet_address_prefix" {
#   default = ["10.0.0.0/22"]
# }

# variable "app_gateway_subnet_address_prefix" {
#   default = ["10.0.4.0/24"]
# }

# variable "aksservicecidr" {
#   type = string
#   description = "Service cidr range"
# }

# variable "dockercidrip" {
#   type = string
#   default =  "172.101.0.1/16"
# }
 

# variable "dns_service_ip" {
#   description = "DNS prefix"
# }
# variable "dns_prefix" {
#   description = "DNS prefix"
#   default = "akslcs"
# }

# variable "cluster_name" {
#   description = "The name for the AKS resources created in the specified Azure Resource Group."
#   type        = string
#   default     = "aks-lcs-ses-n-007"
# }
# variable "kubernetes_version" {
#   description = "Specify which Kubernetes release to use. The default used is the latest Kubernetes version available in the region"
#   type        = string
#   default     = "1.20.9"
# }
# # variable "api_server_authorized_ip_ranges" {
# #   description = "ip ranges to lock down access to kubernetes api server"
# #   default     = "0.0.0.0/0"
# # }
# # Node Pool config
# variable "agent_pool_name" {
#   description = "name for the agent pool profile"
#   default     = "linux_pool"
# }
# # variable "agent_pool_type" {
# #   description = "type of the agent pool (AvailabilitySet and VirtualMachineScaleSets)"
# #   default     = "AvailabilitySet"
# # }
# variable "node_count" {
#   description = "number of nodes to deploy"
#   default = 2
# }
# variable "vm_size" {
#   description = "size/type of VM to use for nodes"
# }
# variable "os_disk_size_gb" {
#   description = "size of the OS disk to attach to the nodes"
#   default = 50
# }
# # variable "vnet_subnet_id" {
# #   description = "vnet id where the nodes will be deployed"
# #}
# variable "max_pods" {
#   description = "maximum number of pods that can run on a single node"
#   default = 30
# }

# #Network Profile config
# # variable "network_plugin" {
# #   description = "network plugin for kubenretes network overlay (azure or calico)"
# #   default     = "azure"
# # }
# variable "service_cidr" {
#   description = "kubernetes internal service cidr range"
#   default     = "10.0.0.0/16"
# }
# # variable "diagnostics_workspace_id" {
# #   description = "log analytics workspace id for cluster audit"
# # }
# variable "min_count" {
#   default     = 1
#   description = "Minimum Node Count"
# }
# variable "max_count" {
#   default     = 5
#   description = "Maximum Node Count"
# }
# variable "default_pool_name" {
#   description = "name for the agent pool profile"
#   default     = "linix-pool"
# }
# variable "default_pool_type" {
#   description = "type of the agent pool (AvailabilitySet and VirtualMachineScaleSets)"
#   default     = "VirtualMachineScaleSets"
# }



# variable "aks_enable_rbac" {
#   type = bool
#   description = "Enable RBAC on the AKS cluster."
#   default     = true
# }

# variable "client_id" {
#   default = "A client_id to establish connection with subscription"
# }

# variable "log_analytics_workspace_sku" {
#   description = "The SKU (pricing level) of the Log Analytics workspace. For new subscriptions the SKU should be set to PerGB2018"
#   type        = string
#   default     = "PerGB2018"
# }

# variable "log_retention_in_days" {
#   description = "The retention period for the logs in days"
#   type        = number
#   default     = 30
# }

# variable "cluster_log_analytics_workspace_name" {
#   description = " The name of the Analytics workspace"
#   type        = string
#   default     = null
# }

# variable "enable_log_analytics_workspace" {
#   type        = bool
#   description = "Enable the creation of azurerm_log_analytics_workspace and azurerm_log_analytics_solution or not"
#   default     = true
# }

# variable "enable_azure_policy" {
#   type        = bool
#   description = "Enable azure policy"
#   default     = true
# }

# variable "app_gateway_pip" {
#   type = string
#   description = "Application gateway public ip"
#   default     = "appgw-pip"
# }

# variable "app_gateway_name" {
#   type = string
#   description = "Its an Application gateway name "
#   default     = "sofbang-appgw"
# }

# variable "sku_name" {
#   type = string
#   description = "SKU  name for application gateway"
#   default     = "waf_v2"
# }

# variable "sku_tier" {
#   type = string
#   description =  "SKU  tier for application gateway"
#   default     = "waf_v2"
# }

# variable "gateway-ip-configuration_name" {
#   type = string
#   description =  "Gateway ip configuration name"
#   default     = "gateway-ip-configuration"
# }


# variable "frontend_ip_configuration_name" {
#   type = string
#   description =  "Frontend ip configuration name"
#   default     = "local.frontend_ip_configuration_name"
# }

# variable "frontend_port_port" {
#   type = number
#   description =  "frontend_port_port"
#   default     =   80
# }

# variable "backend_http_settings_cookie_based_affinity" {
#   type = string
#   description =  "backend_http_settings_cookie_based_affinity"
#   default     =   "Disabled"
# }

# variable "backend_http_settings_port" {
#   type = number
#   description =  "Backend_http_settings_port"
#   default     =   80
# }

# variable "backend_http_settings_protocol" {
#   type = string
#   description =  "Backend_http_settings_protocol"
#   default     =   "Http"
# }

# variable "backend_http_settings_request_timeout" {
#   type = number
#   description =  "Backend_http_settings_protocol"
#   default     =   80
# }

# variable "appGw_waf_policy_name" {
#   type = string
#   description =  "Application gateway Web Application firewall policy"
#   default     =   "AppGwWafPolicy"
# }

# variable "Custom_rules_name" {
#   type = string
#   description =  "Custom rules name for application gateway"
#   default     =   "OnlyUSandCanada"
# }

# variable "MatchRule" {
#   type = string
#   description =  "MatchRule Type"
#   default     =   "MatchRule"
# }