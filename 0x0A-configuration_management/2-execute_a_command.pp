#Grant a program's dying wish
exec { 'pkill':
  command => 'pkill -x killmenow',
  path    => '/usr/bin/',
  returns => [0,1],}