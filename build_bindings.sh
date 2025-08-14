if [[ "$1" == "--dont-install" ]]; then
  echo "Skipping Go installation as per --dont-install flag"
else
  # install go > 1.24:
  wget https://go.dev/dl/go1.24.1.linux-amd64.tar.gz
  sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.24.1.linux-amd64.tar.gz
  export PATH=$PATH:/usr/local/go/bin
  export PATH=$PATH:~/go/bin
  go install golang.org/x/mobile/cmd/gomobile@latest
  gomobile init
fi

cd go/api/
gomobile bind -target=android -androidapi 21 .
