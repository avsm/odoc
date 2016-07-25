(*
 * Copyright (c) 2014 Leo White <lpw25@cl.cam.ac.uk>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *)

open DocOckPaths
open DocOckTypes

let empty_doc =
  let open Documentation in
    {text = []; tags = [];}

let nullary_equation =
  let open TypeDecl.Equation in
  let params = [] in
  let private_ = false in
  let manifest = None in
  let constraints = [] in
    {params; private_; manifest; constraints}

let covariant_equation =
  let open TypeDecl in
  let open TypeDecl.Equation in
  let params = [Var "'a", Some Pos] in
  let private_ = false in
  let manifest = None in
  let constraints = [] in
    {params; private_; manifest; constraints}

let invariant_equation =
  let open TypeDecl in
  let open TypeDecl.Equation in
  let params = [Var "'a", None] in
  let private_ = false in
  let manifest = None in
  let constraints = [] in
    {params; private_; manifest; constraints}

open Identifier

let bool_identifier = CoreType "bool"
let int_identifier = CoreType "int"
let char_identifier = CoreType "char"
let bytes_identifier = CoreType "bytes"
let string_identifier = CoreType "string"
let float_identifier = CoreType "float"
let bool_identifier = CoreType "bool"
let unit_identifier = CoreType "unit"
let exn_identifier = CoreType "exn"
let array_identifier = CoreType "array"
let list_identifier = CoreType "list"
let option_identifier = CoreType "option"
let int32_identifier = CoreType "int32"
let int64_identifier = CoreType "int64"
let nativeint_identifier = CoreType "nativeint"
let lazy_t_identifier = CoreType "lazy_t"
let extension_constructor_identifier = CoreType "extension_constructor"


let false_identifier = Constructor(bool_identifier, "false")
let true_identifier = Constructor(bool_identifier, "true")
let void_identifier = Constructor(unit_identifier, "()")
let nil_identifier = Constructor(list_identifier, "([])")
let cons_identifier = Constructor(list_identifier, "(::)")
let none_identifier = Constructor(option_identifier, "None")
let some_identifier = Constructor(option_identifier, "Some")

let match_failure_identifier = CoreException "Match_failure"
let assert_failure_identifier = CoreException "Assert_failure"
let invalid_argument_identifier = CoreException "Invalid_argument"
let failure_identifier = CoreException "Failure"
let not_found_identifier = CoreException "Not_found"
let out_of_memory_identifier = CoreException "Out_of_memory"
let stack_overflow_identifier = CoreException "Stack_overflow"
let sys_error_identifier = CoreException "Sys_error"
let end_of_file_identifier = CoreException "End_of_file"
let division_by_zero_identifier = CoreException "Division_by_zero"
let sys_blocked_io_identifier = CoreException "Sys_blocked_io"
let undefined_recursive_module_identifier =
  CoreException "Undefined_recursive_module"

let core_type_identifier = function
  | "int" -> Some int_identifier
  | "char" -> Some char_identifier
  | "bytes" -> Some bytes_identifier
  | "string" -> Some string_identifier
  | "float" -> Some float_identifier
  | "bool" -> Some bool_identifier
  | "unit" -> Some unit_identifier
  | "exn" -> Some exn_identifier
  | "array" -> Some array_identifier
  | "list" -> Some list_identifier
  | "option" -> Some option_identifier
  | "int32" -> Some int32_identifier
  | "int64" -> Some int64_identifier
  | "nativeint" -> Some nativeint_identifier
  | "lazy_t" -> Some lazy_t_identifier
  | "extension_constructor" -> Some extension_constructor_identifier
  | _ -> None

let core_exception_identifier = function
  | "Match_failure" -> Some match_failure_identifier
  | "Out_of_memory" -> Some out_of_memory_identifier
  | "Invalid_argument" -> Some invalid_argument_identifier
  | "Failure" -> Some failure_identifier
  | "Not_found" -> Some not_found_identifier
  | "Sys_error" -> Some sys_error_identifier
  | "End_of_file" -> Some end_of_file_identifier
  | "Division_by_zero" -> Some division_by_zero_identifier
  | "Stack_overflow" -> Some stack_overflow_identifier
  | "Sys_blocked_io" -> Some sys_blocked_io_identifier
  | "Assert_failure" -> Some assert_failure_identifier
  | "Undefined_recursive_module" -> Some undefined_recursive_module_identifier
  | _ -> None

let core_constructor_identifier = function
  | "false" -> Some false_identifier
  | "true" -> Some true_identifier
  | "()" -> Some void_identifier
  | "[]" -> Some nil_identifier
  | "([])" -> Some nil_identifier
  | "::" -> Some cons_identifier
  | "(::)" -> Some cons_identifier
  | "None" -> Some none_identifier
  | "Some" -> Some some_identifier
  | _ -> None

open Path.Resolved
open Path

let bool_path = Resolved (Identifier bool_identifier)
let int_path = Resolved (Identifier int_identifier)
let char_path = Resolved (Identifier char_identifier)
let bytes_path = Resolved (Identifier bytes_identifier)
let string_path = Resolved (Identifier string_identifier)
let float_path = Resolved (Identifier float_identifier)
let bool_path = Resolved (Identifier bool_identifier)
let unit_path = Resolved (Identifier unit_identifier)
let exn_path = Resolved (Identifier exn_identifier)
let array_path = Resolved (Identifier array_identifier)
let list_path = Resolved (Identifier list_identifier)
let option_path = Resolved (Identifier option_identifier)
let int32_path = Resolved (Identifier int32_identifier)
let int64_path = Resolved (Identifier int64_identifier)
let nativeint_path = Resolved (Identifier nativeint_identifier)
let lazy_t_path = Resolved (Identifier lazy_t_identifier)
let extension_constructor_path =
  Resolved (Identifier extension_constructor_identifier)

open Reference.Resolved
open Reference

let bool_reference = Resolved (Identifier bool_identifier)
let int_reference = Resolved (Identifier int_identifier)
let char_reference = Resolved (Identifier char_identifier)
let bytes_reference = Resolved (Identifier bytes_identifier)
let string_reference = Resolved (Identifier string_identifier)
let float_reference = Resolved (Identifier float_identifier)
let bool_reference = Resolved (Identifier bool_identifier)
let unit_reference = Resolved (Identifier unit_identifier)
let exn_reference = Resolved (Identifier exn_identifier)
let array_reference = Resolved (Identifier array_identifier)
let list_reference = Resolved (Identifier list_identifier)
let option_reference = Resolved (Identifier option_identifier)
let int32_reference = Resolved (Identifier int32_identifier)
let int64_reference = Resolved (Identifier int64_identifier)
let nativeint_reference = Resolved (Identifier nativeint_identifier)
let lazy_t_reference = Resolved (Identifier lazy_t_identifier)
let extension_constructor_reference =
  Resolved (Identifier extension_constructor_identifier)

let false_reference = Resolved (Identifier false_identifier)
let true_reference = Resolved (Identifier true_identifier)
let void_reference = Resolved (Identifier void_identifier)
let nil_reference = Resolved (Identifier nil_identifier)
let cons_reference = Resolved (Identifier cons_identifier)
let none_reference = Resolved (Identifier none_identifier)
let some_reference = Resolved (Identifier some_identifier)

let match_failure_reference = Resolved(Identifier match_failure_identifier)
let assert_failure_reference = Resolved(Identifier assert_failure_identifier)
let invalid_argument_reference = Resolved(Identifier invalid_argument_identifier)
let failure_reference = Resolved(Identifier failure_identifier)
let not_found_reference = Resolved(Identifier not_found_identifier)
let out_of_memory_reference = Resolved(Identifier out_of_memory_identifier)
let stack_overflow_reference = Resolved(Identifier stack_overflow_identifier)
let sys_error_reference = Resolved(Identifier sys_error_identifier)
let end_of_file_reference = Resolved(Identifier end_of_file_identifier)
let division_by_zero_reference = Resolved(Identifier division_by_zero_identifier)
let sys_blocked_io_reference = Resolved(Identifier sys_blocked_io_identifier)
let undefined_recursive_module_reference =
  Resolved(Identifier undefined_recursive_module_identifier)

let false_decl =
  let open TypeDecl.Constructor in
  let open Documentation in
  let doc = Ok empty_doc in
  let args = Tuple [] in
  let res = None in
    {id = false_identifier; doc; args; res}

let true_decl =
  let open TypeDecl.Constructor in
  let open Documentation in
  let doc = Ok empty_doc in
  let args = Tuple [] in
  let res = None in
    {id = true_identifier; doc; args; res}

let void_decl =
  let open TypeDecl.Constructor in
  let open Documentation in
  let doc = Ok empty_doc in
  let args = Tuple [] in
  let res = None in
    {id = void_identifier; doc; args; res}

let nil_decl =
  let open TypeDecl.Constructor in
  let open Documentation in
  let doc = Ok empty_doc in
  let args = Tuple [] in
  let res = None in
    {id = nil_identifier; doc; args; res}

let cons_decl =
  let open TypeDecl.Constructor in
  let open Documentation in
  let doc = Ok empty_doc in
  let head = TypeExpr.Var "'a" in
  let tail = TypeExpr.(Constr(list_path, [head])) in
  let args = Tuple [head; tail] in
  let res = None in
    {id = cons_identifier; doc; args; res}

let none_decl =
  let open TypeDecl.Constructor in
  let open Documentation in
  let doc = Ok empty_doc in
  let args = Tuple [] in
  let res = None in
    {id = none_identifier; doc; args; res}

let some_decl =
  let open TypeDecl.Constructor in
  let open Documentation in
  let doc = Ok empty_doc in
  let var = TypeExpr.Var "'a" in
  let args = Tuple [var] in
  let res = None in
    {id = some_identifier; doc; args; res}


let int_decl =
  let open TypeDecl in
  let open Documentation in
  let id = int_identifier in
  let text = [Raw "The type of integer numbers."] in
  let doc = Ok {empty_doc with text} in
  let equation = nullary_equation in
  let representation = None in
    {id; doc; equation; representation}

let char_decl =
  let open TypeDecl in
  let open Documentation in
  let id = char_identifier in
  let text = [Raw "The type of characters."] in
  let doc = Ok {empty_doc with text} in
  let equation = nullary_equation in
  let representation = None in
    {id; doc; equation; representation}

let bytes_decl =
  let open TypeDecl in
  let open Documentation in
  let id = bytes_identifier in
  let text = [Raw "The type of (writable) byte sequences."] in
  let doc = Ok {empty_doc with text} in
  let equation = nullary_equation in
  let representation = None in
    {id; doc; equation; representation}

let string_decl =
  let open TypeDecl in
  let open Documentation in
  let id = string_identifier in
  let text = [Raw "The type of (read-only) character strings."] in
  let doc = Ok {empty_doc with text} in
  let equation = nullary_equation in
  let representation = None in
    {id; doc; equation; representation}

let float_decl =
  let open TypeDecl in
  let open Documentation in
  let id = float_identifier in
  let text = [Raw "The type of floating-point numbers."] in
  let doc = Ok {empty_doc with text} in
  let equation = nullary_equation in
  let representation = None in
    {id; doc; equation; representation}

let bool_decl =
  let open TypeDecl in
  let open Representation in
  let open Documentation in
  let id = bool_identifier in
  let text = [Raw "The type of booleans (truth values)."] in
  let doc = Ok {empty_doc with text} in
  let equation = nullary_equation in
  let representation = Some (Variant [false_decl; true_decl]) in
    {id; doc; equation; representation}

let unit_decl =
  let open TypeDecl in
  let open Representation in
  let open Documentation in
  let id = unit_identifier in
  let text = [Raw "The type of the unit value."] in
  let doc = Ok {empty_doc with text} in
  let equation = nullary_equation in
  let representation = Some (Variant [void_decl]) in
    {id; doc; equation; representation}

let exn_decl =
  let open TypeDecl in
  let open Representation in
  let open Documentation in
  let id = exn_identifier in
  let text = [Raw "The type of exception values."] in
  let doc = Ok {empty_doc with text} in
  let equation = nullary_equation in
  let representation = Some Extensible in
    {id; doc; equation; representation}

let array_decl =
  let open TypeDecl in
  let open Documentation in
  let id = array_identifier in
  let text =
    [Raw "The type of arrays whose elements have type ";
     Code "'a";
     Raw "."]
  in
  let doc = Ok {empty_doc with text} in
  let equation = invariant_equation in
  let representation = None in
    {id; doc; equation; representation}

let list_decl =
  let open TypeDecl in
  let open Representation in
  let open Documentation in
  let id = list_identifier in
  let text =
    [Raw "The type of lists whose elements have type ";
     Code "'a";
     Raw "."]
  in
  let doc = Ok {empty_doc with text} in
  let equation = covariant_equation in
  let representation = Some (Variant [nil_decl; cons_decl]) in
    {id; doc; equation; representation}

let option_decl =
  let open TypeDecl in
  let open Representation in
  let open Documentation in
  let id = option_identifier in
  let text =
    [Raw "The type of optional values of type ";
     Code "'a";
     Raw "."]
  in
  let doc = Ok {empty_doc with text} in
  let equation = covariant_equation in
  let representation = Some (Variant [none_decl; some_decl]) in
    {id; doc; equation; representation}

let int32_decl =
  let open TypeDecl in
  let open Documentation in
  let id = int32_identifier in
  let text =
    [Raw "The type of signed 32-bit integers. See the ";
     Reference(Module(Root("Int32")), None);
     Raw " module."]
  in
  let doc = Ok {empty_doc with text} in
  let equation = nullary_equation in
  let representation = None in
    {id; doc; equation; representation}

let int64_decl =
  let open TypeDecl in
  let open Documentation in
  let id = int64_identifier in
  let text =
    [Raw "The type of signed 64-bit integers. See the ";
     Reference(Module(Root("Int64")), None);
     Raw " module."]
  in
  let doc = Ok {empty_doc with text} in
  let equation = nullary_equation in
  let representation = None in
    {id; doc; equation; representation}

let nativeint_decl =
  let open TypeDecl in
  let open Documentation in
  let id = nativeint_identifier in
  let text =
    [Raw "The type of signed, platform-native integers (32 bits on \
          32-bit processors, 64 bits on 64-bit processors). See the ";
     Reference(Module(Root("Nativeint")), None);
     Raw " module."]
  in
  let doc = Ok {empty_doc with text} in
  let equation = nullary_equation in
  let representation = None in
    {id; doc; equation; representation}

let lazy_t_decl =
  let open TypeDecl in
  let open Documentation in
  let id = lazy_t_identifier in
  let text =
    [Raw "This type is used to implement the ";
     Reference(Module(Root("Lazy")), None);
     Raw " module. It should not be used directly."]
  in
  let doc = Ok {empty_doc with text} in
  let equation = covariant_equation in
  let representation = None in
    {id; doc; equation; representation}

let extension_constructor_decl =
  let open TypeDecl in
  let open Documentation in
  let id = extension_constructor_identifier in
  let text =
    [Raw "cf. ";
     Reference(Module(Root("Obj")), None);
     Raw " module. It should not be used directly."]
  in
  let doc = Ok {empty_doc with text} in
  let equation = covariant_equation in
  let representation = None in
    {id; doc; equation; representation}

let match_failure_decl =
  let open Exception in
  let open Documentation in
  let id = match_failure_identifier in
  let text =
    [Raw "Exception raised when none of the cases of a pattern matching apply. \
          The arguments are the location of the ";
     Code "match";
     Raw " keyword in the source code (file name, line number, column number)."]
  in
  let doc = Ok {empty_doc with text} in
  let string_expr = TypeExpr.Constr(string_path, []) in
  let int_expr = TypeExpr.Constr(int_path, []) in
  let args =
    TypeDecl.Constructor.Tuple [TypeExpr.Tuple[string_expr; int_expr; int_expr]]
  in
  let res = None in
    {id; doc; args; res}

let assert_failure_decl =
  let open Exception in
  let open Documentation in
  let id = assert_failure_identifier in
  let text =
    [Raw "Exception raised when and assertion fails. \
          The arguments are the location of the ";
     Code "assert";
     Raw " keyword in the source code (file name, line number, column number)."]
  in
  let doc = Ok {empty_doc with text} in
  let string_expr = TypeExpr.Constr(string_path, []) in
  let int_expr = TypeExpr.Constr(int_path, []) in
  let args =
    TypeDecl.Constructor.Tuple [TypeExpr.Tuple[string_expr; int_expr; int_expr]]
  in
  let res = None in
    {id; doc; args; res}

let invalid_argument_decl =
  let open Exception in
  let open Documentation in
  let id = invalid_argument_identifier in
  let text =
    [Raw "Exception raised by library functions to signal that the given \
          arguments do not make sense."]
  in
  let doc = Ok {empty_doc with text} in
  let args = TypeDecl.Constructor.Tuple [TypeExpr.Constr(string_path, [])] in
  let res = None in
    {id; doc; args; res}

let failure_decl =
  let open Exception in
  let open Documentation in
  let id = failure_identifier in
  let text =
    [Raw "Exception raised by library functions to signal that they are \
          undefined on the given arguments."]
  in
  let doc = Ok {empty_doc with text} in
  let args = TypeDecl.Constructor.Tuple [TypeExpr.Constr(string_path, [])] in
  let res = None in
    {id; doc; args; res}

let not_found_decl =
  let open Exception in
  let open Documentation in
  let id = not_found_identifier in
  let text =
    [Raw "Exception raised by search functions when the desired object \
          could not be found."]
  in
  let doc = Ok {empty_doc with text} in
  let args = TypeDecl.Constructor.Tuple [] in
  let res = None in
    {id; doc; args; res}

let out_of_memory_decl =
  let open Exception in
  let open Documentation in
  let id = out_of_memory_identifier in
  let text =
    [Raw "Exception raised by the garbage collector when there is \
          insufficient memory to complete the computation."]
  in
  let doc = Ok {empty_doc with text} in
  let args = TypeDecl.Constructor.Tuple [] in
  let res = None in
    {id; doc; args; res}

(* TODO: Provide reference to the OCaml manual *)
let stack_overflow_decl =
  let open Exception in
  let open Documentation in
  let id = stack_overflow_identifier in
  let text =
    [Raw "Exception raised by the bytecode interpreter when the evaluation \
          stack reaches its maximal size. This often indicates infinite or \
          excessively deep recursion in the user's program. (Not fully \
          implemented by the native-code compiler; see section 11.5 of \
          the OCaml manual.)"]
  in
  let doc = Ok {empty_doc with text} in
  let args = TypeDecl.Constructor.Tuple [] in
  let res = None in
    {id; doc; args; res}

let sys_error_decl =
  let open Exception in
  let open Documentation in
  let id = sys_error_identifier in
  let text =
    [Raw "Exception raised by the input/output functions to report an \
          operating system error."]
  in
  let doc = Ok {empty_doc with text} in
  let args = TypeDecl.Constructor.Tuple [TypeExpr.Constr(string_path, [])] in
  let res = None in
    {id; doc; args; res}

let end_of_file_decl =
  let open Exception in
  let open Documentation in
  let id = end_of_file_identifier in
  let text =
    [Raw "Exception raised by input functions to signal that the end of \
          file has been reached."]
  in
  let doc = Ok {empty_doc with text} in
  let args = TypeDecl.Constructor.Tuple [] in
  let res = None in
    {id; doc; args; res}

let division_by_zero_decl =
  let open Exception in
  let open Documentation in
  let id = division_by_zero_identifier in
  let text =
    [Raw "Exception raised by integer division and remainder operations \
          when their second argument is zero."]
  in
  let doc = Ok {empty_doc with text} in
  let args = TypeDecl.Constructor.Tuple [] in
  let res = None in
    {id; doc; args; res}

let sys_blocked_io_decl =
  let open Exception in
  let open Documentation in
  let id = sys_blocked_io_identifier in
  let text =
    [Raw "A special case of ";
     Reference(Exception sys_error_reference, None);
     Raw " raised when no I/O is possible on a non-blocking I/O channel."]
  in
  let doc = Ok {empty_doc with text} in
  let args = TypeDecl.Constructor.Tuple [] in
  let res = None in
    {id; doc; args; res}

(* TODO: Provide reference to the OCaml manual *)
let undefined_recursive_module_decl =
  let open Exception in
  let open Documentation in
  let id = undefined_recursive_module_identifier in
  let text =
    [Raw "Exception raised when an ill-founded recursive module definition \
          is evaluated. (See section 7.8 of the OCaml manual.) The arguments \
          are the location of the definition in the source code \
          (file name, line number, column number)."]
  in
  let doc = Ok {empty_doc with text} in
  let string_expr = TypeExpr.Constr(string_path, []) in
  let int_expr = TypeExpr.Constr(int_path, []) in
  let args =
    TypeDecl.Constructor.Tuple [TypeExpr.Tuple[string_expr; int_expr; int_expr]]
  in
  let res = None in
    {id; doc; args; res}

let core_types =
  [int_decl; char_decl; bytes_decl; string_decl; float_decl; bool_decl;
   unit_decl; exn_decl; array_decl; list_decl; option_decl; int32_decl;
   int64_decl; nativeint_decl; lazy_t_decl]

let core_exceptions =
  [match_failure_decl; assert_failure_decl; invalid_argument_decl;
   failure_decl; not_found_decl; out_of_memory_decl; stack_overflow_decl;
   sys_error_decl; end_of_file_decl; division_by_zero_decl;
   sys_blocked_io_decl; undefined_recursive_module_decl]
