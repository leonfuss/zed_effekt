[
  "def"
  "record"
  "type"
  "interface"
  "effect"
  "match"
  "case"
  "do"
  "while"
  "if"
  "else"
  "val"
  "var"
  "try"
  "with"
  "resume"
  "import"
] @keyword

"def" @keyword.function

[
 "("
 ")"
 "["
 "]"
 "{"
 "}"
]  @punctuation.bracket

[
 "."
 ","
] @punctuation.delimiter

(list_expression
    [
        "["
        "]"
    ] @punctuation.list_marker
)


"import" @include

(comment) @comment


; literals
[
(integer_literal)
(float_literal)
] @number
(string_literal) @string
(boolean_literal) @boolean

(hole) @hole

; functions
(call_expression function: (identifier) @function.name)
(field_declaration (field_identifier) @property)

(parameter (identifier) @variable)
(val_declaration name: (identifier) @variable)
(var_declaration name: (identifier) @variable)
(expression_statement (identifier) @variable)

(function_item  name: (identifier) @function.name)


((call_expression (identifier) @constructor)
    (#match? @constructor "[A-Z][A-Z_a-z0-9]+"))

; types
(type_identifier) @type.name
(primitive_type) @type.buildin
(generic_type (type_arguments (type_identifier) @type.generic))

(type_variant (type_identifier) @variant)

; effects
(effect_item name: (type_identifier) @type.effect)
(effect_alias [
    (primitive_type)
    (type_identifier)
    ] @type.effect)
