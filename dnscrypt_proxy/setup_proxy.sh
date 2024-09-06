#!/bin/bash

# Set the paths
dotfiles_dir="$HOME/.dotfiles"
dnscrypt_proxy_dir="$dotfiles_dir/dnscrypt_proxy"

# Add the content of dnscrypt-proxy.toml to the dnscrypt-proxy configuration file
if [ -f $(brew --prefix)/etc/dnscrypt-proxy.toml ]; then
  echo "Adding the content of dnscrypt-proxy.toml to the dnscrypt-proxy configuration file"
  echo "\n$(cat $dnscrypt_proxy_dir/local-proxy.toml)" >> $(brew --prefix)/etc/dnscrypt-proxy.toml
fi
