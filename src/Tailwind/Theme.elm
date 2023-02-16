module Tailwind.Theme exposing
    ( Color
    , inherit
    , current
    , transparent
    , black
    , white
    , slate_50
    , slate_100
    , slate_200
    , slate_300
    , slate_400
    , slate_500
    , slate_600
    , slate_700
    , slate_800
    , slate_900
    , gray_50
    , gray_100
    , gray_200
    , gray_300
    , gray_400
    , gray_500
    , gray_600
    , gray_700
    , gray_800
    , gray_900
    , zinc_50
    , zinc_100
    , zinc_200
    , zinc_300
    , zinc_400
    , zinc_500
    , zinc_600
    , zinc_700
    , zinc_800
    , zinc_900
    , neutral_50
    , neutral_100
    , neutral_200
    , neutral_300
    , neutral_400
    , neutral_500
    , neutral_600
    , neutral_700
    , neutral_800
    , neutral_900
    , stone_50
    , stone_100
    , stone_200
    , stone_300
    , stone_400
    , stone_500
    , stone_600
    , stone_700
    , stone_800
    , stone_900
    , red_50
    , red_100
    , red_200
    , red_300
    , red_400
    , red_500
    , red_600
    , red_700
    , red_800
    , red_900
    , orange_50
    , orange_100
    , orange_200
    , orange_300
    , orange_400
    , orange_500
    , orange_600
    , orange_700
    , orange_800
    , orange_900
    , amber_50
    , amber_100
    , amber_200
    , amber_300
    , amber_400
    , amber_500
    , amber_600
    , amber_700
    , amber_800
    , amber_900
    , yellow_50
    , yellow_100
    , yellow_200
    , yellow_300
    , yellow_400
    , yellow_500
    , yellow_600
    , yellow_700
    , yellow_800
    , yellow_900
    , lime_50
    , lime_100
    , lime_200
    , lime_300
    , lime_400
    , lime_500
    , lime_600
    , lime_700
    , lime_800
    , lime_900
    , green_50
    , green_100
    , green_200
    , green_300
    , green_400
    , green_500
    , green_600
    , green_700
    , green_800
    , green_900
    , emerald_50
    , emerald_100
    , emerald_200
    , emerald_300
    , emerald_400
    , emerald_500
    , emerald_600
    , emerald_700
    , emerald_800
    , emerald_900
    , teal_50
    , teal_100
    , teal_200
    , teal_300
    , teal_400
    , teal_500
    , teal_600
    , teal_700
    , teal_800
    , teal_900
    , cyan_50
    , cyan_100
    , cyan_200
    , cyan_300
    , cyan_400
    , cyan_500
    , cyan_600
    , cyan_700
    , cyan_800
    , cyan_900
    , sky_50
    , sky_100
    , sky_200
    , sky_300
    , sky_400
    , sky_500
    , sky_600
    , sky_700
    , sky_800
    , sky_900
    , blue_50
    , blue_100
    , blue_200
    , blue_300
    , blue_400
    , blue_500
    , blue_600
    , blue_700
    , blue_800
    , blue_900
    , indigo_50
    , indigo_100
    , indigo_200
    , indigo_300
    , indigo_400
    , indigo_500
    , indigo_600
    , indigo_700
    , indigo_800
    , indigo_900
    , violet_50
    , violet_100
    , violet_200
    , violet_300
    , violet_400
    , violet_500
    , violet_600
    , violet_700
    , violet_800
    , violet_900
    , purple_50
    , purple_100
    , purple_200
    , purple_300
    , purple_400
    , purple_500
    , purple_600
    , purple_700
    , purple_800
    , purple_900
    , fuchsia_50
    , fuchsia_100
    , fuchsia_200
    , fuchsia_300
    , fuchsia_400
    , fuchsia_500
    , fuchsia_600
    , fuchsia_700
    , fuchsia_800
    , fuchsia_900
    , pink_50
    , pink_100
    , pink_200
    , pink_300
    , pink_400
    , pink_500
    , pink_600
    , pink_700
    , pink_800
    , pink_900
    , rose_50
    , rose_100
    , rose_200
    , rose_300
    , rose_400
    , rose_500
    , rose_600
    , rose_700
    , rose_800
    , rose_900
    , Opacity
    , opacity0
    , opacity5
    , opacity10
    , opacity20
    , opacity25
    , opacity30
    , opacity40
    , opacity50
    , opacity60
    , opacity70
    , opacity75
    , opacity80
    , opacity90
    , opacity95
    , opacity100
    )

{-|


## This Tailwind Theme

This module contains all colors and opacities from your tailwind configuration.

If you want to extend the set of available colors or opacities, take a look [configuring tailwind].


### Colors

@docs Color
@docs inherit
@docs current
@docs transparent
@docs black
@docs white
@docs slate_50
@docs slate_100
@docs slate_200
@docs slate_300
@docs slate_400
@docs slate_500
@docs slate_600
@docs slate_700
@docs slate_800
@docs slate_900
@docs gray_50
@docs gray_100
@docs gray_200
@docs gray_300
@docs gray_400
@docs gray_500
@docs gray_600
@docs gray_700
@docs gray_800
@docs gray_900
@docs zinc_50
@docs zinc_100
@docs zinc_200
@docs zinc_300
@docs zinc_400
@docs zinc_500
@docs zinc_600
@docs zinc_700
@docs zinc_800
@docs zinc_900
@docs neutral_50
@docs neutral_100
@docs neutral_200
@docs neutral_300
@docs neutral_400
@docs neutral_500
@docs neutral_600
@docs neutral_700
@docs neutral_800
@docs neutral_900
@docs stone_50
@docs stone_100
@docs stone_200
@docs stone_300
@docs stone_400
@docs stone_500
@docs stone_600
@docs stone_700
@docs stone_800
@docs stone_900
@docs red_50
@docs red_100
@docs red_200
@docs red_300
@docs red_400
@docs red_500
@docs red_600
@docs red_700
@docs red_800
@docs red_900
@docs orange_50
@docs orange_100
@docs orange_200
@docs orange_300
@docs orange_400
@docs orange_500
@docs orange_600
@docs orange_700
@docs orange_800
@docs orange_900
@docs amber_50
@docs amber_100
@docs amber_200
@docs amber_300
@docs amber_400
@docs amber_500
@docs amber_600
@docs amber_700
@docs amber_800
@docs amber_900
@docs yellow_50
@docs yellow_100
@docs yellow_200
@docs yellow_300
@docs yellow_400
@docs yellow_500
@docs yellow_600
@docs yellow_700
@docs yellow_800
@docs yellow_900
@docs lime_50
@docs lime_100
@docs lime_200
@docs lime_300
@docs lime_400
@docs lime_500
@docs lime_600
@docs lime_700
@docs lime_800
@docs lime_900
@docs green_50
@docs green_100
@docs green_200
@docs green_300
@docs green_400
@docs green_500
@docs green_600
@docs green_700
@docs green_800
@docs green_900
@docs emerald_50
@docs emerald_100
@docs emerald_200
@docs emerald_300
@docs emerald_400
@docs emerald_500
@docs emerald_600
@docs emerald_700
@docs emerald_800
@docs emerald_900
@docs teal_50
@docs teal_100
@docs teal_200
@docs teal_300
@docs teal_400
@docs teal_500
@docs teal_600
@docs teal_700
@docs teal_800
@docs teal_900
@docs cyan_50
@docs cyan_100
@docs cyan_200
@docs cyan_300
@docs cyan_400
@docs cyan_500
@docs cyan_600
@docs cyan_700
@docs cyan_800
@docs cyan_900
@docs sky_50
@docs sky_100
@docs sky_200
@docs sky_300
@docs sky_400
@docs sky_500
@docs sky_600
@docs sky_700
@docs sky_800
@docs sky_900
@docs blue_50
@docs blue_100
@docs blue_200
@docs blue_300
@docs blue_400
@docs blue_500
@docs blue_600
@docs blue_700
@docs blue_800
@docs blue_900
@docs indigo_50
@docs indigo_100
@docs indigo_200
@docs indigo_300
@docs indigo_400
@docs indigo_500
@docs indigo_600
@docs indigo_700
@docs indigo_800
@docs indigo_900
@docs violet_50
@docs violet_100
@docs violet_200
@docs violet_300
@docs violet_400
@docs violet_500
@docs violet_600
@docs violet_700
@docs violet_800
@docs violet_900
@docs purple_50
@docs purple_100
@docs purple_200
@docs purple_300
@docs purple_400
@docs purple_500
@docs purple_600
@docs purple_700
@docs purple_800
@docs purple_900
@docs fuchsia_50
@docs fuchsia_100
@docs fuchsia_200
@docs fuchsia_300
@docs fuchsia_400
@docs fuchsia_500
@docs fuchsia_600
@docs fuchsia_700
@docs fuchsia_800
@docs fuchsia_900
@docs pink_50
@docs pink_100
@docs pink_200
@docs pink_300
@docs pink_400
@docs pink_500
@docs pink_600
@docs pink_700
@docs pink_800
@docs pink_900
@docs rose_50
@docs rose_100
@docs rose_200
@docs rose_300
@docs rose_400
@docs rose_500
@docs rose_600
@docs rose_700
@docs rose_800
@docs rose_900


### Opacities

@docs Opacity
@docs opacity0
@docs opacity5
@docs opacity10
@docs opacity20
@docs opacity25
@docs opacity30
@docs opacity40
@docs opacity50
@docs opacity60
@docs opacity70
@docs opacity75
@docs opacity80
@docs opacity90
@docs opacity95
@docs opacity100

[configuring tailwind]: https://tailwindcss.com/docs/responsive-design

-}

import Css
import Tailwind.Color as Tw


{-| The type for tailwind colors.

Values of this type can be found in this module.

They can be used with tailwind utility functions like `bg_color`.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like `arbitraryRgb`.

-}
type alias Color =
    Tw.Color


{-| The type for tailwind opacities.

Values of this type can be found in this module.

They can be used to modify the default opacities associated with colors
using the `withOpacity` function.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like `arbitraryOpactiyPct`.

-}
type alias Opacity =
    Tw.Opacity


{-| The color `inherit` from the tailwind configuration.

Its value is `inherit`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
inherit : Color
inherit =
    Tw.Keyword "inherit"


{-| The color `current` from the tailwind configuration.

Its value is `currentColor`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
current : Color
current =
    Tw.Keyword "currentColor"


{-| The color `transparent` from the tailwind configuration.

Its value is `transparent`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
transparent : Color
transparent =
    Tw.Color "rgb" "0" "0" "0" (Tw.Opacity "0")


{-| The color `black` from the tailwind configuration.

Its value is `#000`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
black : Color
black =
    Tw.Color "rgb" "0" "0" "0" Tw.ViaVariable


{-| The color `white` from the tailwind configuration.

Its value is `#fff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
white : Color
white =
    Tw.Color "rgb" "255" "255" "255" Tw.ViaVariable


{-| The color `slate_50` from the tailwind configuration.

Its value is `#f8fafc`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
slate_50 : Color
slate_50 =
    Tw.Color "rgb" "248" "250" "252" Tw.ViaVariable


{-| The color `slate_100` from the tailwind configuration.

Its value is `#f1f5f9`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
slate_100 : Color
slate_100 =
    Tw.Color "rgb" "241" "245" "249" Tw.ViaVariable


{-| The color `slate_200` from the tailwind configuration.

Its value is `#e2e8f0`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
slate_200 : Color
slate_200 =
    Tw.Color "rgb" "226" "232" "240" Tw.ViaVariable


{-| The color `slate_300` from the tailwind configuration.

Its value is `#cbd5e1`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
slate_300 : Color
slate_300 =
    Tw.Color "rgb" "203" "213" "225" Tw.ViaVariable


{-| The color `slate_400` from the tailwind configuration.

Its value is `#94a3b8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
slate_400 : Color
slate_400 =
    Tw.Color "rgb" "148" "163" "184" Tw.ViaVariable


{-| The color `slate_500` from the tailwind configuration.

Its value is `#64748b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
slate_500 : Color
slate_500 =
    Tw.Color "rgb" "100" "116" "139" Tw.ViaVariable


{-| The color `slate_600` from the tailwind configuration.

Its value is `#475569`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
slate_600 : Color
slate_600 =
    Tw.Color "rgb" "71" "85" "105" Tw.ViaVariable


{-| The color `slate_700` from the tailwind configuration.

Its value is `#334155`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
slate_700 : Color
slate_700 =
    Tw.Color "rgb" "51" "65" "85" Tw.ViaVariable


{-| The color `slate_800` from the tailwind configuration.

Its value is `#1e293b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
slate_800 : Color
slate_800 =
    Tw.Color "rgb" "30" "41" "59" Tw.ViaVariable


{-| The color `slate_900` from the tailwind configuration.

Its value is `#0f172a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
slate_900 : Color
slate_900 =
    Tw.Color "rgb" "15" "23" "42" Tw.ViaVariable


{-| The color `gray_50` from the tailwind configuration.

Its value is `#f9fafb`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_50 : Color
gray_50 =
    Tw.Color "rgb" "249" "250" "251" Tw.ViaVariable


{-| The color `gray_100` from the tailwind configuration.

Its value is `#f3f4f6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_100 : Color
gray_100 =
    Tw.Color "rgb" "243" "244" "246" Tw.ViaVariable


{-| The color `gray_200` from the tailwind configuration.

Its value is `#e5e7eb`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_200 : Color
gray_200 =
    Tw.Color "rgb" "229" "231" "235" Tw.ViaVariable


{-| The color `gray_300` from the tailwind configuration.

Its value is `#d1d5db`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_300 : Color
gray_300 =
    Tw.Color "rgb" "209" "213" "219" Tw.ViaVariable


{-| The color `gray_400` from the tailwind configuration.

Its value is `#9ca3af`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_400 : Color
gray_400 =
    Tw.Color "rgb" "156" "163" "175" Tw.ViaVariable


{-| The color `gray_500` from the tailwind configuration.

Its value is `#6b7280`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_500 : Color
gray_500 =
    Tw.Color "rgb" "107" "114" "128" Tw.ViaVariable


{-| The color `gray_600` from the tailwind configuration.

Its value is `#4b5563`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_600 : Color
gray_600 =
    Tw.Color "rgb" "75" "85" "99" Tw.ViaVariable


{-| The color `gray_700` from the tailwind configuration.

Its value is `#374151`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_700 : Color
gray_700 =
    Tw.Color "rgb" "55" "65" "81" Tw.ViaVariable


{-| The color `gray_800` from the tailwind configuration.

Its value is `#1f2937`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_800 : Color
gray_800 =
    Tw.Color "rgb" "31" "41" "55" Tw.ViaVariable


{-| The color `gray_900` from the tailwind configuration.

Its value is `#111827`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
gray_900 : Color
gray_900 =
    Tw.Color "rgb" "17" "24" "39" Tw.ViaVariable


{-| The color `zinc_50` from the tailwind configuration.

Its value is `#fafafa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
zinc_50 : Color
zinc_50 =
    Tw.Color "rgb" "250" "250" "250" Tw.ViaVariable


{-| The color `zinc_100` from the tailwind configuration.

Its value is `#f4f4f5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
zinc_100 : Color
zinc_100 =
    Tw.Color "rgb" "244" "244" "245" Tw.ViaVariable


{-| The color `zinc_200` from the tailwind configuration.

Its value is `#e4e4e7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
zinc_200 : Color
zinc_200 =
    Tw.Color "rgb" "228" "228" "231" Tw.ViaVariable


{-| The color `zinc_300` from the tailwind configuration.

Its value is `#d4d4d8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
zinc_300 : Color
zinc_300 =
    Tw.Color "rgb" "212" "212" "216" Tw.ViaVariable


{-| The color `zinc_400` from the tailwind configuration.

Its value is `#a1a1aa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
zinc_400 : Color
zinc_400 =
    Tw.Color "rgb" "161" "161" "170" Tw.ViaVariable


{-| The color `zinc_500` from the tailwind configuration.

Its value is `#71717a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
zinc_500 : Color
zinc_500 =
    Tw.Color "rgb" "113" "113" "122" Tw.ViaVariable


{-| The color `zinc_600` from the tailwind configuration.

Its value is `#52525b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
zinc_600 : Color
zinc_600 =
    Tw.Color "rgb" "82" "82" "91" Tw.ViaVariable


{-| The color `zinc_700` from the tailwind configuration.

Its value is `#3f3f46`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
zinc_700 : Color
zinc_700 =
    Tw.Color "rgb" "63" "63" "70" Tw.ViaVariable


{-| The color `zinc_800` from the tailwind configuration.

Its value is `#27272a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
zinc_800 : Color
zinc_800 =
    Tw.Color "rgb" "39" "39" "42" Tw.ViaVariable


{-| The color `zinc_900` from the tailwind configuration.

Its value is `#18181b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
zinc_900 : Color
zinc_900 =
    Tw.Color "rgb" "24" "24" "27" Tw.ViaVariable


{-| The color `neutral_50` from the tailwind configuration.

Its value is `#fafafa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
neutral_50 : Color
neutral_50 =
    Tw.Color "rgb" "250" "250" "250" Tw.ViaVariable


{-| The color `neutral_100` from the tailwind configuration.

Its value is `#f5f5f5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
neutral_100 : Color
neutral_100 =
    Tw.Color "rgb" "245" "245" "245" Tw.ViaVariable


{-| The color `neutral_200` from the tailwind configuration.

Its value is `#e5e5e5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
neutral_200 : Color
neutral_200 =
    Tw.Color "rgb" "229" "229" "229" Tw.ViaVariable


{-| The color `neutral_300` from the tailwind configuration.

Its value is `#d4d4d4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
neutral_300 : Color
neutral_300 =
    Tw.Color "rgb" "212" "212" "212" Tw.ViaVariable


{-| The color `neutral_400` from the tailwind configuration.

Its value is `#a3a3a3`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
neutral_400 : Color
neutral_400 =
    Tw.Color "rgb" "163" "163" "163" Tw.ViaVariable


{-| The color `neutral_500` from the tailwind configuration.

Its value is `#737373`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
neutral_500 : Color
neutral_500 =
    Tw.Color "rgb" "115" "115" "115" Tw.ViaVariable


{-| The color `neutral_600` from the tailwind configuration.

Its value is `#525252`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
neutral_600 : Color
neutral_600 =
    Tw.Color "rgb" "82" "82" "82" Tw.ViaVariable


{-| The color `neutral_700` from the tailwind configuration.

Its value is `#404040`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
neutral_700 : Color
neutral_700 =
    Tw.Color "rgb" "64" "64" "64" Tw.ViaVariable


{-| The color `neutral_800` from the tailwind configuration.

Its value is `#262626`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
neutral_800 : Color
neutral_800 =
    Tw.Color "rgb" "38" "38" "38" Tw.ViaVariable


{-| The color `neutral_900` from the tailwind configuration.

Its value is `#171717`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
neutral_900 : Color
neutral_900 =
    Tw.Color "rgb" "23" "23" "23" Tw.ViaVariable


{-| The color `stone_50` from the tailwind configuration.

Its value is `#fafaf9`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
stone_50 : Color
stone_50 =
    Tw.Color "rgb" "250" "250" "249" Tw.ViaVariable


{-| The color `stone_100` from the tailwind configuration.

Its value is `#f5f5f4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
stone_100 : Color
stone_100 =
    Tw.Color "rgb" "245" "245" "244" Tw.ViaVariable


{-| The color `stone_200` from the tailwind configuration.

Its value is `#e7e5e4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
stone_200 : Color
stone_200 =
    Tw.Color "rgb" "231" "229" "228" Tw.ViaVariable


{-| The color `stone_300` from the tailwind configuration.

Its value is `#d6d3d1`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
stone_300 : Color
stone_300 =
    Tw.Color "rgb" "214" "211" "209" Tw.ViaVariable


{-| The color `stone_400` from the tailwind configuration.

Its value is `#a8a29e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
stone_400 : Color
stone_400 =
    Tw.Color "rgb" "168" "162" "158" Tw.ViaVariable


{-| The color `stone_500` from the tailwind configuration.

Its value is `#78716c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
stone_500 : Color
stone_500 =
    Tw.Color "rgb" "120" "113" "108" Tw.ViaVariable


{-| The color `stone_600` from the tailwind configuration.

Its value is `#57534e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
stone_600 : Color
stone_600 =
    Tw.Color "rgb" "87" "83" "78" Tw.ViaVariable


{-| The color `stone_700` from the tailwind configuration.

Its value is `#44403c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
stone_700 : Color
stone_700 =
    Tw.Color "rgb" "68" "64" "60" Tw.ViaVariable


{-| The color `stone_800` from the tailwind configuration.

Its value is `#292524`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
stone_800 : Color
stone_800 =
    Tw.Color "rgb" "41" "37" "36" Tw.ViaVariable


{-| The color `stone_900` from the tailwind configuration.

Its value is `#1c1917`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
stone_900 : Color
stone_900 =
    Tw.Color "rgb" "28" "25" "23" Tw.ViaVariable


{-| The color `red_50` from the tailwind configuration.

Its value is `#fef2f2`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_50 : Color
red_50 =
    Tw.Color "rgb" "254" "242" "242" Tw.ViaVariable


{-| The color `red_100` from the tailwind configuration.

Its value is `#fee2e2`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_100 : Color
red_100 =
    Tw.Color "rgb" "254" "226" "226" Tw.ViaVariable


{-| The color `red_200` from the tailwind configuration.

Its value is `#fecaca`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_200 : Color
red_200 =
    Tw.Color "rgb" "254" "202" "202" Tw.ViaVariable


{-| The color `red_300` from the tailwind configuration.

Its value is `#fca5a5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_300 : Color
red_300 =
    Tw.Color "rgb" "252" "165" "165" Tw.ViaVariable


{-| The color `red_400` from the tailwind configuration.

Its value is `#f87171`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_400 : Color
red_400 =
    Tw.Color "rgb" "248" "113" "113" Tw.ViaVariable


{-| The color `red_500` from the tailwind configuration.

Its value is `#ef4444`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_500 : Color
red_500 =
    Tw.Color "rgb" "239" "68" "68" Tw.ViaVariable


{-| The color `red_600` from the tailwind configuration.

Its value is `#dc2626`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_600 : Color
red_600 =
    Tw.Color "rgb" "220" "38" "38" Tw.ViaVariable


{-| The color `red_700` from the tailwind configuration.

Its value is `#b91c1c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_700 : Color
red_700 =
    Tw.Color "rgb" "185" "28" "28" Tw.ViaVariable


{-| The color `red_800` from the tailwind configuration.

Its value is `#991b1b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_800 : Color
red_800 =
    Tw.Color "rgb" "153" "27" "27" Tw.ViaVariable


{-| The color `red_900` from the tailwind configuration.

Its value is `#7f1d1d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
red_900 : Color
red_900 =
    Tw.Color "rgb" "127" "29" "29" Tw.ViaVariable


{-| The color `orange_50` from the tailwind configuration.

Its value is `#fff7ed`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_50 : Color
orange_50 =
    Tw.Color "rgb" "255" "247" "237" Tw.ViaVariable


{-| The color `orange_100` from the tailwind configuration.

Its value is `#ffedd5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_100 : Color
orange_100 =
    Tw.Color "rgb" "255" "237" "213" Tw.ViaVariable


{-| The color `orange_200` from the tailwind configuration.

Its value is `#fed7aa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_200 : Color
orange_200 =
    Tw.Color "rgb" "254" "215" "170" Tw.ViaVariable


{-| The color `orange_300` from the tailwind configuration.

Its value is `#fdba74`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_300 : Color
orange_300 =
    Tw.Color "rgb" "253" "186" "116" Tw.ViaVariable


{-| The color `orange_400` from the tailwind configuration.

Its value is `#fb923c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_400 : Color
orange_400 =
    Tw.Color "rgb" "251" "146" "60" Tw.ViaVariable


{-| The color `orange_500` from the tailwind configuration.

Its value is `#f97316`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_500 : Color
orange_500 =
    Tw.Color "rgb" "249" "115" "22" Tw.ViaVariable


{-| The color `orange_600` from the tailwind configuration.

Its value is `#ea580c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_600 : Color
orange_600 =
    Tw.Color "rgb" "234" "88" "12" Tw.ViaVariable


{-| The color `orange_700` from the tailwind configuration.

Its value is `#c2410c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_700 : Color
orange_700 =
    Tw.Color "rgb" "194" "65" "12" Tw.ViaVariable


{-| The color `orange_800` from the tailwind configuration.

Its value is `#9a3412`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_800 : Color
orange_800 =
    Tw.Color "rgb" "154" "52" "18" Tw.ViaVariable


{-| The color `orange_900` from the tailwind configuration.

Its value is `#7c2d12`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
orange_900 : Color
orange_900 =
    Tw.Color "rgb" "124" "45" "18" Tw.ViaVariable


{-| The color `amber_50` from the tailwind configuration.

Its value is `#fffbeb`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
amber_50 : Color
amber_50 =
    Tw.Color "rgb" "255" "251" "235" Tw.ViaVariable


{-| The color `amber_100` from the tailwind configuration.

Its value is `#fef3c7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
amber_100 : Color
amber_100 =
    Tw.Color "rgb" "254" "243" "199" Tw.ViaVariable


{-| The color `amber_200` from the tailwind configuration.

Its value is `#fde68a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
amber_200 : Color
amber_200 =
    Tw.Color "rgb" "253" "230" "138" Tw.ViaVariable


{-| The color `amber_300` from the tailwind configuration.

Its value is `#fcd34d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
amber_300 : Color
amber_300 =
    Tw.Color "rgb" "252" "211" "77" Tw.ViaVariable


{-| The color `amber_400` from the tailwind configuration.

Its value is `#fbbf24`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
amber_400 : Color
amber_400 =
    Tw.Color "rgb" "251" "191" "36" Tw.ViaVariable


{-| The color `amber_500` from the tailwind configuration.

Its value is `#f59e0b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
amber_500 : Color
amber_500 =
    Tw.Color "rgb" "245" "158" "11" Tw.ViaVariable


{-| The color `amber_600` from the tailwind configuration.

Its value is `#d97706`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
amber_600 : Color
amber_600 =
    Tw.Color "rgb" "217" "119" "6" Tw.ViaVariable


{-| The color `amber_700` from the tailwind configuration.

Its value is `#b45309`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
amber_700 : Color
amber_700 =
    Tw.Color "rgb" "180" "83" "9" Tw.ViaVariable


{-| The color `amber_800` from the tailwind configuration.

Its value is `#92400e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
amber_800 : Color
amber_800 =
    Tw.Color "rgb" "146" "64" "14" Tw.ViaVariable


{-| The color `amber_900` from the tailwind configuration.

Its value is `#78350f`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
amber_900 : Color
amber_900 =
    Tw.Color "rgb" "120" "53" "15" Tw.ViaVariable


{-| The color `yellow_50` from the tailwind configuration.

Its value is `#fefce8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_50 : Color
yellow_50 =
    Tw.Color "rgb" "254" "252" "232" Tw.ViaVariable


{-| The color `yellow_100` from the tailwind configuration.

Its value is `#fef9c3`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_100 : Color
yellow_100 =
    Tw.Color "rgb" "254" "249" "195" Tw.ViaVariable


{-| The color `yellow_200` from the tailwind configuration.

Its value is `#fef08a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_200 : Color
yellow_200 =
    Tw.Color "rgb" "254" "240" "138" Tw.ViaVariable


{-| The color `yellow_300` from the tailwind configuration.

Its value is `#fde047`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_300 : Color
yellow_300 =
    Tw.Color "rgb" "253" "224" "71" Tw.ViaVariable


{-| The color `yellow_400` from the tailwind configuration.

Its value is `#facc15`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_400 : Color
yellow_400 =
    Tw.Color "rgb" "250" "204" "21" Tw.ViaVariable


{-| The color `yellow_500` from the tailwind configuration.

Its value is `#eab308`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_500 : Color
yellow_500 =
    Tw.Color "rgb" "234" "179" "8" Tw.ViaVariable


{-| The color `yellow_600` from the tailwind configuration.

Its value is `#ca8a04`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_600 : Color
yellow_600 =
    Tw.Color "rgb" "202" "138" "4" Tw.ViaVariable


{-| The color `yellow_700` from the tailwind configuration.

Its value is `#a16207`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_700 : Color
yellow_700 =
    Tw.Color "rgb" "161" "98" "7" Tw.ViaVariable


{-| The color `yellow_800` from the tailwind configuration.

Its value is `#854d0e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_800 : Color
yellow_800 =
    Tw.Color "rgb" "133" "77" "14" Tw.ViaVariable


{-| The color `yellow_900` from the tailwind configuration.

Its value is `#713f12`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
yellow_900 : Color
yellow_900 =
    Tw.Color "rgb" "113" "63" "18" Tw.ViaVariable


{-| The color `lime_50` from the tailwind configuration.

Its value is `#f7fee7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
lime_50 : Color
lime_50 =
    Tw.Color "rgb" "247" "254" "231" Tw.ViaVariable


{-| The color `lime_100` from the tailwind configuration.

Its value is `#ecfccb`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
lime_100 : Color
lime_100 =
    Tw.Color "rgb" "236" "252" "203" Tw.ViaVariable


{-| The color `lime_200` from the tailwind configuration.

Its value is `#d9f99d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
lime_200 : Color
lime_200 =
    Tw.Color "rgb" "217" "249" "157" Tw.ViaVariable


{-| The color `lime_300` from the tailwind configuration.

Its value is `#bef264`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
lime_300 : Color
lime_300 =
    Tw.Color "rgb" "190" "242" "100" Tw.ViaVariable


{-| The color `lime_400` from the tailwind configuration.

Its value is `#a3e635`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
lime_400 : Color
lime_400 =
    Tw.Color "rgb" "163" "230" "53" Tw.ViaVariable


{-| The color `lime_500` from the tailwind configuration.

Its value is `#84cc16`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
lime_500 : Color
lime_500 =
    Tw.Color "rgb" "132" "204" "22" Tw.ViaVariable


{-| The color `lime_600` from the tailwind configuration.

Its value is `#65a30d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
lime_600 : Color
lime_600 =
    Tw.Color "rgb" "101" "163" "13" Tw.ViaVariable


{-| The color `lime_700` from the tailwind configuration.

Its value is `#4d7c0f`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
lime_700 : Color
lime_700 =
    Tw.Color "rgb" "77" "124" "15" Tw.ViaVariable


{-| The color `lime_800` from the tailwind configuration.

Its value is `#3f6212`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
lime_800 : Color
lime_800 =
    Tw.Color "rgb" "63" "98" "18" Tw.ViaVariable


{-| The color `lime_900` from the tailwind configuration.

Its value is `#365314`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
lime_900 : Color
lime_900 =
    Tw.Color "rgb" "54" "83" "20" Tw.ViaVariable


{-| The color `green_50` from the tailwind configuration.

Its value is `#f0fdf4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_50 : Color
green_50 =
    Tw.Color "rgb" "240" "253" "244" Tw.ViaVariable


{-| The color `green_100` from the tailwind configuration.

Its value is `#dcfce7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_100 : Color
green_100 =
    Tw.Color "rgb" "220" "252" "231" Tw.ViaVariable


{-| The color `green_200` from the tailwind configuration.

Its value is `#bbf7d0`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_200 : Color
green_200 =
    Tw.Color "rgb" "187" "247" "208" Tw.ViaVariable


{-| The color `green_300` from the tailwind configuration.

Its value is `#86efac`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_300 : Color
green_300 =
    Tw.Color "rgb" "134" "239" "172" Tw.ViaVariable


{-| The color `green_400` from the tailwind configuration.

Its value is `#4ade80`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_400 : Color
green_400 =
    Tw.Color "rgb" "74" "222" "128" Tw.ViaVariable


{-| The color `green_500` from the tailwind configuration.

Its value is `#22c55e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_500 : Color
green_500 =
    Tw.Color "rgb" "34" "197" "94" Tw.ViaVariable


{-| The color `green_600` from the tailwind configuration.

Its value is `#16a34a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_600 : Color
green_600 =
    Tw.Color "rgb" "22" "163" "74" Tw.ViaVariable


{-| The color `green_700` from the tailwind configuration.

Its value is `#15803d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_700 : Color
green_700 =
    Tw.Color "rgb" "21" "128" "61" Tw.ViaVariable


{-| The color `green_800` from the tailwind configuration.

Its value is `#166534`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_800 : Color
green_800 =
    Tw.Color "rgb" "22" "101" "52" Tw.ViaVariable


{-| The color `green_900` from the tailwind configuration.

Its value is `#14532d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
green_900 : Color
green_900 =
    Tw.Color "rgb" "20" "83" "45" Tw.ViaVariable


{-| The color `emerald_50` from the tailwind configuration.

Its value is `#ecfdf5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
emerald_50 : Color
emerald_50 =
    Tw.Color "rgb" "236" "253" "245" Tw.ViaVariable


{-| The color `emerald_100` from the tailwind configuration.

Its value is `#d1fae5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
emerald_100 : Color
emerald_100 =
    Tw.Color "rgb" "209" "250" "229" Tw.ViaVariable


{-| The color `emerald_200` from the tailwind configuration.

Its value is `#a7f3d0`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
emerald_200 : Color
emerald_200 =
    Tw.Color "rgb" "167" "243" "208" Tw.ViaVariable


{-| The color `emerald_300` from the tailwind configuration.

Its value is `#6ee7b7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
emerald_300 : Color
emerald_300 =
    Tw.Color "rgb" "110" "231" "183" Tw.ViaVariable


{-| The color `emerald_400` from the tailwind configuration.

Its value is `#34d399`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
emerald_400 : Color
emerald_400 =
    Tw.Color "rgb" "52" "211" "153" Tw.ViaVariable


{-| The color `emerald_500` from the tailwind configuration.

Its value is `#10b981`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
emerald_500 : Color
emerald_500 =
    Tw.Color "rgb" "16" "185" "129" Tw.ViaVariable


{-| The color `emerald_600` from the tailwind configuration.

Its value is `#059669`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
emerald_600 : Color
emerald_600 =
    Tw.Color "rgb" "5" "150" "105" Tw.ViaVariable


{-| The color `emerald_700` from the tailwind configuration.

Its value is `#047857`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
emerald_700 : Color
emerald_700 =
    Tw.Color "rgb" "4" "120" "87" Tw.ViaVariable


{-| The color `emerald_800` from the tailwind configuration.

Its value is `#065f46`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
emerald_800 : Color
emerald_800 =
    Tw.Color "rgb" "6" "95" "70" Tw.ViaVariable


{-| The color `emerald_900` from the tailwind configuration.

Its value is `#064e3b`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
emerald_900 : Color
emerald_900 =
    Tw.Color "rgb" "6" "78" "59" Tw.ViaVariable


{-| The color `teal_50` from the tailwind configuration.

Its value is `#f0fdfa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_50 : Color
teal_50 =
    Tw.Color "rgb" "240" "253" "250" Tw.ViaVariable


{-| The color `teal_100` from the tailwind configuration.

Its value is `#ccfbf1`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_100 : Color
teal_100 =
    Tw.Color "rgb" "204" "251" "241" Tw.ViaVariable


{-| The color `teal_200` from the tailwind configuration.

Its value is `#99f6e4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_200 : Color
teal_200 =
    Tw.Color "rgb" "153" "246" "228" Tw.ViaVariable


{-| The color `teal_300` from the tailwind configuration.

Its value is `#5eead4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_300 : Color
teal_300 =
    Tw.Color "rgb" "94" "234" "212" Tw.ViaVariable


{-| The color `teal_400` from the tailwind configuration.

Its value is `#2dd4bf`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_400 : Color
teal_400 =
    Tw.Color "rgb" "45" "212" "191" Tw.ViaVariable


{-| The color `teal_500` from the tailwind configuration.

Its value is `#14b8a6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_500 : Color
teal_500 =
    Tw.Color "rgb" "20" "184" "166" Tw.ViaVariable


{-| The color `teal_600` from the tailwind configuration.

Its value is `#0d9488`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_600 : Color
teal_600 =
    Tw.Color "rgb" "13" "148" "136" Tw.ViaVariable


{-| The color `teal_700` from the tailwind configuration.

Its value is `#0f766e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_700 : Color
teal_700 =
    Tw.Color "rgb" "15" "118" "110" Tw.ViaVariable


{-| The color `teal_800` from the tailwind configuration.

Its value is `#115e59`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_800 : Color
teal_800 =
    Tw.Color "rgb" "17" "94" "89" Tw.ViaVariable


{-| The color `teal_900` from the tailwind configuration.

Its value is `#134e4a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
teal_900 : Color
teal_900 =
    Tw.Color "rgb" "19" "78" "74" Tw.ViaVariable


{-| The color `cyan_50` from the tailwind configuration.

Its value is `#ecfeff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
cyan_50 : Color
cyan_50 =
    Tw.Color "rgb" "236" "254" "255" Tw.ViaVariable


{-| The color `cyan_100` from the tailwind configuration.

Its value is `#cffafe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
cyan_100 : Color
cyan_100 =
    Tw.Color "rgb" "207" "250" "254" Tw.ViaVariable


{-| The color `cyan_200` from the tailwind configuration.

Its value is `#a5f3fc`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
cyan_200 : Color
cyan_200 =
    Tw.Color "rgb" "165" "243" "252" Tw.ViaVariable


{-| The color `cyan_300` from the tailwind configuration.

Its value is `#67e8f9`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
cyan_300 : Color
cyan_300 =
    Tw.Color "rgb" "103" "232" "249" Tw.ViaVariable


{-| The color `cyan_400` from the tailwind configuration.

Its value is `#22d3ee`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
cyan_400 : Color
cyan_400 =
    Tw.Color "rgb" "34" "211" "238" Tw.ViaVariable


{-| The color `cyan_500` from the tailwind configuration.

Its value is `#06b6d4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
cyan_500 : Color
cyan_500 =
    Tw.Color "rgb" "6" "182" "212" Tw.ViaVariable


{-| The color `cyan_600` from the tailwind configuration.

Its value is `#0891b2`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
cyan_600 : Color
cyan_600 =
    Tw.Color "rgb" "8" "145" "178" Tw.ViaVariable


{-| The color `cyan_700` from the tailwind configuration.

Its value is `#0e7490`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
cyan_700 : Color
cyan_700 =
    Tw.Color "rgb" "14" "116" "144" Tw.ViaVariable


{-| The color `cyan_800` from the tailwind configuration.

Its value is `#155e75`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
cyan_800 : Color
cyan_800 =
    Tw.Color "rgb" "21" "94" "117" Tw.ViaVariable


{-| The color `cyan_900` from the tailwind configuration.

Its value is `#164e63`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
cyan_900 : Color
cyan_900 =
    Tw.Color "rgb" "22" "78" "99" Tw.ViaVariable


{-| The color `sky_50` from the tailwind configuration.

Its value is `#f0f9ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
sky_50 : Color
sky_50 =
    Tw.Color "rgb" "240" "249" "255" Tw.ViaVariable


{-| The color `sky_100` from the tailwind configuration.

Its value is `#e0f2fe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
sky_100 : Color
sky_100 =
    Tw.Color "rgb" "224" "242" "254" Tw.ViaVariable


{-| The color `sky_200` from the tailwind configuration.

Its value is `#bae6fd`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
sky_200 : Color
sky_200 =
    Tw.Color "rgb" "186" "230" "253" Tw.ViaVariable


{-| The color `sky_300` from the tailwind configuration.

Its value is `#7dd3fc`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
sky_300 : Color
sky_300 =
    Tw.Color "rgb" "125" "211" "252" Tw.ViaVariable


{-| The color `sky_400` from the tailwind configuration.

Its value is `#38bdf8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
sky_400 : Color
sky_400 =
    Tw.Color "rgb" "56" "189" "248" Tw.ViaVariable


{-| The color `sky_500` from the tailwind configuration.

Its value is `#0ea5e9`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
sky_500 : Color
sky_500 =
    Tw.Color "rgb" "14" "165" "233" Tw.ViaVariable


{-| The color `sky_600` from the tailwind configuration.

Its value is `#0284c7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
sky_600 : Color
sky_600 =
    Tw.Color "rgb" "2" "132" "199" Tw.ViaVariable


{-| The color `sky_700` from the tailwind configuration.

Its value is `#0369a1`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
sky_700 : Color
sky_700 =
    Tw.Color "rgb" "3" "105" "161" Tw.ViaVariable


{-| The color `sky_800` from the tailwind configuration.

Its value is `#075985`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
sky_800 : Color
sky_800 =
    Tw.Color "rgb" "7" "89" "133" Tw.ViaVariable


{-| The color `sky_900` from the tailwind configuration.

Its value is `#0c4a6e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
sky_900 : Color
sky_900 =
    Tw.Color "rgb" "12" "74" "110" Tw.ViaVariable


{-| The color `blue_50` from the tailwind configuration.

Its value is `#eff6ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_50 : Color
blue_50 =
    Tw.Color "rgb" "239" "246" "255" Tw.ViaVariable


{-| The color `blue_100` from the tailwind configuration.

Its value is `#dbeafe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_100 : Color
blue_100 =
    Tw.Color "rgb" "219" "234" "254" Tw.ViaVariable


{-| The color `blue_200` from the tailwind configuration.

Its value is `#bfdbfe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_200 : Color
blue_200 =
    Tw.Color "rgb" "191" "219" "254" Tw.ViaVariable


{-| The color `blue_300` from the tailwind configuration.

Its value is `#93c5fd`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_300 : Color
blue_300 =
    Tw.Color "rgb" "147" "197" "253" Tw.ViaVariable


{-| The color `blue_400` from the tailwind configuration.

Its value is `#60a5fa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_400 : Color
blue_400 =
    Tw.Color "rgb" "96" "165" "250" Tw.ViaVariable


{-| The color `blue_500` from the tailwind configuration.

Its value is `#3b82f6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_500 : Color
blue_500 =
    Tw.Color "rgb" "59" "130" "246" Tw.ViaVariable


{-| The color `blue_600` from the tailwind configuration.

Its value is `#2563eb`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_600 : Color
blue_600 =
    Tw.Color "rgb" "37" "99" "235" Tw.ViaVariable


{-| The color `blue_700` from the tailwind configuration.

Its value is `#1d4ed8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_700 : Color
blue_700 =
    Tw.Color "rgb" "29" "78" "216" Tw.ViaVariable


{-| The color `blue_800` from the tailwind configuration.

Its value is `#1e40af`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_800 : Color
blue_800 =
    Tw.Color "rgb" "30" "64" "175" Tw.ViaVariable


{-| The color `blue_900` from the tailwind configuration.

Its value is `#1e3a8a`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
blue_900 : Color
blue_900 =
    Tw.Color "rgb" "30" "58" "138" Tw.ViaVariable


{-| The color `indigo_50` from the tailwind configuration.

Its value is `#eef2ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_50 : Color
indigo_50 =
    Tw.Color "rgb" "238" "242" "255" Tw.ViaVariable


{-| The color `indigo_100` from the tailwind configuration.

Its value is `#e0e7ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_100 : Color
indigo_100 =
    Tw.Color "rgb" "224" "231" "255" Tw.ViaVariable


{-| The color `indigo_200` from the tailwind configuration.

Its value is `#c7d2fe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_200 : Color
indigo_200 =
    Tw.Color "rgb" "199" "210" "254" Tw.ViaVariable


{-| The color `indigo_300` from the tailwind configuration.

Its value is `#a5b4fc`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_300 : Color
indigo_300 =
    Tw.Color "rgb" "165" "180" "252" Tw.ViaVariable


{-| The color `indigo_400` from the tailwind configuration.

Its value is `#818cf8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_400 : Color
indigo_400 =
    Tw.Color "rgb" "129" "140" "248" Tw.ViaVariable


{-| The color `indigo_500` from the tailwind configuration.

Its value is `#6366f1`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_500 : Color
indigo_500 =
    Tw.Color "rgb" "99" "102" "241" Tw.ViaVariable


{-| The color `indigo_600` from the tailwind configuration.

Its value is `#4f46e5`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_600 : Color
indigo_600 =
    Tw.Color "rgb" "79" "70" "229" Tw.ViaVariable


{-| The color `indigo_700` from the tailwind configuration.

Its value is `#4338ca`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_700 : Color
indigo_700 =
    Tw.Color "rgb" "67" "56" "202" Tw.ViaVariable


{-| The color `indigo_800` from the tailwind configuration.

Its value is `#3730a3`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_800 : Color
indigo_800 =
    Tw.Color "rgb" "55" "48" "163" Tw.ViaVariable


{-| The color `indigo_900` from the tailwind configuration.

Its value is `#312e81`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
indigo_900 : Color
indigo_900 =
    Tw.Color "rgb" "49" "46" "129" Tw.ViaVariable


{-| The color `violet_50` from the tailwind configuration.

Its value is `#f5f3ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
violet_50 : Color
violet_50 =
    Tw.Color "rgb" "245" "243" "255" Tw.ViaVariable


{-| The color `violet_100` from the tailwind configuration.

Its value is `#ede9fe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
violet_100 : Color
violet_100 =
    Tw.Color "rgb" "237" "233" "254" Tw.ViaVariable


{-| The color `violet_200` from the tailwind configuration.

Its value is `#ddd6fe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
violet_200 : Color
violet_200 =
    Tw.Color "rgb" "221" "214" "254" Tw.ViaVariable


{-| The color `violet_300` from the tailwind configuration.

Its value is `#c4b5fd`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
violet_300 : Color
violet_300 =
    Tw.Color "rgb" "196" "181" "253" Tw.ViaVariable


{-| The color `violet_400` from the tailwind configuration.

Its value is `#a78bfa`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
violet_400 : Color
violet_400 =
    Tw.Color "rgb" "167" "139" "250" Tw.ViaVariable


{-| The color `violet_500` from the tailwind configuration.

Its value is `#8b5cf6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
violet_500 : Color
violet_500 =
    Tw.Color "rgb" "139" "92" "246" Tw.ViaVariable


{-| The color `violet_600` from the tailwind configuration.

Its value is `#7c3aed`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
violet_600 : Color
violet_600 =
    Tw.Color "rgb" "124" "58" "237" Tw.ViaVariable


{-| The color `violet_700` from the tailwind configuration.

Its value is `#6d28d9`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
violet_700 : Color
violet_700 =
    Tw.Color "rgb" "109" "40" "217" Tw.ViaVariable


{-| The color `violet_800` from the tailwind configuration.

Its value is `#5b21b6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
violet_800 : Color
violet_800 =
    Tw.Color "rgb" "91" "33" "182" Tw.ViaVariable


{-| The color `violet_900` from the tailwind configuration.

Its value is `#4c1d95`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
violet_900 : Color
violet_900 =
    Tw.Color "rgb" "76" "29" "149" Tw.ViaVariable


{-| The color `purple_50` from the tailwind configuration.

Its value is `#faf5ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_50 : Color
purple_50 =
    Tw.Color "rgb" "250" "245" "255" Tw.ViaVariable


{-| The color `purple_100` from the tailwind configuration.

Its value is `#f3e8ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_100 : Color
purple_100 =
    Tw.Color "rgb" "243" "232" "255" Tw.ViaVariable


{-| The color `purple_200` from the tailwind configuration.

Its value is `#e9d5ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_200 : Color
purple_200 =
    Tw.Color "rgb" "233" "213" "255" Tw.ViaVariable


{-| The color `purple_300` from the tailwind configuration.

Its value is `#d8b4fe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_300 : Color
purple_300 =
    Tw.Color "rgb" "216" "180" "254" Tw.ViaVariable


{-| The color `purple_400` from the tailwind configuration.

Its value is `#c084fc`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_400 : Color
purple_400 =
    Tw.Color "rgb" "192" "132" "252" Tw.ViaVariable


{-| The color `purple_500` from the tailwind configuration.

Its value is `#a855f7`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_500 : Color
purple_500 =
    Tw.Color "rgb" "168" "85" "247" Tw.ViaVariable


{-| The color `purple_600` from the tailwind configuration.

Its value is `#9333ea`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_600 : Color
purple_600 =
    Tw.Color "rgb" "147" "51" "234" Tw.ViaVariable


{-| The color `purple_700` from the tailwind configuration.

Its value is `#7e22ce`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_700 : Color
purple_700 =
    Tw.Color "rgb" "126" "34" "206" Tw.ViaVariable


{-| The color `purple_800` from the tailwind configuration.

Its value is `#6b21a8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_800 : Color
purple_800 =
    Tw.Color "rgb" "107" "33" "168" Tw.ViaVariable


{-| The color `purple_900` from the tailwind configuration.

Its value is `#581c87`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
purple_900 : Color
purple_900 =
    Tw.Color "rgb" "88" "28" "135" Tw.ViaVariable


{-| The color `fuchsia_50` from the tailwind configuration.

Its value is `#fdf4ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
fuchsia_50 : Color
fuchsia_50 =
    Tw.Color "rgb" "253" "244" "255" Tw.ViaVariable


{-| The color `fuchsia_100` from the tailwind configuration.

Its value is `#fae8ff`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
fuchsia_100 : Color
fuchsia_100 =
    Tw.Color "rgb" "250" "232" "255" Tw.ViaVariable


{-| The color `fuchsia_200` from the tailwind configuration.

Its value is `#f5d0fe`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
fuchsia_200 : Color
fuchsia_200 =
    Tw.Color "rgb" "245" "208" "254" Tw.ViaVariable


{-| The color `fuchsia_300` from the tailwind configuration.

Its value is `#f0abfc`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
fuchsia_300 : Color
fuchsia_300 =
    Tw.Color "rgb" "240" "171" "252" Tw.ViaVariable


{-| The color `fuchsia_400` from the tailwind configuration.

Its value is `#e879f9`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
fuchsia_400 : Color
fuchsia_400 =
    Tw.Color "rgb" "232" "121" "249" Tw.ViaVariable


{-| The color `fuchsia_500` from the tailwind configuration.

Its value is `#d946ef`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
fuchsia_500 : Color
fuchsia_500 =
    Tw.Color "rgb" "217" "70" "239" Tw.ViaVariable


{-| The color `fuchsia_600` from the tailwind configuration.

Its value is `#c026d3`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
fuchsia_600 : Color
fuchsia_600 =
    Tw.Color "rgb" "192" "38" "211" Tw.ViaVariable


{-| The color `fuchsia_700` from the tailwind configuration.

Its value is `#a21caf`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
fuchsia_700 : Color
fuchsia_700 =
    Tw.Color "rgb" "162" "28" "175" Tw.ViaVariable


{-| The color `fuchsia_800` from the tailwind configuration.

Its value is `#86198f`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
fuchsia_800 : Color
fuchsia_800 =
    Tw.Color "rgb" "134" "25" "143" Tw.ViaVariable


{-| The color `fuchsia_900` from the tailwind configuration.

Its value is `#701a75`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
fuchsia_900 : Color
fuchsia_900 =
    Tw.Color "rgb" "112" "26" "117" Tw.ViaVariable


{-| The color `pink_50` from the tailwind configuration.

Its value is `#fdf2f8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_50 : Color
pink_50 =
    Tw.Color "rgb" "253" "242" "248" Tw.ViaVariable


{-| The color `pink_100` from the tailwind configuration.

Its value is `#fce7f3`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_100 : Color
pink_100 =
    Tw.Color "rgb" "252" "231" "243" Tw.ViaVariable


{-| The color `pink_200` from the tailwind configuration.

Its value is `#fbcfe8`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_200 : Color
pink_200 =
    Tw.Color "rgb" "251" "207" "232" Tw.ViaVariable


{-| The color `pink_300` from the tailwind configuration.

Its value is `#f9a8d4`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_300 : Color
pink_300 =
    Tw.Color "rgb" "249" "168" "212" Tw.ViaVariable


{-| The color `pink_400` from the tailwind configuration.

Its value is `#f472b6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_400 : Color
pink_400 =
    Tw.Color "rgb" "244" "114" "182" Tw.ViaVariable


{-| The color `pink_500` from the tailwind configuration.

Its value is `#ec4899`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_500 : Color
pink_500 =
    Tw.Color "rgb" "236" "72" "153" Tw.ViaVariable


{-| The color `pink_600` from the tailwind configuration.

Its value is `#db2777`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_600 : Color
pink_600 =
    Tw.Color "rgb" "219" "39" "119" Tw.ViaVariable


{-| The color `pink_700` from the tailwind configuration.

Its value is `#be185d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_700 : Color
pink_700 =
    Tw.Color "rgb" "190" "24" "93" Tw.ViaVariable


{-| The color `pink_800` from the tailwind configuration.

Its value is `#9d174d`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_800 : Color
pink_800 =
    Tw.Color "rgb" "157" "23" "77" Tw.ViaVariable


{-| The color `pink_900` from the tailwind configuration.

Its value is `#831843`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
pink_900 : Color
pink_900 =
    Tw.Color "rgb" "131" "24" "67" Tw.ViaVariable


{-| The color `rose_50` from the tailwind configuration.

Its value is `#fff1f2`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
rose_50 : Color
rose_50 =
    Tw.Color "rgb" "255" "241" "242" Tw.ViaVariable


{-| The color `rose_100` from the tailwind configuration.

Its value is `#ffe4e6`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
rose_100 : Color
rose_100 =
    Tw.Color "rgb" "255" "228" "230" Tw.ViaVariable


{-| The color `rose_200` from the tailwind configuration.

Its value is `#fecdd3`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
rose_200 : Color
rose_200 =
    Tw.Color "rgb" "254" "205" "211" Tw.ViaVariable


{-| The color `rose_300` from the tailwind configuration.

Its value is `#fda4af`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
rose_300 : Color
rose_300 =
    Tw.Color "rgb" "253" "164" "175" Tw.ViaVariable


{-| The color `rose_400` from the tailwind configuration.

Its value is `#fb7185`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
rose_400 : Color
rose_400 =
    Tw.Color "rgb" "251" "113" "133" Tw.ViaVariable


{-| The color `rose_500` from the tailwind configuration.

Its value is `#f43f5e`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
rose_500 : Color
rose_500 =
    Tw.Color "rgb" "244" "63" "94" Tw.ViaVariable


{-| The color `rose_600` from the tailwind configuration.

Its value is `#e11d48`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
rose_600 : Color
rose_600 =
    Tw.Color "rgb" "225" "29" "72" Tw.ViaVariable


{-| The color `rose_700` from the tailwind configuration.

Its value is `#be123c`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
rose_700 : Color
rose_700 =
    Tw.Color "rgb" "190" "18" "60" Tw.ViaVariable


{-| The color `rose_800` from the tailwind configuration.

Its value is `#9f1239`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
rose_800 : Color
rose_800 =
    Tw.Color "rgb" "159" "18" "57" Tw.ViaVariable


{-| The color `rose_900` from the tailwind configuration.

Its value is `#881337`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
rose_900 : Color
rose_900 =
    Tw.Color "rgb" "136" "19" "55" Tw.ViaVariable


{-| The opacity `opacity0` from the tailwind configuration.

It is set to `0` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity0 : Opacity
opacity0 =
    Tw.Opacity "0"


{-| The opacity `opacity5` from the tailwind configuration.

It is set to `0.05` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity5 : Opacity
opacity5 =
    Tw.Opacity "0.05"


{-| The opacity `opacity10` from the tailwind configuration.

It is set to `0.1` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity10 : Opacity
opacity10 =
    Tw.Opacity "0.1"


{-| The opacity `opacity20` from the tailwind configuration.

It is set to `0.2` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity20 : Opacity
opacity20 =
    Tw.Opacity "0.2"


{-| The opacity `opacity25` from the tailwind configuration.

It is set to `0.25` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity25 : Opacity
opacity25 =
    Tw.Opacity "0.25"


{-| The opacity `opacity30` from the tailwind configuration.

It is set to `0.3` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity30 : Opacity
opacity30 =
    Tw.Opacity "0.3"


{-| The opacity `opacity40` from the tailwind configuration.

It is set to `0.4` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity40 : Opacity
opacity40 =
    Tw.Opacity "0.4"


{-| The opacity `opacity50` from the tailwind configuration.

It is set to `0.5` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity50 : Opacity
opacity50 =
    Tw.Opacity "0.5"


{-| The opacity `opacity60` from the tailwind configuration.

It is set to `0.6` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity60 : Opacity
opacity60 =
    Tw.Opacity "0.6"


{-| The opacity `opacity70` from the tailwind configuration.

It is set to `0.7` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity70 : Opacity
opacity70 =
    Tw.Opacity "0.7"


{-| The opacity `opacity75` from the tailwind configuration.

It is set to `0.75` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity75 : Opacity
opacity75 =
    Tw.Opacity "0.75"


{-| The opacity `opacity80` from the tailwind configuration.

It is set to `0.8` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity80 : Opacity
opacity80 =
    Tw.Opacity "0.8"


{-| The opacity `opacity90` from the tailwind configuration.

It is set to `0.9` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity90 : Opacity
opacity90 =
    Tw.Opacity "0.9"


{-| The opacity `opacity95` from the tailwind configuration.

It is set to `0.95` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity95 : Opacity
opacity95 =
    Tw.Opacity "0.95"


{-| The opacity `opacity100` from the tailwind configuration.

It is set to `1` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
opacity100 : Opacity
opacity100 =
    Tw.Opacity "1"
