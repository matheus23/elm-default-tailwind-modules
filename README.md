# elm-default-tailwind-modules

> The default tailwind classes in Elm as elm-css generated using elm-tailwind-modules

## Get started

```
elm install matheus23/elm-default-tailwind-modules
```

Did you ever want to try out [tailwindcss](https://tailwindcss.com) in elm, but don't want to set up npm and postcss in your project?

Use these elm-css modules. They contain everything you would get with a default tailwind configuration.

## Need a custom tailwind configuration?

This package already comes with some configuration:

* It postprocesses the css with `autoprefixer` to add as much browser compatibility as possible
* It includes the `@tailwindcss/typography` plugin
* It includes the `@tailwindcss/forms` plugin
* It includes the `@tailwindcss/aspect-ratio` plugin

If you still need to customize the generated css utilities functions (for example for adjusting the colors to your brand), you can do so by providing a tailwind configuration file. However, then you'll need to generate the elm files yourself using [`elm-tailwind-modules`](https://github.com/matheus23/elm-tailwind-modules).

If you want to know how this works, take a look at the [code to generate](https://github.com/matheus23/elm-tailwind-modules/blob/main/generate.js) this package.
