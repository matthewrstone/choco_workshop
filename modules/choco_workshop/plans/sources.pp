plan choco_workshop::sources() {
  apply('localhost') {
    chocolateysource { 'internal' :
          ensure   => present,
          location => "http://localhost:8081/repository/internalrepo/",
    }
    chocolateysource { 'chocolatey' : ensure => absent }
  }
}
