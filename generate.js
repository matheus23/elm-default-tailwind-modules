import * as elmTailwindModules from "elm-tailwind-modules";
import autoprefixer from "autoprefixer";
import typography from "@tailwindcss/typography";
import forms from "@tailwindcss/forms";
import aspectRatio from "@tailwindcss/aspect-ratio";
import fs from "fs";
import lockfile from "@yarnpkg/lockfile";


// Find out which tailwind version is used

const yarnLockFile = fs.readFileSync("yarn.lock", "utf8");
const yarnLock = lockfile.parse(yarnLockFile).object;
const pkgJson = fs.readFileSync("package.json", "utf8");
const pkg = JSON.parse(pkgJson);

const tailwindVersion = yarnLock[`tailwindcss@${pkg.dependencies.tailwindcss}`].version;

console.log(`Generating for tailwindcss version ${tailwindVersion}`);


// Create a custom documentation generator that generates
// 1. less text (we're getting close to elm package upload restrictions)
// 2. contains the tailwind version used

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

${definedNames.map(c => `@docs ${c}`).join("\n")}

-}
`,

    utilitiesDefinition: (_elmName, declaration) => `
{-| The tailwind class \`${declaration.originalClassName}\`.

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

|-}
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
