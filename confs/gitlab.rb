external_url 'https://localhost'
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password').strip

gitlab_rails['backup_keep_time'] = 604800
gitlab_rails['time_zone'] = 'America/Recife'

gitlab_rails['ldap_enabled'] = true
gitlab_rails['prevent_ldap_sign_in'] = false
gitlab_rails['ldap_servers'] = {
'main' => {
  'label' => 'LDAP',
  'host' =>  'x.x.x.x',
  'port' => 389,
  'uid' => 'sAMAccountName',
  'encryption' => 'plain',
  'verify_certificates' => true,
  'bind_dn' => 'cn=x,ou=x,ou=x,dc=x,DC=local',
  'password' => 'x',
  'tls_options' => {
    'ca_file' => '',
    'ssl_version' => '',
    'ciphers' => '',
    'cert' => '',
    'key' => ''
  },
  'timeout' => 10,
  'active_directory' => true,
  'allow_username_or_email_login' => true,
  'block_auto_created_users' => false,
  'base' => 'dc=x,dc=local',
  'user_filter' => '',
  'attributes' => {
    'username' => ['uid', 'userid', 'sAMAccountName'],
    'email' => ['mail', 'email', 'userPrincipalName'],
    'name' => 'cn',
    'first_name' => 'givenName',
    'last_name' => 'sn'
  },
  'lowercase_usernames' => true
  }
}
