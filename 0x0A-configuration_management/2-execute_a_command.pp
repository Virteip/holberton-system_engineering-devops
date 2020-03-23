#Grant a program's dying wish
exec { '2-execute_a_command':
  path    =>  [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/', ],
  command =>  'pkill -f killmenow',
  returns =>  [0,1,]}