---@meta string

---
---
---
---[View documents](https://www.lua.org/manual/5.2/manual.html#6.4)
---
---@class stringlib
string = {}

---
---Returns the internal numeric codes of the characters `s[i], s[i+1], ..., s[j]`.
---
---
---@param s  string|number
---@param i? integer
---@param j? integer
---@return integer ...
---@nodiscard
function string.byte(s, i, j) end

---
---Returns a string with length equal to the number of arguments, in which each character has the internal numeric code equal to its corresponding argument.
---
---
---@param byte integer
---@param ... integer
---@return string
---@nodiscard
function string.char(byte, ...) end

---
---Returns a string containing a binary representation (a *binary chunk*) of the given function.
---
---
---@param f      async fun(...):...
---@return string
---@nodiscard
function string.dump(f) end

---
---Looks for the first match of `pattern` (see [§6.4.1](command:extension.lua.doc?["en-us/52/manual.html/6.4.1"])) in the string.
---
---
---@param s       string|number
---@param pattern string|number
---@param init?   integer
---@param plain?  boolean
---@return integer|nil start
---@return integer|nil end
---@return any|nil ... captured
---@nodiscard
function string.find(s, pattern, init, plain) end

---
---Returns a formatted version of its variable number of arguments following the description given in its first argument.
---
---@param s string|number
---@param ... any
---@return string
---@nodiscard
function string.format(s, ...) end

---
---Returns an iterator function that, each time it is called, returns the next captures from `pattern` (see [§6.4.1](command:extension.lua.doc?["en-us/52/manual.html/6.4.1"])) over the string s.
---
---As an example, the following loop will iterate over all the words from string s, printing one per line:
---```lua
---    s =
---"hello world from Lua"
---    for w in string.gmatch(s, "%a+") do
---        print(w)
---    end
---```
---
---
---@param s       string|number
---@param pattern string|number
---@return fun():string, ...
---@nodiscard
function string.gmatch(s, pattern) end

---
---Returns a copy of s in which all (or the first `n`, if given) occurrences of the `pattern` (see [§6.4.1](command:extension.lua.doc?["en-us/52/manual.html/6.4.1"])) have been replaced by a replacement string specified by `repl`.
---
---@param s       string|number
---@param pattern string|number
---@param repl    string|number|table|function
---@param n?      integer
---@return string
---@return integer count
---@nodiscard
function string.gsub(s, pattern, repl, n) end

---
---Returns its length.
---
---@param s string|number
---@return integer
---@nodiscard
function string.len(s) end

---
---Returns a copy of this string with all uppercase letters changed to lowercase.
---
---@param s string|number
---@return string
---@nodiscard
function string.lower(s) end

---
---Looks for the first match of `pattern` (see [§6.4.1](command:extension.lua.doc?["en-us/52/manual.html/6.4.1"])) in the string.
---
---@param s       string|number
---@param pattern string|number
---@param init?   integer
---@return any ...
---@nodiscard
function string.match(s, pattern, init) end


---
---Returns a string that is the concatenation of `n` copies of the string `s` separated by the string `sep`.
---
---@param s    string|number
---@param n    integer
---@param sep? string|number
---@return string
---@nodiscard
function string.rep(s, n, sep) end

---
---Returns a string that is the string `s` reversed.
---
---@param s string|number
---@return string
---@nodiscard
function string.reverse(s) end

---
---Returns the substring of the string that starts at `i` and continues until `j`.
---
---@param s  string|number
---@param i  integer
---@param j? integer
---@return string
---@nodiscard
function string.sub(s, i, j) end
---
---Returns a copy of this string with all lowercase letters changed to uppercase.
---
---@param s string|number
---@return string
---@nodiscard
function string.upper(s) end



---# Added by Moonsharp

---Same as `string.byte()` except that it returns a unicode codepoint instead of byte value.
---@param s  string|number
---@param i? integer
---@param j? integer
---@return integer ...
---@nodiscard
---
---***
---
---[Open Documentation](https://www.moonsharp.org/additions.html#new-functions-in-the-string-module)
---
---***
---
---@see string.byte
function string.unicode(s, i, j) end

---Returns `true` if str2 is contained inside str1.
---@param str1 string
---@param str2 string
---@return boolean
---
---***
---
---[Open Documentation](https://www.moonsharp.org/additions.html#new-functions-in-the-string-module)
---
function string.contains(str, str2) end

---Returns `true` if str2 is contained at the very start of str1.
---@param str1 string
---@param str2 string
---@return boolean
---
---***
---
---[Open Documentation](https://www.moonsharp.org/additions.html#new-functions-in-the-string-module)
---
function string.startsWith(str1, str2) end

---Returns `true` if str2 is contained at the very end of str1.
---@param str1 string
---@param str2 string
---@return boolean
---
---***
---
---[Open Documentation](https://www.moonsharp.org/additions.html#new-functions-in-the-string-module)
---
function string.endsWith(str1, str2) end




return string
