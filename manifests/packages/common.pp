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
  # chosen 1.25.22 which is latest stable on Mar 26, 2014 and recommended for server usage
  exec { 'install-rvm':
    command => "bash /tmp/rvm --version 1.25.22",
    creates => '/usr/local/rvm/bin/rvm',
    require => Exec['download-rvm-install'],
  }
  file { '/tmp/rvm':
    ensure  => absent,
    require => Exec['install-rvm'],
  }
}