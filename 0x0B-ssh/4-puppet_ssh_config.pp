$str ="
     ForwardAgent yes
     IdentityFile ~/.ssh/holberton
     PasswordAuthentication no"

file_line {'NoPassword':
  path  => '/etc/ssh/ssh_config',
  line  => $str,
  match => $str,
}