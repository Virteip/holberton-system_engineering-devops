$str ='
     ForwardAgent yes
     IdentityFile ~/.ssh/holberton
     PasswordAuthentication no'
    file { '/etc/ssh/ssh_config':
      content => $str,}