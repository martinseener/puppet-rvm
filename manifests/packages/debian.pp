class rvm::packages::debian {

  if ! defined(Package['build-essential'])  { package { 'build-essential': ensure => installed } }
  if ! defined(Package['openssl'])          { package { 'openssl': ensure => installed } }
  if ! defined(Package['libreadline6'])     { package { 'libreadline6': ensure => installed } }
  if ! defined(Package['libreadline6-dev']) { package { 'libreadline6-dev': ensure => installed } }
  if ! defined(Package['curl'])             { package { 'curl': ensure => installed } }
  if ! defined(Package['git-core'])         { package { 'git-core': ensure => installed } }
  if ! defined(Package['zlib1g'])           { package { 'zlib1g': ensure => installed } }
  if ! defined(Package['zlib1g-dev'])       { package { 'zlib1g-dev': ensure => installed } }
  if ! defined(Package['bash'])             { package { 'bash': ensure => installed } }
  if ! defined(Package['patch'])            { package { 'patch': ensure => installed } }
  if ! defined(Package['gawk'])             { package { 'gawk': ensure => installed } }
  if ! defined(Package['sed'])              { package { 'sed': ensure => installed } }
  if ! defined(Package['grep'])             { package { 'grep': ensure => installed } }
  if ! defined(Package['gzip'])             { package { 'gzip': ensure => installed } }
  if ! defined(Package['bzip2'])            { package { 'bzip2': ensure => installed } }
  if ! defined(Package['libssl-dev'])       { package { 'libssl-dev': ensure => installed } }
  if ! defined(Package['libyaml-dev'])      { package { 'libyaml-dev': ensure => installed } }
  if ! defined(Package['libsqlite3-dev'])   { package { 'libsqlite3-dev': ensure => installed } }
  if ! defined(Package['sqlite3'])          { package { 'sqlite3': ensure => installed } }
  if ! defined(Package['libxslt1-dev'])     { package { 'libxslt1-dev': ensure => installed } }
  if ! defined(Package['libxml2-dev'])      { package { 'libxml2-dev': ensure => installed } }
  if ! defined(Package['autoconf'])         { package { 'autoconf': ensure => installed } }
  if ! defined(Package['libc6-dev'])        { package { 'libc6-dev': ensure => installed } }
  if ! defined(Package['libncurses5-dev'])  { package { 'libncurses5-dev': ensure => installed } }
  if ! defined(Package['automake'])         { package { 'automake': ensure => installed } }
  if ! defined(Package['libtool'])          { package { 'libtool': ensure => installed } }
  if ! defined(Package['bison'])            { package { 'bison': ensure => installed } }
  if ! defined(Package['subversion'])       { package { 'subversion': ensure => installed } }
  if ! defined(Package['pkg-config'])       { package { 'pkg-config': ensure => installed } }

}