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
] @keyword

(comment) @comment
(number) @number
(string) @string
(boolean) @boolean

(parameter_type (type_identifier) @type)
(parameter_type (generic_identifier) @generic)

(constructor (type_identifier) @type.constructor)
(constructor_pattern (type_identifier) @type.constructor)

; enum highlight is not supported
; (type (parameter_type (type_identifier) @enum.name))
; (type_member (type_identifier) @enum.member)

(type (parameter_type (type_identifier) @type.name))
(type_member (type_identifier) @type.member)


(function (identifier) @function.name)
(function (parameters(parameter (identifier) @parameter.name)))

(interface_method (identifier) @function.name)
(interface_method (parameters(parameter (identifier) @parameter.name)))

(function_call (identifier) @function.call.name)

(call_chain (identifier) @variable.name)
(call_chain (pre_arg_function_call (identifier) @function.call.name))
