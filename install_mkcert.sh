echo "This script assumes you are running Mac OS, and"
echo "have brew (https://brew.sh/) installed."
echo
echo "===== mkcert ====="
echo "https://github.com/FiloSottile/mkcert"
echo ">>>>> mkcert is a simple tool for making locally-trusted development certificates."
echo ">>>>> It requires no configuration."
echo
echo "Installing mkcert..."
brew install mkcert
brew install nss
echo
echo "Generating key and cert for https://localhost"
echo
echo ">>>>> The key and cert will be named:"
echo ">>>>> localhost-key.pem & localhost-cert.pem respectively"
echo ">>>>> and will be saved to the root of this svelte kit installation"
echo
echo "Initiating: npm run dev (see package.json for details)."
npm run dev
echo
echo "Opening the default browser to https://localhost:8080"
open "https://localhost:8080"
