import * as elmTailwindModules from "elm-tailwind-modules";
import autoprefixer from "autoprefixer";
import typography from "@tailwindcss/typography";
import forms from "@tailwindcss/forms";
import aspectRatio from "@tailwindcss/aspect-ratio";
import fs from "fs";
import lockfile from "@yarnpkg/lockfile";


// Find out which tailwind version is used

let tailwindVersion, elmTailwindModulesVersion;
try {

    const yarnLockFile = fs.readFileSync("yarn.lock", "utf8");
    const yarnLock = lockfile.parse(yarnLockFile).object;
    const pkgJson = fs.readFileSync("package.json", "utf8");
    const pkg = JSON.parse(pkgJson);
    
    tailwindVersion = yarnLock[`tailwindcss@${pkg.dependencies.tailwindcss}`].version;
    elmTailwindModulesVersion = yarnLock[`elm-tailwind-modules@${pkg.dependencies["elm-tailwind-modules"]}`].version;
} catch {
    console.error("Couldn't figure out tailwind and/or elm-tailwind-modules version. Make sure to run yarn install first.");
    process.exit(1);
}

console.log(`Generating for tailwindcss version ${tailwindVersion} using elm-tailwind-modules version ${elmTailwindModulesVersion}.`);


// Create a custom documentation generator that contains the tailwind version used

const docGen = {
    ...elmTailwindModules.docs.defaultDocumentationGenerator,
    utilitiesModuleDocs: definedNames => `
{-|


## Tailwind Utilities

This module contains

1.  Tailwind's style reset in the \`globalStyles\` definition.
    Make sure to include this in your HTML via elm-css' \`Css.Global.global\` function.
2.  All default tailwind css utility classes from **tailwind version ${tailwindVersion}.**
    You can browse the documentation on
    [tailwind's website](https://tailwindcss.com/docs)

These utilities were generated using [elm-tailwind-modules](https://github.com/matheus23/elm-tailwind-modules) version ${elmTailwindModulesVersion}.

${definedNames.map(c => `@docs ${c}`).join("\n")}

-}
`,
};


// Run elm-tailwind-modules

elmTailwindModules.run({
    directory: "src",
    generateDocumentation: docGen,
    moduleName: "Tailwind",
    postcssPlugins: [autoprefixer],
    tailwindConfig: {
        variants: [],
        purge: false,
        plugins: [
            typography,
            forms({ strategy: "class" }),
            aspectRatio,
        ]
    }
});
