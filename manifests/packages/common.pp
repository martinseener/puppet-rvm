class rvm::packages::common {
  Exec {
    path => '/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/rvm/bin',
  }
  
  exec { 'download-rvm-install':
    command => 'wget --no-check-certificate -O /tmp/rvm https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer',
    creates => '/tmp/rvm',
    unless  => 'which rvm',
  }
  # install-rvm command enhanced to use a specific rvm version
  # 1.25.22 at Mar, 26, 2014 and recommended for server usage
  # 1.26.9 at 08.01.2015
  exec { 'get-rvm-key':
    command => "curl -sSL https://rvm.io/mpapis.asc | gpg --import -",
    requires => Exec['download-rvm-install'],
  }

  exec { 'install-rvm':
    command => "bash /tmp/rvm --version 1.26.9",
    creates => '/usr/local/rvm/bin/rvm',
    require => Exec['get-rvm-key'],
  }
  file { '/tmp/rvm':
    ensure  => absent,
    require => Exec['install-rvm'],
  }
}

