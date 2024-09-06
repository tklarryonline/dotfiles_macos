# DNSCrypt Proxy

[dnscrypt-proxy] is a flexible DNS proxy, with support for modern encrypted DNS protocols and
[Cloaking Rules][cloaking-rules].

After installing it with Brew, run the following script to have all `*.test` domains resolve to
`127.0.0.1` with the host command.

```sh
$ sh setup_proxy.sh
```

[cloaking-rules]: https://github.com/DNSCrypt/dnscrypt-proxy/wiki/Cloaking
[dnscrypt-proxy]: https://github.com/DNSCrypt/dnscrypt-proxy 
