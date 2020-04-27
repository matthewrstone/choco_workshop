plan choco_workshop::clone_repo($server) {
  apply('localhost') {
    vcsrepo { '/path/to/repo':
      ensure   => present,
      provider => git,
      source   => 'git@github.com:matthewrstone/choco_workshop.git',
    }
}
