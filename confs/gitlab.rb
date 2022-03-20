external_url 'https://localhost'
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password').strip
gitlab_rails['backup_keep_time'] = 604800
gitlab_rails['time_zone'] = 'America/Recife'
