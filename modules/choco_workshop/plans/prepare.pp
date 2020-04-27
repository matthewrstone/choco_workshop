plan choco_workshop::prepare() {
  run_task('choco_workshop::deploy_nexus', clients)
  run_plan('choco_workshop::license_choco', clients)
  run_task('choco_workshop::install_packages', clients)
  run_plan('choco_workshop::clone_repo', clients)
}
