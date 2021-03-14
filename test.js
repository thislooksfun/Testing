const semver = require("semver");

console.dir(semver.validRange("alpha"));
console.dir(semver.validRange("beta"));
console.dir(semver.validRange("v1.x.x"));
console.dir(semver.validRange("v1.1.x"));
