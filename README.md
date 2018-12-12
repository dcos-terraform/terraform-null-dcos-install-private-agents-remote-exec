DC/OS private agent remote exec install
============
This module install DC/OS on private agents with remote exec via SSH

EXAMPLE
-------

```hcl
module "dcos-private-agents-install" {
  source  = "terraform-dcos/dcos-install-private-agents-remote-exec/null"
  version = "~> 0.1.0"

  bootstrap_private_ip = "${module.dcos-infrastructure.bootstrap.private_ip}"
  bootstrap_port       = "80"
  os_user              = "${module.dcos-infrastructure.private_agents.os_user}"
  dcos_install_mode    = "install"
  dcos_version         = "${var.dcos_version}"
  private_agent_ips     = ["${module.dcos-infrastructure.private_agents.public_ips}"]
  num_private_agents    = "2"
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bootstrap_port | TCP port bootstrap nginx is listening on. Used to build the bootstrap URL. | string | `80` | no |
| bootstrap_private_ip | Private IP bootstrap nginx is listening on. Used to build the bootstrap URL. | string | - | yes |
| dcos_install_mode | Type of command to execute. Options: install or upgrade | string | `install` | no |
| dcos_skip_checks | Upgrade option: Used to skip all dcos checks that may block an upgrade if any DC/OS component is unhealthly. (optional) applicable: 1.10+ | string | `false` | no |
| dcos_version | Specifies which DC/OS version instruction to use. Options: 1.9.0, 1.8.8, etc. See dcos_download_path or dcos_version tree for a full list. | string | `1.11.3` | no |
| depends_on | Modules are missing the depends_on feature. Faking this feature with input and output variables | string | `<list>` | no |
| num_private_agents | Specify the amount of private agents. These agents will provide your main resources | string | - | yes |
| os_user | The OS user to be used | string | `centos` | no |
| private_agent_ips | List of private agent IPs to SSH to | list | - | yes |
| trigger | Triggers for null resource | string | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| depends | Modules are missing the depends_on feature. Faking this feature with input and output variables |

