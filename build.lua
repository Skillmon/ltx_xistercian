-- Build script for xistercian
module     = "xistercian"
pkgversion = "1.0"
pkgdate    = "2021-07-17"

-- update package date and version
tagfiles = {"xistercian.dtx", "README.md", "CTAN.md"}
function update_tag(file, content, tagname, tagdate)
  if tagname == nil then
    tagname = pkgversion
    tagdate = pkgdate
  end
  return string.gsub(content,
    "%d%d%d%d%-%d%d%-%d%d v%d%.%d%w?",
    tagdate .. " v" .. tagname)
end

-- test with pdfTeX and the LaTeX format
checkengines = {"pdftex","luatex"}
checkformat  = "latex"

-- from which files to build
sourcefiles = {"xistercian.dtx"}
unpackfiles = sourcefiles

-- which files to put in the tds
installfiles = {"xistercian.sty"}
textfiles    = {"README.md", "CTAN.md"}
docfiles     = {"xistercian.pdf"}

-- how the documentation is build
typesetfiles = {"xistercian.dtx"}
typesetruns  = 4

-- CTAN upload
ctanreadme    = "CTAN.md"
uploadconfig  = {
  pkg         = module,
  author      = "Jonathan P. Spratte",
  version     = pkgversion .. " " .. pkgdate,
  license     = "lppl1.3c",
  summary     = "Cistercian numerals in LaTeX",
  topic       = "keyval",
  ctanPath    = "/macros/generic/expkv",
  repository  = "https://github.com/Skillmon/ltx_xistercian",
  bugtracker  = "https://github.com/Skillmon/ltx_xistercian/issues",
  update      = true,
  description = [[
`expkv` is a minimalistic but fast and expandable key=val implementation.
It provides two parsing macros:

* `\ekvset{<set>}{<key=val list>}` which is comparable to `keyval`'s `\setkeys`

* `\ekvparse<cs1><cs2>{<key=val list>}` which can be used inside `\expanded` and
expands to `<cs1>{key}` and `<cs2>{key}{val}` for the entries in the
`<key=val list>`.

`expkv` has predictable brace-stripping behaviour and handles commas and equal
signs with category codes 12 and 13 correctly.
  ]]
}
