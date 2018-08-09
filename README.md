DC/OS private agent remote exec install
============
This module install DC/OS on private agents with remote exec via SSH

EXAMPLE
-------

```hcl
module "dcos-private-agents-install" {
  source  = "terraform-dcos/dcos-install-private-agents-remote-exec/null"
  version = "~> 0.1"

  bootstrap_private_ip = "${module.dcos-infrastructure.bootstrap.private_ip}"
  bootstrap_port       = "80"
  os_user              = "${module.dcos-infrastructure.public_agents.os_user}"
  dcos_install_mode    = "install"
  dcos_version         = "${var.dcos_version}"
  private_agent_ips     = ["${module.dcos-infrastructure.public_agents.public_ips}"]
  num_private_agents    = "2"
}
```


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bootstrap_port | bootstrap servers port | string | `80` | no |
| bootstrap_private_ip | bootrstrap server private ip | string | - | yes |
| dcos_install_mode | specifies which type of command to execute. Options: `install` or `upgrade` | string | `install` | no |
| dcos_version | specifies which dcos version instruction to use. Options: `1.9.0`, `1.8.8`, etc. _See [dcos_download_path](https://github.com/dcos/tf_dcos_core/blob/master/download-variables.tf) or [dcos_version](https://github.com/dcos/tf_dcos_core/tree/master/dcos-versions) tree for a full list._ | string | `1.11.3` | no |
| num_private_agents | Number of private agents | string | - | yes |
| os_user | The OS user to be used with ssh exec | string | `centos` | no |
| private_agent_ips | List of private agent IPs to SSH to | list | - | yes |

