<script context="module">
  export async function load({ session }) {
    return {
      props: {
        pkg: session.pkg,
      },
    };
  }
</script>

<script>
  import { onMount } from "svelte";

  onMount(async () => {
    userAgent = window.navigator.userAgent;
    console.log("Please open your browser to: https://localhost:8080");
    console.log(`window.navigator.userAgent: ${userAgent}`);
  });

  export let pkg, userAgent;
</script>

<body>
  <h1>SvelteKit HTTPS Example:</h1>
  <p>svelte: {pkg.devDependencies["svelte"]}</p>
  <p>@sveltejs/kit: {pkg.devDependencies["@sveltejs/kit"]}</p>
  <p>userAgent: {userAgent}</p>
</body>

<style>
  body {
    font-family: sans-serif;
    font-size: 10px;
  }
</style>
