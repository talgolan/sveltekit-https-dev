# SvelteKit HTTPS Example:

This respository is designed to demonstrate the following:

[ Via @sveltejs/kit: 1.0.0-next.168 ]

- Simplest possible configuration to allow for HTTPS development @ https://localhost:8080

[ Via @sveltejs/kit: 1.0.0-next.184 (any version > 168) ]

- BROKEN for HTTPS development @ https://localhost:8080

## Assumption:

- Mac OS
- brew (https://brew.sh/) installed

## Instructions (part 1):

1. git clone https://github.com/talgolan/sveltekit-https-dev.git
2. cd sveltekit-https-dev
3. npm install
4. npm run install_mkcert
5. Open browser @ https://localhost:8080

## First observation:

- Notice "SvelteKit v1.0.0-next.168"
- When the browser opens (Chrome/Firefox/Safari) there will be no security warning.

## Instructions (part 2):

1. ctrl-c
2. npm run switch
3. npm run dev
4. Open browser @ https://localhost:8080

## Second observation:

- Notice "SvelteKit v1.0.0-next.184"
- When the browser opens (Chrome/Firefox/Safari) there will be an obvious security warning.

## Instructions (part 3):

1. ctrl-c
2. npm run switch
3. npm run dev
4. Open browser @ https://localhost:8080

## Third observation:

- Notice "SvelteKit v1.0.0-next.168"
- When the browser opens (Chrome/Firefox/Safari) the security warning is gone.

## Final observation:

- SvelteKit v1.0.0-next.168 works for HTTPS development
- SvelteKit v1.0.0-next.184 (versions > v1.0.0-next.168) are not properly passing key/cert information.
