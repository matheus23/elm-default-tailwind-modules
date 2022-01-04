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

If you want to know how this works, take a look at the [code to generate](https://github.com/matheus23/elm-default-tailwind-modules/blob/main/generate.js) this package.

## User guide

Most of the time, you can use Tailwind classes with the same name, and [html-to-elm.com](https://html-to-elm.com) can even generate them!  
But sometimes, you may find a few quirks. Here are some with their workaround.

### Form plugin

If you have forms in your app, you will miss the form plugin style, even if it's already included.  
To get them, you need to add `form_*` attributes (ex: `form_input`, `form_select`, `form_checkbox`...) to your input elements.  
See https://github.com/matheus23/elm-default-tailwind-modules/issues/4 for more details.

### Group utility

The [group modifier](https://tailwindcss.com/docs/hover-focus-and-other-states#styling-based-on-parent-state) doesn't work (see https://github.com/matheus23/elm-default-tailwind-modules/issues/3).  
One workaround can be to add it with global CSS and classes, in a separate stylesheet or using `Global`:

```elm
Global.global [ Global.selector ".group:hover .group-hover-flex" [ Tw.flex ] ]
```

### Focus within

The [focus within](https://developer.mozilla.org/en-US/docs/Web/CSS/:focus-within) pseudo class is missing from elm-css, this is not related to Tailwind but you may need it to implement some Tailwind design.  
A workaround can be to implement your own:

```elm
focusWithin : List Css.Style -> Css.Style
focusWithin =
    Css.pseudoClass "focus-within"
```


Hope you will find these tips helpful ;)
