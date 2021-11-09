;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	localhost. root.localhost. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@       IN      NS      ns.example.com.
@       IN      A       10.1.0.10
@       IN      AAAA    ::1
ns      IN      A       10.1.0.10
		IN		TXT		"nameservers"
example.net.	IN	CNAME		example.com.
example.org.	IN	CNAME		example.com.
				