#Create a new file
file { '0-create_a_file.pp':
  ensure  =>  file,
  path    =>  '/tmp/holberton',
  mode    =>  '0744',
  owner   =>  'www-data',
  group   =>  'www-data',
  content =>  'I love Puppet'}