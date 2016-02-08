
open Prims
type debug_level_t =
| Low
| Medium
| High
| Extreme
| Other of Prims.string

let is_Low : debug_level_t  ->  Prims.bool = (fun _discr_ -> (match (_discr_) with
| Low -> begin
true
end
| _ -> begin
false
end))

let is_Medium : debug_level_t  ->  Prims.bool = (fun _discr_ -> (match (_discr_) with
| Medium -> begin
true
end
| _ -> begin
false
end))

let is_High : debug_level_t  ->  Prims.bool = (fun _discr_ -> (match (_discr_) with
| High -> begin
true
end
| _ -> begin
false
end))

let is_Extreme : debug_level_t  ->  Prims.bool = (fun _discr_ -> (match (_discr_) with
| Extreme -> begin
true
end
| _ -> begin
false
end))

let is_Other : debug_level_t  ->  Prims.bool = (fun _discr_ -> (match (_discr_) with
| Other (_) -> begin
true
end
| _ -> begin
false
end))

let ___Other____0 : debug_level_t  ->  Prims.string = (fun projectee -> (match (projectee) with
| Other (_19_4) -> begin
_19_4
end))

let show_signatures : Prims.string Prims.list FStar_ST.ref = (FStar_Util.mk_ref [])

let norm_then_print : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref true)

let z3_exe : Prims.string FStar_ST.ref = (let _122_19 = (FStar_Platform.exe "z3")
in (FStar_Util.mk_ref _122_19))

let silent : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let debug : Prims.string Prims.list FStar_ST.ref = (FStar_Util.mk_ref [])

let debug_level : debug_level_t Prims.list FStar_ST.ref = (FStar_Util.mk_ref [])

let dlevel : Prims.string  ->  debug_level_t = (fun _19_1 -> (match (_19_1) with
| "Low" -> begin
Low
end
| "Medium" -> begin
Medium
end
| "High" -> begin
High
end
| "Extreme" -> begin
Extreme
end
| s -> begin
Other (s)
end))

let one_debug_level_geq : debug_level_t  ->  debug_level_t  ->  Prims.bool = (fun l1 l2 -> (match (l1) with
| (Other (_)) | (Low) -> begin
(l1 = l2)
end
| Medium -> begin
((l2 = Low) || (l2 = Medium))
end
| High -> begin
(((l2 = Low) || (l2 = Medium)) || (l2 = High))
end
| Extreme -> begin
((((l2 = Low) || (l2 = Medium)) || (l2 = High)) || (l2 = Extreme))
end))

let debug_level_geq : debug_level_t  ->  Prims.bool = (fun l2 -> (let _122_29 = (FStar_ST.read debug_level)
in (FStar_All.pipe_right _122_29 (FStar_Util.for_some (fun l1 -> (one_debug_level_geq l1 l2))))))

let log_types : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let print_effect_args : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let print_real_names : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let dump_module : Prims.string Prims.option FStar_ST.ref = (FStar_Util.mk_ref None)

let should_dump : Prims.string  ->  Prims.bool = (fun l -> (match ((FStar_ST.read dump_module)) with
| None -> begin
false
end
| Some (m) -> begin
(m = l)
end))

let logQueries : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let z3exe : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref true)

let outputDir : Prims.string Prims.option FStar_ST.ref = (FStar_Util.mk_ref (Some (".")))

let fstar_home_opt : Prims.string Prims.option FStar_ST.ref = (FStar_Util.mk_ref None)

let _fstar_home : Prims.string FStar_ST.ref = (FStar_Util.mk_ref "")

let prims_ref : Prims.string Prims.option FStar_ST.ref = (FStar_Util.mk_ref None)

let z3timeout : Prims.int FStar_ST.ref = (FStar_Util.mk_ref 5)

let admit_smt_queries : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let pretype : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref true)

let codegen : Prims.string Prims.option FStar_ST.ref = (FStar_Util.mk_ref None)

let admit_fsi : Prims.string Prims.list FStar_ST.ref = (FStar_Util.mk_ref [])

let codegen_libs : Prims.string Prims.list Prims.list FStar_ST.ref = (FStar_Util.mk_ref [])

let trace_error : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let verify : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref true)

let full_context_dependency : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref true)

let print_implicits : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let print_bound_var_types : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let print_universes : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let hide_uvar_nums : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let hide_genident_nums : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let serialize_mods : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let initial_fuel : Prims.int FStar_ST.ref = (FStar_Util.mk_ref 2)

let initial_ifuel : Prims.int FStar_ST.ref = (FStar_Util.mk_ref 1)

let max_fuel : Prims.int FStar_ST.ref = (FStar_Util.mk_ref 8)

let min_fuel : Prims.int FStar_ST.ref = (FStar_Util.mk_ref 1)

let max_ifuel : Prims.int FStar_ST.ref = (FStar_Util.mk_ref 2)

let warn_top_level_effects : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let no_slack : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let eager_inference : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let universes : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let unthrottle_inductives : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let use_eq_at_higher_order : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let use_native_int : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let fs_typ_app : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let n_cores : Prims.int FStar_ST.ref = (FStar_Util.mk_ref 1)

let verify_module : Prims.string Prims.list FStar_ST.ref = (FStar_Util.mk_ref [])

let __temp_no_proj : Prims.string Prims.list FStar_ST.ref = (FStar_Util.mk_ref [])

let interactive : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let interactive_context : Prims.string Prims.option FStar_ST.ref = (FStar_Util.mk_ref None)

let split_cases : Prims.int FStar_ST.ref = (FStar_Util.mk_ref 0)

let _include_path : Prims.string Prims.list FStar_ST.ref = (FStar_Util.mk_ref [])

let interactive_fsi : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let print_fuels : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let cardinality : Prims.string FStar_ST.ref = (FStar_Util.mk_ref "off")

let timing : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let inline_arith : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let warn_cardinality : Prims.unit  ->  Prims.bool = (fun _19_26 -> (match (()) with
| () -> begin
(match ((FStar_ST.read cardinality)) with
| "warn" -> begin
true
end
| _19_29 -> begin
false
end)
end))

let check_cardinality : Prims.unit  ->  Prims.bool = (fun _19_30 -> (match (()) with
| () -> begin
(match ((FStar_ST.read cardinality)) with
| "check" -> begin
true
end
| _19_33 -> begin
false
end)
end))

let dep : Prims.string Prims.option FStar_ST.ref = (FStar_ST.alloc None)

let explicit_deps : Prims.bool FStar_ST.ref = (FStar_Util.mk_ref false)

let init_options : Prims.unit  ->  Prims.unit = (fun _19_34 -> (match (()) with
| () -> begin
(let _19_35 = (FStar_ST.op_Colon_Equals show_signatures [])
in (let _19_37 = (FStar_ST.op_Colon_Equals norm_then_print true)
in (let _19_39 = (let _122_38 = (FStar_Platform.exe "z3")
in (FStar_ST.op_Colon_Equals z3_exe _122_38))
in (let _19_41 = (FStar_ST.op_Colon_Equals silent false)
in (let _19_43 = (FStar_ST.op_Colon_Equals debug [])
in (let _19_45 = (FStar_ST.op_Colon_Equals debug_level [])
in (let _19_47 = (FStar_ST.op_Colon_Equals log_types false)
in (let _19_49 = (FStar_ST.op_Colon_Equals print_effect_args false)
in (let _19_51 = (FStar_ST.op_Colon_Equals print_real_names false)
in (let _19_53 = (FStar_ST.op_Colon_Equals dump_module None)
in (let _19_55 = (FStar_ST.op_Colon_Equals logQueries false)
in (let _19_57 = (FStar_ST.op_Colon_Equals z3exe true)
in (let _19_59 = (FStar_ST.op_Colon_Equals outputDir (Some (".")))
in (let _19_61 = (FStar_ST.op_Colon_Equals fstar_home_opt None)
in (let _19_63 = (FStar_ST.op_Colon_Equals _fstar_home "")
in (let _19_65 = (FStar_ST.op_Colon_Equals prims_ref None)
in (let _19_67 = (FStar_ST.op_Colon_Equals z3timeout 5)
in (let _19_69 = (FStar_ST.op_Colon_Equals admit_smt_queries false)
in (let _19_71 = (FStar_ST.op_Colon_Equals pretype true)
in (let _19_73 = (FStar_ST.op_Colon_Equals codegen None)
in (let _19_75 = (FStar_ST.op_Colon_Equals codegen_libs [])
in (let _19_77 = (FStar_ST.op_Colon_Equals admit_fsi [])
in (let _19_79 = (FStar_ST.op_Colon_Equals trace_error false)
in (let _19_81 = (FStar_ST.op_Colon_Equals verify true)
in (let _19_83 = (FStar_ST.op_Colon_Equals full_context_dependency true)
in (let _19_85 = (FStar_ST.op_Colon_Equals print_implicits false)
in (let _19_87 = (FStar_ST.op_Colon_Equals print_bound_var_types false)
in (let _19_89 = (FStar_ST.op_Colon_Equals print_universes false)
in (let _19_91 = (FStar_ST.op_Colon_Equals hide_uvar_nums false)
in (let _19_93 = (FStar_ST.op_Colon_Equals hide_genident_nums false)
in (let _19_95 = (FStar_ST.op_Colon_Equals serialize_mods false)
in (let _19_97 = (FStar_ST.op_Colon_Equals initial_fuel 2)
in (let _19_99 = (FStar_ST.op_Colon_Equals initial_ifuel 1)
in (let _19_101 = (FStar_ST.op_Colon_Equals max_fuel 8)
in (let _19_103 = (FStar_ST.op_Colon_Equals min_fuel 1)
in (let _19_105 = (FStar_ST.op_Colon_Equals max_ifuel 2)
in (let _19_107 = (FStar_ST.op_Colon_Equals warn_top_level_effects false)
in (let _19_109 = (FStar_ST.op_Colon_Equals no_slack false)
in (let _19_111 = (FStar_ST.op_Colon_Equals eager_inference false)
in (let _19_113 = (FStar_ST.op_Colon_Equals unthrottle_inductives false)
in (let _19_115 = (FStar_ST.op_Colon_Equals use_eq_at_higher_order false)
in (let _19_117 = (FStar_ST.op_Colon_Equals fs_typ_app false)
in (let _19_119 = (FStar_ST.op_Colon_Equals n_cores 1)
in (let _19_121 = (FStar_ST.op_Colon_Equals split_cases 0)
in (let _19_123 = (FStar_ST.op_Colon_Equals verify_module [])
in (let _19_125 = (FStar_ST.op_Colon_Equals __temp_no_proj [])
in (let _19_127 = (FStar_ST.op_Colon_Equals _include_path [])
in (let _19_129 = (FStar_ST.op_Colon_Equals print_fuels false)
in (let _19_131 = (FStar_ST.op_Colon_Equals use_native_int false)
in (let _19_133 = (FStar_ST.op_Colon_Equals explicit_deps false)
in (let _19_135 = (FStar_ST.op_Colon_Equals dep None)
in (let _19_137 = (FStar_ST.op_Colon_Equals timing false)
in (FStar_ST.op_Colon_Equals inline_arith false)))))))))))))))))))))))))))))))))))))))))))))))))))))
end))

let set_fstar_home : Prims.unit  ->  Prims.string = (fun _19_139 -> (match (()) with
| () -> begin
(let fh = (match ((FStar_ST.read fstar_home_opt)) with
| None -> begin
(let x = (FStar_Util.get_exec_dir ())
in (let x = (Prims.strcat x "/..")
in (let _19_143 = (FStar_ST.op_Colon_Equals _fstar_home x)
in (let _19_145 = (FStar_ST.op_Colon_Equals fstar_home_opt (Some (x)))
in x))))
end
| Some (x) -> begin
(let _19_149 = (FStar_ST.op_Colon_Equals _fstar_home x)
in x)
end)
in fh)
end))

let get_fstar_home : Prims.unit  ->  Prims.string = (fun _19_152 -> (match (()) with
| () -> begin
(match ((FStar_ST.read fstar_home_opt)) with
| None -> begin
(let _19_154 = (let _122_43 = (set_fstar_home ())
in (FStar_All.pipe_left Prims.ignore _122_43))
in (FStar_ST.read _fstar_home))
end
| Some (x) -> begin
x
end)
end))

let get_include_path : Prims.unit  ->  Prims.string Prims.list = (fun _19_158 -> (match (()) with
| () -> begin
(let h = (get_fstar_home ())
in (let _122_46 = (FStar_ST.read _include_path)
in (FStar_List.append _122_46 ((".")::((Prims.strcat h "/lib"))::((Prims.strcat h "/lib/fstar"))::((Prims.strcat h "/stdlib"))::((Prims.strcat h "/stdlib/fstar"))::[]))))
end))

let find_file : Prims.string  ->  Prims.string Prims.option = (fun filename -> (let search_path = (get_include_path ())
in (FStar_All.try_with (fun _19_163 -> (match (()) with
| () -> begin
(let _122_51 = if (FStar_Util.is_path_absolute filename) then begin
if (FStar_Util.file_exists filename) then begin
Some (filename)
end else begin
None
end
end else begin
(FStar_Util.find_map search_path (fun p -> (let path = (FStar_Util.join_paths p filename)
in if (FStar_Util.file_exists path) then begin
Some (path)
end else begin
None
end)))
end
in (FStar_Util.map_option FStar_Util.normalize_file_path _122_51))
end)) (fun _19_162 -> (match (_19_162) with
| _19_166 -> begin
None
end)))))

let prims : Prims.unit  ->  Prims.string = (fun _19_171 -> (match (()) with
| () -> begin
(match ((FStar_ST.read prims_ref)) with
| None -> begin
(let filen = "prims.fst"
in (match ((find_file filen)) with
| Some (result) -> begin
result
end
| None -> begin
(let _122_56 = (let _122_55 = (FStar_Util.format1 "unable to find required file \"%s\" in the module search path.\n" filen)
in FStar_Util.Failure (_122_55))
in (Prims.raise _122_56))
end))
end
| Some (x) -> begin
x
end)
end))

let prependOutputDir : Prims.string  ->  Prims.string = (fun fname -> (match ((FStar_ST.read outputDir)) with
| None -> begin
fname
end
| Some (x) -> begin
(Prims.strcat (Prims.strcat x "/") fname)
end))

let cache_dir : Prims.string = "cache"

let display_version : Prims.unit  ->  Prims.unit = (fun _19_183 -> (match (()) with
| () -> begin
(let _122_61 = (FStar_Util.format5 "F* %s\nplatform=%s\ncompiler=%s\ndate=%s\ncommit=%s\n" FStar_Version.version FStar_Version.platform FStar_Version.compiler FStar_Version.date FStar_Version.commit)
in (FStar_Util.print_string _122_61))
end))

let display_usage = (fun specs -> (let _19_185 = (FStar_Util.print_string "fstar [option] file...\n")
in (FStar_List.iter (fun _19_192 -> (match (_19_192) with
| (_19_188, flag, p, doc) -> begin
(match (p) with
| FStar_Getopt.ZeroArgs (ig) -> begin
if (doc = "") then begin
(let _122_66 = (let _122_65 = (FStar_Util.colorize_bold flag)
in (FStar_Util.format1 "  --%s\n" _122_65))
in (FStar_Util.print_string _122_66))
end else begin
(let _122_68 = (let _122_67 = (FStar_Util.colorize_bold flag)
in (FStar_Util.format2 "  --%s  %s\n" _122_67 doc))
in (FStar_Util.print_string _122_68))
end
end
| FStar_Getopt.OneArg (_19_196, argname) -> begin
if (doc = "") then begin
(let _122_72 = (let _122_71 = (FStar_Util.colorize_bold flag)
in (let _122_70 = (FStar_Util.colorize_bold argname)
in (FStar_Util.format2 "  --%s %s\n" _122_71 _122_70)))
in (FStar_Util.print_string _122_72))
end else begin
(let _122_75 = (let _122_74 = (FStar_Util.colorize_bold flag)
in (let _122_73 = (FStar_Util.colorize_bold argname)
in (FStar_Util.format3 "  --%s %s  %s\n" _122_74 _122_73 doc)))
in (FStar_Util.print_string _122_75))
end
end)
end)) specs)))

let rec specs : Prims.unit  ->  FStar_Getopt.opt Prims.list = (fun _19_200 -> (match (()) with
| () -> begin
(let specs = ((FStar_Getopt.noshort, "admit_fsi", FStar_Getopt.OneArg (((fun x -> (let _122_85 = (let _122_84 = (FStar_ST.read admit_fsi)
in (x)::_122_84)
in (FStar_ST.op_Colon_Equals admit_fsi _122_85))), "module name")), "Treat .fsi as a .fst"))::((FStar_Getopt.noshort, "admit_smt_queries", FStar_Getopt.OneArg (((fun s -> (let _122_89 = if (s = "true") then begin
true
end else begin
if (s = "false") then begin
false
end else begin
(FStar_All.failwith "Invalid argument to --admit_smt_queries")
end
end
in (FStar_ST.op_Colon_Equals admit_smt_queries _122_89))), "true|false")), "Admit SMT queries (UNSAFE! But, useful during development); default: \'false\'"))::((FStar_Getopt.noshort, "cardinality", FStar_Getopt.OneArg (((fun x -> (let _122_93 = (validate_cardinality x)
in (FStar_ST.op_Colon_Equals cardinality _122_93))), "off|warn|check")), "Check cardinality constraints on inductive data types (default \'off\')"))::((FStar_Getopt.noshort, "codegen", FStar_Getopt.OneArg (((fun s -> (let _122_97 = (parse_codegen s)
in (FStar_ST.op_Colon_Equals codegen _122_97))), "OCaml|FSharp")), "Generate code for execution"))::((FStar_Getopt.noshort, "codegen-lib", FStar_Getopt.OneArg (((fun s -> (let _122_102 = (let _122_101 = (FStar_ST.read codegen_libs)
in ((FStar_Util.split s "."))::_122_101)
in (FStar_ST.op_Colon_Equals codegen_libs _122_102))), "namespace")), "External runtime library library"))::((FStar_Getopt.noshort, "debug", FStar_Getopt.OneArg (((fun x -> (let _122_107 = (let _122_106 = (FStar_ST.read debug)
in (x)::_122_106)
in (FStar_ST.op_Colon_Equals debug _122_107))), "module name")), "Print LOTS of debugging information while checking module [arg]"))::((FStar_Getopt.noshort, "debug_level", FStar_Getopt.OneArg (((fun x -> (let _122_112 = (let _122_111 = (FStar_ST.read debug_level)
in ((dlevel x))::_122_111)
in (FStar_ST.op_Colon_Equals debug_level _122_112))), "Low|Medium|High|Extreme")), "Control the verbosity of debugging info"))::((FStar_Getopt.noshort, "dep", FStar_Getopt.OneArg (((fun x -> (FStar_ST.op_Colon_Equals dep (Some (x)))), "make|nubuild")), "Output the transitive closure of the dependency graph in a format suitable for the given tool"))::((FStar_Getopt.noshort, "dump_module", FStar_Getopt.OneArg (((fun x -> (FStar_ST.op_Colon_Equals dump_module (Some (x)))), "module name")), ""))::((FStar_Getopt.noshort, "eager_inference", FStar_Getopt.ZeroArgs ((fun _19_210 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals eager_inference true)
end))), "Solve all type-inference constraints eagerly; more efficient but at the cost of generality"))::((FStar_Getopt.noshort, "explicit_deps", FStar_Getopt.ZeroArgs ((fun _19_211 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals explicit_deps true)
end))), "tell FStar to not find dependencies automatically because the user provides them on the command-line, along with the right --admit-fsi options"))::((FStar_Getopt.noshort, "fs_typ_app", FStar_Getopt.ZeroArgs ((fun _19_212 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals fs_typ_app true)
end))), "Allow the use of t<t1,...,tn> syntax for type applications; brittle since it clashes with the integer less-than operator"))::((FStar_Getopt.noshort, "fsi", FStar_Getopt.ZeroArgs ((fun _19_213 -> (match (()) with
| () -> begin
(set_interactive_fsi ())
end))), "fsi flag; A flag to indicate if type checking a fsi in the interactive mode"))::((FStar_Getopt.noshort, "fstar_home", FStar_Getopt.OneArg (((fun x -> (FStar_ST.op_Colon_Equals fstar_home_opt (Some (x)))), "dir")), "Set the FSTAR_HOME variable to dir"))::((FStar_Getopt.noshort, "hide_genident_nums", FStar_Getopt.ZeroArgs ((fun _19_215 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals hide_genident_nums true)
end))), "Don\'t print generated identifier numbers"))::((FStar_Getopt.noshort, "hide_uvar_nums", FStar_Getopt.ZeroArgs ((fun _19_216 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals hide_uvar_nums true)
end))), "Don\'t print unification variable numbers"))::((FStar_Getopt.noshort, "in", FStar_Getopt.ZeroArgs ((fun _19_217 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals interactive true)
end))), "Interactive mode; reads input from stdin"))::((FStar_Getopt.noshort, "in_context", FStar_Getopt.OneArg (((fun s -> (let _19_219 = (FStar_ST.op_Colon_Equals interactive true)
in (FStar_ST.op_Colon_Equals interactive_context (Some (s))))), "name")), "Specify the context of an interactive session; needed for --auto_deps to work with interactive mode."))::((FStar_Getopt.noshort, "include", FStar_Getopt.OneArg (((fun s -> (let _122_136 = (let _122_135 = (FStar_ST.read _include_path)
in (FStar_List.append _122_135 ((s)::[])))
in (FStar_ST.op_Colon_Equals _include_path _122_136))), "path")), "A directory in which to search for files included on the command line"))::((FStar_Getopt.noshort, "initial_fuel", FStar_Getopt.OneArg (((fun x -> (let _122_140 = (FStar_Util.int_of_string x)
in (FStar_ST.op_Colon_Equals initial_fuel _122_140))), "non-negative integer")), "Number of unrolling of recursive functions to try initially (default 2)"))::((FStar_Getopt.noshort, "initial_ifuel", FStar_Getopt.OneArg (((fun x -> (let _122_144 = (FStar_Util.int_of_string x)
in (FStar_ST.op_Colon_Equals initial_ifuel _122_144))), "non-negative integer")), "Number of unrolling of inductive datatypes to try at first (default 1)"))::((FStar_Getopt.noshort, "inline_arith", FStar_Getopt.ZeroArgs ((fun _19_224 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals inline_arith true)
end))), "Inline definitions of arithmetic functions in the SMT encoding"))::((FStar_Getopt.noshort, "lax", FStar_Getopt.ZeroArgs ((fun _19_225 -> (match (()) with
| () -> begin
(let _19_226 = (FStar_ST.op_Colon_Equals pretype true)
in (FStar_ST.op_Colon_Equals verify false))
end))), "Run the lax-type checker only (admit all verification conditions)"))::((FStar_Getopt.noshort, "log_types", FStar_Getopt.ZeroArgs ((fun _19_228 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals log_types true)
end))), "Print types computed for data/val/let-bindings"))::((FStar_Getopt.noshort, "log_queries", FStar_Getopt.ZeroArgs ((fun _19_229 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals logQueries true)
end))), "Log the Z3 queries in queries.smt2"))::((FStar_Getopt.noshort, "max_fuel", FStar_Getopt.OneArg (((fun x -> (let _122_152 = (FStar_Util.int_of_string x)
in (FStar_ST.op_Colon_Equals max_fuel _122_152))), "non-negative integer")), "Number of unrolling of recursive functions to try at most (default 8)"))::((FStar_Getopt.noshort, "max_ifuel", FStar_Getopt.OneArg (((fun x -> (let _122_156 = (FStar_Util.int_of_string x)
in (FStar_ST.op_Colon_Equals max_ifuel _122_156))), "non-negative integer")), "Number of unrolling of inductive datatypes to try at most (default 2)"))::((FStar_Getopt.noshort, "min_fuel", FStar_Getopt.OneArg (((fun x -> (let _122_160 = (FStar_Util.int_of_string x)
in (FStar_ST.op_Colon_Equals min_fuel _122_160))), "non-negative integer")), "Minimum number of unrolling of recursive functions to try (default 1)"))::((FStar_Getopt.noshort, "MLish", FStar_Getopt.ZeroArgs ((fun _19_233 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals full_context_dependency false)
end))), "Introduce unification variables that are only dependent on the type variables in the context"))::((FStar_Getopt.noshort, "n_cores", FStar_Getopt.OneArg (((fun x -> (let _122_165 = (FStar_Util.int_of_string x)
in (FStar_ST.op_Colon_Equals n_cores _122_165))), "positive integer")), "Maximum number of cores to use for the solver (default 1)"))::((FStar_Getopt.noshort, "no_fs_typ_app", FStar_Getopt.ZeroArgs ((fun _19_235 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals fs_typ_app false)
end))), "Do not allow the use of t<t1,...,tn> syntax for type applications"))::((FStar_Getopt.noshort, "odir", FStar_Getopt.OneArg (((fun x -> (FStar_ST.op_Colon_Equals outputDir (Some (x)))), "dir")), "Place output in directory dir"))::((FStar_Getopt.noshort, "prims", FStar_Getopt.OneArg (((fun x -> (FStar_ST.op_Colon_Equals prims_ref (Some (x)))), "file")), ""))::((FStar_Getopt.noshort, "print_before_norm", FStar_Getopt.ZeroArgs ((fun _19_238 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals norm_then_print false)
end))), "Do not normalize types before printing (for debugging)"))::((FStar_Getopt.noshort, "print_bound_var_types", FStar_Getopt.ZeroArgs ((fun _19_239 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals print_bound_var_types true)
end))), "Print the types of bound variables"))::((FStar_Getopt.noshort, "print_effect_args", FStar_Getopt.ZeroArgs ((fun _19_240 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals print_effect_args true)
end))), "Print inferred predicate transformers for all computation types"))::((FStar_Getopt.noshort, "print_fuels", FStar_Getopt.ZeroArgs ((fun _19_241 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals print_fuels true)
end))), "Print the fuel amounts used for each successful query"))::((FStar_Getopt.noshort, "print_implicits", FStar_Getopt.ZeroArgs ((fun _19_242 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals print_implicits true)
end))), "Print implicit arguments"))::((FStar_Getopt.noshort, "print_universes", FStar_Getopt.ZeroArgs ((fun _19_243 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals print_universes true)
end))), "Print universes"))::((FStar_Getopt.noshort, "prn", FStar_Getopt.ZeroArgs ((fun _19_244 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals print_real_names true)
end))), "Print real names---you may want to use this in conjunction with log_queries"))::((FStar_Getopt.noshort, "show_signatures", FStar_Getopt.OneArg (((fun x -> (let _122_184 = (let _122_183 = (FStar_ST.read show_signatures)
in (x)::_122_183)
in (FStar_ST.op_Colon_Equals show_signatures _122_184))), "module name")), "Show the checked signatures for all top-level symbols in the module"))::((FStar_Getopt.noshort, "silent", FStar_Getopt.ZeroArgs ((fun _19_246 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals silent true)
end))), " "))::((FStar_Getopt.noshort, "smt", FStar_Getopt.OneArg (((fun x -> (FStar_ST.op_Colon_Equals z3_exe x)), "path")), "Path to the SMT solver (usually Z3, but could be any SMT2-compatible solver)"))::((FStar_Getopt.noshort, "split_cases", FStar_Getopt.OneArg (((fun n -> (let _122_192 = (FStar_Util.int_of_string n)
in (FStar_ST.op_Colon_Equals split_cases _122_192))), "t")), "Partition VC of a match into groups of n cases"))::((FStar_Getopt.noshort, "timing", FStar_Getopt.ZeroArgs ((fun _19_249 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals timing true)
end))), "Print the time it takes to verify each top-level definition"))::((FStar_Getopt.noshort, "trace_error", FStar_Getopt.ZeroArgs ((fun _19_250 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals trace_error true)
end))), "Don\'t print an error message; show an exception trace instead"))::((FStar_Getopt.noshort, "universes", FStar_Getopt.ZeroArgs ((fun _19_251 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals universes true)
end))), "Use the (experimental) support for universes"))::((FStar_Getopt.noshort, "unthrottle_inductives", FStar_Getopt.ZeroArgs ((fun _19_252 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals unthrottle_inductives true)
end))), "Let the SMT solver unfold inductive types to arbitrary depths (may affect verifier performance)"))::((FStar_Getopt.noshort, "use_eq_at_higher_order", FStar_Getopt.ZeroArgs ((fun _19_253 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals use_eq_at_higher_order true)
end))), "Use equality constraints when comparing higher-order types; temporary"))::((FStar_Getopt.noshort, "use_native_int", FStar_Getopt.ZeroArgs ((fun _19_254 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals use_native_int true)
end))), "Extract the \'int\' type to platform-specific native int; you will need to link the generated code with the appropriate version of the prims library"))::((FStar_Getopt.noshort, "verify_module", FStar_Getopt.OneArg (((fun x -> (let _122_203 = (let _122_202 = (FStar_ST.read verify_module)
in (x)::_122_202)
in (FStar_ST.op_Colon_Equals verify_module _122_203))), "string")), "Name of the module to verify"))::((FStar_Getopt.noshort, "__temp_no_proj", FStar_Getopt.OneArg (((fun x -> (let _122_208 = (let _122_207 = (FStar_ST.read __temp_no_proj)
in (x)::_122_207)
in (FStar_ST.op_Colon_Equals __temp_no_proj _122_208))), "string")), "Don\'t generate projectors for this module"))::(('v', "version", FStar_Getopt.ZeroArgs ((fun _19_257 -> (let _19_259 = (display_version ())
in (FStar_All.exit 0)))), "Display version number"))::((FStar_Getopt.noshort, "warn_top_level_effects", FStar_Getopt.ZeroArgs ((fun _19_261 -> (match (()) with
| () -> begin
(FStar_ST.op_Colon_Equals warn_top_level_effects true)
end))), "Top-level effects are ignored, by default; turn this flag on to be warned when this happens"))::((FStar_Getopt.noshort, "z3timeout", FStar_Getopt.OneArg (((fun s -> (let _122_214 = (FStar_Util.int_of_string s)
in (FStar_ST.op_Colon_Equals z3timeout _122_214))), "t")), "Set the Z3 per-query (soft) timeout to t seconds (default 5)"))::[]
in (('h', "help", FStar_Getopt.ZeroArgs ((fun x -> (let _19_265 = (display_usage specs)
in (FStar_All.exit 0)))), "Display this information"))::specs)
end))
and parse_codegen : Prims.string  ->  Prims.string Prims.option = (fun s -> (match (s) with
| ("OCaml") | ("FSharp") -> begin
Some (s)
end
| _19_271 -> begin
(let _19_272 = (FStar_Util.print_string "Wrong argument to codegen flag\n")
in (let _19_274 = (let _122_217 = (specs ())
in (display_usage _122_217))
in (FStar_All.exit 1)))
end))
and validate_cardinality : Prims.string  ->  Prims.string = (fun x -> (match (x) with
| ("warn") | ("check") | ("off") -> begin
x
end
| _19_281 -> begin
(let _19_282 = (FStar_Util.print_string "Wrong argument to cardinality flag\n")
in (let _19_284 = (let _122_219 = (specs ())
in (display_usage _122_219))
in (FStar_All.exit 1)))
end))
and set_interactive_fsi : Prims.unit  ->  Prims.unit = (fun _19_286 -> if (FStar_ST.read interactive) then begin
(FStar_ST.op_Colon_Equals interactive_fsi true)
end else begin
(let _19_288 = (FStar_Util.print_string "Set interactive flag first before setting interactive fsi flag\n")
in (let _19_290 = (let _122_221 = (specs ())
in (display_usage _122_221))
in (FStar_All.exit 1)))
end)

let should_verify : Prims.string  ->  Prims.bool = (fun m -> ((FStar_ST.read verify) && (match ((FStar_ST.read verify_module)) with
| [] -> begin
true
end
| l -> begin
(FStar_List.contains m l)
end)))

let dont_gen_projectors : Prims.string  ->  Prims.bool = (fun m -> (let _122_226 = (FStar_ST.read __temp_no_proj)
in (FStar_List.contains m _122_226)))

let should_print_message : Prims.string  ->  Prims.bool = (fun m -> (((should_verify m) && (not ((let _122_229 = (FStar_ST.read admit_fsi)
in (FStar_List.contains m _122_229))))) && (m <> "Prims")))

let set_options : Prims.string  ->  FStar_Getopt.parse_cmdline_res = (let no_smt_specs = (let _122_232 = (specs ())
in (FStar_All.pipe_right _122_232 (FStar_List.filter (fun _19_304 -> (match (_19_304) with
| (_19_298, name, _19_301, _19_303) -> begin
(name <> "smt")
end)))))
in (fun s -> (FStar_Getopt.parse_string no_smt_specs (fun _19_307 -> ()) s)))

let reset_options_string : Prims.string Prims.option FStar_ST.ref = (FStar_ST.alloc None)

let reset_options : Prims.unit  ->  FStar_Getopt.parse_cmdline_res = (fun _19_309 -> (match (()) with
| () -> begin
(let _19_310 = (init_options ())
in (let res = (let _122_238 = (specs ())
in (FStar_Getopt.parse_cmdline _122_238 (fun x -> ())))
in (match ((FStar_ST.read reset_options_string)) with
| Some (x) -> begin
(set_options x)
end
| _19_317 -> begin
res
end)))
end))




