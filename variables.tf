variable "bootstrap_port" {
  default     = "80"
  description = "bootstrap servers port"
}

variable "bootstrap_private_ip" {
  description = "bootrstrap server private ip"
}

variable "dcos_install_mode" {
  default     = "install"
  description = "specifies which type of command to execute. Options: `install` or `upgrade`"
}

variable "dcos_version" {
  default     = "1.11.3"
  description = "specifies which dcos version instruction to use. Options: `1.9.0`, `1.8.8`, etc. _See [dcos_download_path](https://github.com/dcos/tf_dcos_core/blob/master/download-variables.tf) or [dcos_version](https://github.com/dcos/tf_dcos_core/tree/master/dcos-versions) tree for a full list._"
}

variable "num_private_agents" {
  description = "Number of private agents"
}

variable "private_agent_ips" {
  type        = "list"
  description = "List of private agent IPs to SSH to"
}

variable "os_user" {
  default     = "centos"
  description = "The OS user to be used with ssh exec"
}

variable "depends_on" {
  default     = []
  description = "modules are missing the depends_on feature. Faking this feature with input and output variables"
}
