class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC0hyl3AzX4FVKSiWhT8jltxW97bZdbPIHjp2Wn4w0nL5JIBWSpy/8BNuTMlNAaCYfQDd2AwYKrOzmRb0FY66RaBRzqIzE08YpOOq6f0wv9nnHipiyTvfgF54t9PcGug9mJNMOXGk90kNl5mw5nLf5oTaCVwaJMkt9PtgqCXZvQHmlAOJBLpT6F2aGQoPUlfpEKcCNs+pVYK5vezhyKtpssjs5dKjVn8itEmt1p5iwwyYEWz1K4a912zBK/UxFw0Ks0MVsYJE4zsmpNyP9S6h4Eo+adcO37cYWv6Ikg0w9zVSTfp4nZ0+YAC/FK2l99QHYFx3F34Rtqd4x648x6GDO9',
	}  
}
