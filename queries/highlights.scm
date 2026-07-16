; Identifier naming conventions

(identifier) @variable

((identifier) @constructor
 (#match? @constructor "^[A-Z]"))

((identifier) @constant
 (#match? @constant "^[A-Z][A-Z_]*$"))

; Function calls

(decorator) @function
(decorator
  (identifier) @function)

(call
  function: (attribute attribute: (identifier) @function.method))
(call
  function: (identifier) @function)

; Builtin functions

((call
  function: (identifier) @function.builtin)
 (#match?
   @function.builtin
   "^(abs|addpattern|all|all_equal|and_then|and_then_await|any|ascii|async_map|bin|bool|breakpoint|bytearray|bytes|call|callable|cartesian_product|chr|classmethod|collectby|compile|complex|const|consume|count|cycle|delattr|dict|dir|divmod|dropwhile|enumerate|eval|exec|Expected|filter|flatten|flip|float|fmap|format|frozenset|getattr|globals|groupsof|hasattr|hash|help|hex|id|ident|input|int|isinstance|issubclass|iter|len|lift|lift_apart|list|locals|makedata|map|mapreduce|max|memoize|memoryview|min|multiset|multi_enumerate|next|object|oct|open|ord|override|pow|print|process_map|property|range|recursive_generator|reduce|reiterable|repr|reveal_locals|reveal_type|reversed|round|safe_call|scan|set|setattr|slice|sorted|starmap|staticmethod|str|sum|super|takewhile|tee|thread_map|tuple|type|vars|windowsof|zip|zip_longest|__import__)$"))

; Function definitions

(function_definition
  name: (identifier) @function)

(attribute attribute: (identifier) @property)
(type (identifier) @type)

; Literals

[
  (none)
  (true)
  (false)
] @constant.builtin

[
  (integer)
  (float)
] @number

(comment) @comment
(string) @string
(escape_sequence) @escape

(interpolation
  "{" @punctuation.special
  "}" @punctuation.special) @embedded

[
  "-"
  "-="
  "!="
  "*"
  "**"
  "**="
  "*="
  "/"
  "//"
  "//="
  "/="
  "&"
  "&="
  "%"
  "%="
  "^"
  "^="
  "+"
  "->"
  "+="
  "<"
  "<<"
  "<<="
  "<="
  "<>"
  "="
  ":="
  "=="
  ">"
  ">="
  ">>"
  ">>="
  "|"
  "|="
  "~"
  "@="
  "??"
  "??="
  "and"
  "in"
  "is"
  "not"
  "or"
  "is not"
  "not in"
] @operator

[
  "as"
  "assert"
  "async"
  "await"
  "break"
  "class"
  "continue"
  "def"
  "del"
  "elif"
  "else"
  "except"
  "exec"
  "finally"
  "for"
  "from"
  "global"
  "if"
  "import"
  "lambda"
  "nonlocal"
  "pass"
  "print"
  "raise"
  "return"
  "try"
  "while"
  "with"
  "yield"
  "match"
  "case"
] @keyword
