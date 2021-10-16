import fs from "fs";

export async function handle({ request, resolve }) {
  const pkg = JSON.parse(fs.readFileSync("./package.json", "utf-8"));

  request.locals.pkg = pkg;
  response = await resolve(request);
  return response;
}

export function getSession(request) {
  const theReturn = {
    pkg: request.locals.pkg,
  };
  return theReturn;
}
