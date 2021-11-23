-- Build script for xistercian
module     = "xistercian"
pkgversion = "1.1"
pkgdate    = "2021-11-23"

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
  topic       = "numbers",
  ctanPath    = "/macros/latex/contrib/expkv",
  repository  = "https://github.com/Skillmon/ltx_xistercian",
  bugtracker  = "https://github.com/Skillmon/ltx_xistercian/issues",
  update      = true,
  description = [[
`xistercian` allows you to use Cistercian numerals in LaTeX. The glyphs are
created using PGF and to a certain degree configurable.

You can use Cistercian numerals as page numbers using
`\pagenumbering{cistercian}`. The two main macros are:

- `\cistercian{<counter>}` formats the LaTeX2e counter as a Cistercian numeral
- `\cisterciannum{<integer>}` formats the integer (given as a string) as a
  Cistercian numeral
  ]]
}
