plan choco_workshop::install_edge(){
  apply('localhost') {
    package { 'microsoft-edge' : ensure => '81.0.416.62' }
  }
}
