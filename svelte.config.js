/** @type {import('@sveltejs/kit').Config} */
import fs from "fs";
const config = {
  kit: {
    // hydrate the <div id="svelte"> element in src/app.html
    target: "#svelte",
    vite: {
      server: {
        https: {
          key: fs.readFileSync("./localhost-key.pem"),
          cert: fs.readFileSync("./localhost-cert.pem"),
        },
      },
    },
  },
};

export default config;
