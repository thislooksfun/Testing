const semParse = require("semver/functions/parse");
console.dir(semParse("1.5.2-dev.8"));

// const fs = require("fs");
// const path = require("path");

// const docRoot = path.join(__dirname, "../docs");
// const dir = fs.readdirSync(docRoot);

// for (const name of dir) {
//   console.log(`> ${name}`);
// }

// const { version } = require("../package.json");
// name = `v${version}`;
// links.push("latest");

// const { major, minor, patch, prerelease } = semParse(version);
// console.dir(semParse(version));
// if (prerelease.length > 0) {
//   const prType = prerelease[0];
//   links.push(`v${major}.${minor}.${patch}-${prType}`);
//   links.push(prType);
// } else {
//   links.push(`v${major}.${minor}.x`);
//   links.push(`v${major}.x.x`);
//   links.push("stable");
// }
