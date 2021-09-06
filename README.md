# netflix-v6 

Does the opposite from the original by acohn:  https://github.com/acohn/netflix-v4
Filters out IPv4 addresses from the DNS records for netflix, forcing the client to
use the IPv6 connection. This helps on DS-Lite providers like 1and1 (1&1) that
get their tunnel servers blocked by netflix.
Additionally, I added a Dockerfile so this service can simply be run by:

```
docker run --name netflixv6 -p 5353:5353 -p 5353:5353/udp h3po/netflixv6
```

