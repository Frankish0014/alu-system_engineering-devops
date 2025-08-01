# Puppet manifest to configure SSH client
# Set up SSH client configuration to use private key and disable password auth

# Configure SSH to use private key ~/.ssh/school
file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^[[:space:]]*IdentityFile',
}

# Configure SSH to refuse password authentication
file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
  match => '^[[:space:]]*PasswordAuthentication',
}
