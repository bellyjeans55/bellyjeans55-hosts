class hosts {
  file { '/etc/hosts':
    ensure   => file,
    content  => template("${module_name}/hosts.erb"),
    owner    => root,
    group    => root,
    mode     => '0644',
  }
}
