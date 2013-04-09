class avalon::packages {
  include mediainfo
  
  package { ['cronie', 'curl', 'sqlite-devel', 'mysql-devel', 'v8-devel', 'zip', 'libyaml-devel', 'libffi-devel', 'lsof']:
    ensure  => present,
    require => [Class['epel'],Class['nulrepo']],
  }
}