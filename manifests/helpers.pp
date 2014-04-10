class rvm::helpers {
  exec { 'rvm-cleanup':
    command     => '/usr/local/rvm/bin/rvm cleanup sources',
    refreshonly => 'true',
  }

  exec { 'upgrade-rvm':
    command     => '/usr/local/rvm/bin/rvm get stable ; /usr/local/rvm/bin/rvm reload',
    refreshonly => 'true',
  }
}
