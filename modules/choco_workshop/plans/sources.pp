plan choco_workshop::sources($server) {
  apply('localhost') {
    chocolateysource { 'internal' :
          ensure   => present,
          location => "http://${server}:8081/repository/choco/",
    }
    chocolateysource { 'chocolatey' : ensure => absent }
  }
}
