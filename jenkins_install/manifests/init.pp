class jenkins_install(

  Integer[1]$port=8080,
  String[1]$proxy='192.168.0.44',


  ) {



    class { 'jenkins':
    proxy_port => $::jenkins_install::port,
    proxy_host => $::jenkins_install::proxy,
    lts        => true,
    }

    ensure_packages ( ['git','vim','nano','net-tools','bash-completion','wget'],

    {'ensure' => 'present'})



    exec {'install_pdk':
      environment => [
        "http_proxy=http://${::jenkins_install::proxy}:${::jenkins_install::port}",
        "https_proxy=http://${::jenkins_install::proxy}}:${::jenkins_install::port}",
      ],
      command     => '/usr/bin/yum -Uvh  https://yum.puppet.com/puppet-tools-release-el-7.noarch.rpm',
      subscribe   => Class['jenkins'],
      refreshonly => true,
    }




    package {'pdk':
    ensure    => installed,
    subscribe => Exec['install_pdk'],
  }


}
