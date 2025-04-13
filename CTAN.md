-------------------------------------------------------------------------------
# xistercian -- Cistercian numerals in LaTeX

Version 2025-04-13 v1.3

Released under the LaTeX Project Public License v1.3c or later
See http://www.latex-project.org/lppl.txt

Hosted at https://github.com/Skillmon/ltx_xistercian

-------------------------------------------------------------------------------

Copyright (C) 2021-2025 Jonathan P. Spratte

This  work may be  distributed and/or  modified under  the conditions  of the
LaTeX Project Public License (LPPL),  either version 1.3c  of this license or
(at your option) any later version.  The latest version of this license is in
the file:

  http://www.latex-project.org/lppl.txt

This work is "maintained" (as per LPPL maintenance status) by
  Jonathan P. Spratte.

-------------------------------------------------------------------------------

This package adds Cistercian numerals to LaTeX. The glyphs are created with PGF,
but cashed inside boxes to get better performance.

The package provides (among other macros) the commands:

- `\cistercian{<counter>}` to format a LaTeX2e counter
- `\cisterciannum{<integer>}` to format the `<integer>` handed in as a string

It supports the LaTeX typical syntax `\pagenumbering{cistercian}` as well.
