plan choco_workshop() {
  run_task('deploy_nexus_oss', nexus)
  run_plan('choco_workshop::license_choco', clients)
  run_task('choco_workshop::install_packages', clients)
  run_command("New-Item -Type Directory C:\\Administrator\\Code --Force", clients)
  run_command("git clone git@github.com:matthewrstone/choco_workshop.git C:\\Administrator\\Code\\choco_workshop", clients)
}
