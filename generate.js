import * as elmTailwindModules from "elm-tailwind-modules";
import autoprefixer from "autoprefixer";
import typography from "@tailwindcss/typography";
import forms from "@tailwindcss/forms";
import aspectRatio from "@tailwindcss/aspect-ratio";

elmTailwindModules.run({
    directory: "src",
    generateDocumentation: true,
    moduleName: "Tailwind",
    postcssPlugins: [autoprefixer],
    tailwindConfig: {
        variants: [],
        purge: false,
        plugins: [
            typography,
            forms,
            aspectRatio,
        ]
    }
});
