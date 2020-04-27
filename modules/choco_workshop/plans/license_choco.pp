plan choco_workshop::license_choco() {
  # run_command('choco upgrade choco -y', clients)
  run_command('New-Item "C:\\ProgramData\\chocolatey\\license\\" -Type Directory -Force', clients)
  run_command('New-Item "C:\\Temp" -Type Directory -Force', clients)
  upload_file("choco_workshop/chocolatey-agent.0.9.3.nupkg", "C:\\Temp\\chocolatey-agent.0.9.3.nupkg", clients)
  upload_file("choco_workshop/chocolatey.extension.2.0.3.nupkg", "C:\\Temp\\chocolatey.extension.2.0.3.nupkg", clients)
  upload_file("choco_workshop/chocolatey.license.xml", "C:\\ProgramData\\chocolatey\\license\\chocolatey.license.xml", clients)
  run_command("choco upgrade chocolatey.extension --pre --source c:\\Temp -y", clients)
}
