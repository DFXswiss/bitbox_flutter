export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/go/bin
gomobile init || go install golang.org/x/mobile/cmd/gomobile@latest
gomobile init

echo "Binding Bitbox to Android"
# Force 16 KB ELF page alignment on the emitted .so libraries. Android 15+
# devices can use 16 KB memory pages and Google Play rejects bundles whose
# native code is only 4 KB aligned. `-extldflags` reaches the NDK linker.
gomobile bind -ldflags="-extldflags=-Wl,-z,max-page-size=16384" -o $1 -target=android -androidapi 24 .
