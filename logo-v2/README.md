# Nahara's Organization Logo, Version 2

| Preview                                    | Type            | Link                                          | Note                                       |
| ------------------------------------------ | --------------- | --------------------------------------------- | ------------------------------------------ |
| ![Logo (SVG)](./static/logo.svg)           | SVG             | [logo.svg](./static/logo.svg)                 | Main SVG logo                              |
| ![Logo (180x180)](./static/logo-180px.png) | PNG (180x180)   | [logo-180px.png](./static/logo-180px.png)     | Fallback logo when SVG is not supported    |
| (no preview, too big)                      | PNG (1024x1024) | [logo-1024px.png](./static/logo-1024px.png)   | Fallback logo when SVG is not supported    |
| ![Favicon (SVG)](./static/favicon.svg)     | SVG             | [favicon.svg](./static/favicon.svg)           | Main SVG favicon                           |
| ![Logo (32x32)](./static/favicon-32px.png) | PNG (32x32)     | [favicon-32px.png](./static/favicon-32px.png) | Fallback favicon when SVG is not supported |
| (no preview, potential incompatibiity)     | Inkscape SVG    | [inkscape-doc.svg](./inkscape-doc.svg)        | Inkscape SVG document for editing          |

## Summary

2nd version of Nahara's Organization Logo. This is a complete logo redesign.

- Fix the bad scaling when the logo is appeared as tiny little favicon (e.g.
  browser tab).
  - The logo should be recognizable at 32x32 pixels while not losing any
    important details.
- Make the face actually a square instead of rectangle.
  - The bounding box for the face in the 1st version is actually a rectangle in
    portrait orientation, which was causing minor issue to favicon.
- Make the hair fully filled this time.
  - It is actually brown inside character design document, but a logo should not
    have color element if we are looking to adapt this to light and dark themes.

The logo was made in Inkscape. Changes to the logo should be made to the
[Inkscape SVG document](./logo-v2-inkscape-doc.svg) file then exported using the
[export-logo.sh](./export-logo.sh) script.

## General usage instruction

There are 2 type of logo files to use:

- For general usage, like using the logo as app icon or branding, use the main
  logo file.
- For tiny icons like favicon, use the alternative favicon logo file.

SVG should take the priority, while PNG should only be provided as fallback when
SVG is not supported. This is because SVG is scalable, which looks much better
on high DPI displays (e.g. phone screen).

The logo color should match with the primary text color (if there are text
elements), or foreground color if there are no text.

- **Do** set the logo color matching the main text color.
- **Do** set the logo color to black on light background, or white on dark
  background when there are no text.
- **May** use gradient/image instead of solid color for logo.
  - Only use this when there is text near the logo.
  - Both text and logo must used together as one mask clipping the gradient or
    image. Don't apply the fill separately for logo and text.
- **Don't** set the logo color different from main text color.
  - If the background is light and the main text color is blue, the logo color
    should also be blue instead of black.
- **Don't** make the contrast between logo and background too low.
  - The contrast ratio should be the same as text.

## SVG usage instruction

The [plain SVG logo file](./static/logo-v2.svg) allows inheriting the fill color
from stylesheet or parent SVG. It is expected to set fill to `currentColor` in
stylesheet to match with the text color.

```css
svg.logo {
  fill: currentColor;
}
```
