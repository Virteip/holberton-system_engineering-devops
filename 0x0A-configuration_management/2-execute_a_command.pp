#Grant a program's dying wish
exec { '2-execute_a_command':
  path     =>  ['usr/bin', '/usr/sbin',],
  provider => shell,
  command  =>  'pkill -f killmenow',}