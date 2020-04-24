# Chocolatey Workshop Repository

## Prerequisites

1. You need an inventory file in the project root. Example here:

        inventory.yaml:

        version: 2
        groups:
            - name: nexus
                targets:
                - <your repo server>
            - name: clients
                targets:
                - <choco workstation 1>
                - ...
            config:
            transport: winrm
            winrm:
            user: Administrator
            password: "your password"
            ssl: false

2. You need the chocolatey-agent and chocolatey.extension packages from your trial email and a chocolatey.license.xml from your trial email as well. Place those in the modules/choco_workshop/files folder.

3. Run `bolt plan run choco_workshop::prepare`