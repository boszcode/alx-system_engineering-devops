#Enables successful login using the 'holberton' username and allows opening a file withot encountering any error messages

exec {'update hard limit':
  command  => 'sudo sed -i "/holberton hard/s/5/4000/" /etc/security/limits.conf',
  provider => shell
}

exec {'update soft limit':
  command  => 'sudo sed -i "/holberton hard/s/4/4000/" /etc/security/limits.conf',
  provider => shell
}
