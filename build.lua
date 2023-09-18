#!/usr/bin/env texlua

-- Build script for awesome-json-resume package

bundle = ""
module = "awesome-json-resume"

-- TDS zip file
packtdszip = true

-- Need to escape to shell for typesetting.
typesetopts = "-interaction=nonstopmode"

-- Files to typeset
typesetsuppfiles = {"example.pdf"}
typesetfiles = {"awesome-json-resume.dtx"}

sourcefiles = {
  "awesome-json-resume.dtx",
  "awesome-json-resume.ins",
  "awesome-json-resume-lua.dtx"
}

installfiles = {"*.cls", "awesome-json-resume.lua"}

-- ASCII mangling is not useful for us
asciiengines = { }

-- Avoid line-wrap issues
maxprintline = 9999

-- Need to typeset with LuaLaTeX since we're calling
-- our own package in the documentation and it only
-- supports LuaTeX currently.
typesetexe = "lualatex"

-- If we only want to document user manual, uncomment this line.
-- typesetcmds = "\\AtBeginDocument{\\DisableImplementation}"

uploadconfig = {
    author      = "Chris Waltrip",
    license     = "lppl1.3c",
    summary     = "My own take on a resume class",
    topic       = {"idk","idk"},
    ctanPath    = "/macros/luatex/latex/awesome-json-resume",
    repository  = "https://github.com/cawaltrip/latex-awesome-json-resume/",
    bugtracker  = "https://github.com/cawaltrip/latex-awesome-json-resume/issues",
    update      = true,
    description = [[
  The awesome-json-resume class does stuff.
  ]]
}
