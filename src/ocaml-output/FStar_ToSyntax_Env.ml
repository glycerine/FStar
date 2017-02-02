
open Prims

type local_binding =
(FStar_Ident.ident * FStar_Syntax_Syntax.bv * Prims.bool)


type rec_binding =
(FStar_Ident.ident * FStar_Ident.lid * FStar_Syntax_Syntax.delta_depth)


type module_abbrev =
(FStar_Ident.ident * FStar_Ident.lident)

type open_kind =
| Open_module
| Open_namespace


let uu___is_Open_module : open_kind  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Open_module -> begin
true
end
| uu____12 -> begin
false
end))


let uu___is_Open_namespace : open_kind  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Open_namespace -> begin
true
end
| uu____16 -> begin
false
end))


type open_module_or_namespace =
(FStar_Ident.lident * open_kind)

type record_or_dc =
{typename : FStar_Ident.lident; constrname : FStar_Ident.ident; parms : FStar_Syntax_Syntax.binders; fields : (FStar_Ident.ident * FStar_Syntax_Syntax.typ) Prims.list; is_private_or_abstract : Prims.bool; is_record : Prims.bool}

type scope_mod =
| Local_binding of local_binding
| Rec_binding of rec_binding
| Module_abbrev of module_abbrev
| Open_module_or_namespace of open_module_or_namespace
| Top_level_def of FStar_Ident.ident
| Record_or_dc of record_or_dc


let uu___is_Local_binding : scope_mod  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Local_binding (_0) -> begin
true
end
| uu____92 -> begin
false
end))


let __proj__Local_binding__item___0 : scope_mod  ->  local_binding = (fun projectee -> (match (projectee) with
| Local_binding (_0) -> begin
_0
end))


let uu___is_Rec_binding : scope_mod  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Rec_binding (_0) -> begin
true
end
| uu____104 -> begin
false
end))


let __proj__Rec_binding__item___0 : scope_mod  ->  rec_binding = (fun projectee -> (match (projectee) with
| Rec_binding (_0) -> begin
_0
end))


let uu___is_Module_abbrev : scope_mod  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Module_abbrev (_0) -> begin
true
end
| uu____116 -> begin
false
end))


let __proj__Module_abbrev__item___0 : scope_mod  ->  module_abbrev = (fun projectee -> (match (projectee) with
| Module_abbrev (_0) -> begin
_0
end))


let uu___is_Open_module_or_namespace : scope_mod  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Open_module_or_namespace (_0) -> begin
true
end
| uu____128 -> begin
false
end))


let __proj__Open_module_or_namespace__item___0 : scope_mod  ->  open_module_or_namespace = (fun projectee -> (match (projectee) with
| Open_module_or_namespace (_0) -> begin
_0
end))


let uu___is_Top_level_def : scope_mod  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Top_level_def (_0) -> begin
true
end
| uu____140 -> begin
false
end))


let __proj__Top_level_def__item___0 : scope_mod  ->  FStar_Ident.ident = (fun projectee -> (match (projectee) with
| Top_level_def (_0) -> begin
_0
end))


let uu___is_Record_or_dc : scope_mod  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Record_or_dc (_0) -> begin
true
end
| uu____152 -> begin
false
end))


let __proj__Record_or_dc__item___0 : scope_mod  ->  record_or_dc = (fun projectee -> (match (projectee) with
| Record_or_dc (_0) -> begin
_0
end))


type string_set =
Prims.string FStar_Util.set

type exported_id_kind =
| Exported_id_term_type
| Exported_id_field


let uu___is_Exported_id_term_type : exported_id_kind  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Exported_id_term_type -> begin
true
end
| uu____164 -> begin
false
end))


let uu___is_Exported_id_field : exported_id_kind  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Exported_id_field -> begin
true
end
| uu____168 -> begin
false
end))


type exported_id_set =
exported_id_kind  ->  string_set FStar_ST.ref

type env =
{curmodule : FStar_Ident.lident Prims.option; curmonad : FStar_Ident.ident Prims.option; modules : (FStar_Ident.lident * FStar_Syntax_Syntax.modul) Prims.list; scope_mods : scope_mod Prims.list; exported_ids : exported_id_set FStar_Util.smap; trans_exported_ids : exported_id_set FStar_Util.smap; includes : FStar_Ident.lident Prims.list FStar_ST.ref FStar_Util.smap; sigaccum : FStar_Syntax_Syntax.sigelts; sigmap : (FStar_Syntax_Syntax.sigelt * Prims.bool) FStar_Util.smap; iface : Prims.bool; admitted_iface : Prims.bool; expect_typ : Prims.bool}

type foundname =
| Term_name of (FStar_Syntax_Syntax.typ * Prims.bool)
| Eff_name of (FStar_Syntax_Syntax.sigelt * FStar_Ident.lident)


let uu___is_Term_name : foundname  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Term_name (_0) -> begin
true
end
| uu____314 -> begin
false
end))


let __proj__Term_name__item___0 : foundname  ->  (FStar_Syntax_Syntax.typ * Prims.bool) = (fun projectee -> (match (projectee) with
| Term_name (_0) -> begin
_0
end))


let uu___is_Eff_name : foundname  ->  Prims.bool = (fun projectee -> (match (projectee) with
| Eff_name (_0) -> begin
true
end
| uu____334 -> begin
false
end))


let __proj__Eff_name__item___0 : foundname  ->  (FStar_Syntax_Syntax.sigelt * FStar_Ident.lident) = (fun projectee -> (match (projectee) with
| Eff_name (_0) -> begin
_0
end))


let all_exported_id_kinds : exported_id_kind Prims.list = (Exported_id_field)::(Exported_id_term_type)::[]


let open_modules : env  ->  (FStar_Ident.lident * FStar_Syntax_Syntax.modul) Prims.list = (fun e -> e.modules)


let current_module : env  ->  FStar_Ident.lident = (fun env -> (match (env.curmodule) with
| None -> begin
(failwith "Unset current module")
end
| Some (m) -> begin
m
end))


let qual : FStar_Ident.lident  ->  FStar_Ident.ident  ->  FStar_Ident.lident = FStar_Syntax_Util.qual_id


let qualify : env  ->  FStar_Ident.ident  ->  FStar_Ident.lident = (fun env id -> (match (env.curmonad) with
| None -> begin
(

let uu____369 = (current_module env)
in (qual uu____369 id))
end
| Some (monad) -> begin
(

let uu____371 = (

let uu____372 = (current_module env)
in (qual uu____372 monad))
in (FStar_Syntax_Util.mk_field_projector_name_from_ident uu____371 id))
end))


let new_sigmap = (fun uu____380 -> (FStar_Util.smap_create (Prims.parse_int "100")))


let empty_env : Prims.unit  ->  env = (fun uu____383 -> (

let uu____384 = (new_sigmap ())
in (

let uu____386 = (new_sigmap ())
in (

let uu____388 = (new_sigmap ())
in (

let uu____394 = (new_sigmap ())
in {curmodule = None; curmonad = None; modules = []; scope_mods = []; exported_ids = uu____384; trans_exported_ids = uu____386; includes = uu____388; sigaccum = []; sigmap = uu____394; iface = false; admitted_iface = false; expect_typ = false})))))


let sigmap : env  ->  (FStar_Syntax_Syntax.sigelt * Prims.bool) FStar_Util.smap = (fun env -> env.sigmap)


let has_all_in_scope : env  ->  Prims.bool = (fun env -> (FStar_List.existsb (fun uu____413 -> (match (uu____413) with
| (m, uu____417) -> begin
(FStar_Ident.lid_equals m FStar_Syntax_Const.all_lid)
end)) env.modules))


let set_bv_range : FStar_Syntax_Syntax.bv  ->  FStar_Range.range  ->  FStar_Syntax_Syntax.bv = (fun bv r -> (

let id = (

let uu___172_425 = bv.FStar_Syntax_Syntax.ppname
in {FStar_Ident.idText = uu___172_425.FStar_Ident.idText; FStar_Ident.idRange = r})
in (

let uu___173_426 = bv
in {FStar_Syntax_Syntax.ppname = id; FStar_Syntax_Syntax.index = uu___173_426.FStar_Syntax_Syntax.index; FStar_Syntax_Syntax.sort = uu___173_426.FStar_Syntax_Syntax.sort})))


let bv_to_name : FStar_Syntax_Syntax.bv  ->  FStar_Range.range  ->  FStar_Syntax_Syntax.term = (fun bv r -> (FStar_Syntax_Syntax.bv_to_name (set_bv_range bv r)))


let unmangleMap : (Prims.string * Prims.string * FStar_Syntax_Syntax.delta_depth * FStar_Syntax_Syntax.fv_qual Prims.option) Prims.list = ((("op_ColonColon"), ("Cons"), (FStar_Syntax_Syntax.Delta_constant), (Some (FStar_Syntax_Syntax.Data_ctor))))::((("not"), ("op_Negation"), (FStar_Syntax_Syntax.Delta_equational), (None)))::[]


let unmangleOpName : FStar_Ident.ident  ->  (FStar_Syntax_Syntax.term * Prims.bool) Prims.option = (fun id -> (

let t = (FStar_Util.find_map unmangleMap (fun uu____472 -> (match (uu____472) with
| (x, y, dd, dq) -> begin
(match ((id.FStar_Ident.idText = x)) with
| true -> begin
(

let uu____486 = (

let uu____487 = (FStar_Ident.lid_of_path (("Prims")::(y)::[]) id.FStar_Ident.idRange)
in (FStar_Syntax_Syntax.fvar uu____487 dd dq))
in Some (uu____486))
end
| uu____488 -> begin
None
end)
end)))
in (match (t) with
| Some (v) -> begin
Some (((v), (false)))
end
| None -> begin
None
end)))

type 'a cont_t =
| Cont_ok of 'a
| Cont_fail
| Cont_ignore


let uu___is_Cont_ok = (fun projectee -> (match (projectee) with
| Cont_ok (_0) -> begin
true
end
| uu____517 -> begin
false
end))


let __proj__Cont_ok__item___0 = (fun projectee -> (match (projectee) with
| Cont_ok (_0) -> begin
_0
end))


let uu___is_Cont_fail = (fun projectee -> (match (projectee) with
| Cont_fail -> begin
true
end
| uu____541 -> begin
false
end))


let uu___is_Cont_ignore = (fun projectee -> (match (projectee) with
| Cont_ignore -> begin
true
end
| uu____552 -> begin
false
end))


let option_of_cont = (fun k_ignore uu___142_571 -> (match (uu___142_571) with
| Cont_ok (a) -> begin
Some (a)
end
| Cont_fail -> begin
None
end
| Cont_ignore -> begin
(k_ignore ())
end))


let find_in_record = (fun ns id record cont -> (

let typename' = (FStar_Ident.lid_of_ids (FStar_List.append ns ((record.typename.FStar_Ident.ident)::[])))
in (match ((FStar_Ident.lid_equals typename' record.typename)) with
| true -> begin
(

let fname = (FStar_Ident.lid_of_ids (FStar_List.append record.typename.FStar_Ident.ns ((id)::[])))
in (

let find = (FStar_Util.find_map record.fields (fun uu____616 -> (match (uu____616) with
| (f, uu____621) -> begin
(match ((id.FStar_Ident.idText = f.FStar_Ident.idText)) with
| true -> begin
Some (record)
end
| uu____623 -> begin
None
end)
end)))
in (match (find) with
| Some (r) -> begin
(cont r)
end
| None -> begin
Cont_ignore
end)))
end
| uu____626 -> begin
Cont_ignore
end)))


let get_exported_id_set : env  ->  Prims.string  ->  (exported_id_kind  ->  string_set FStar_ST.ref) Prims.option = (fun e mname -> (FStar_Util.smap_try_find e.exported_ids mname))


let get_trans_exported_id_set : env  ->  Prims.string  ->  (exported_id_kind  ->  string_set FStar_ST.ref) Prims.option = (fun e mname -> (FStar_Util.smap_try_find e.trans_exported_ids mname))


let string_of_exported_id_kind : exported_id_kind  ->  Prims.string = (fun uu___143_657 -> (match (uu___143_657) with
| Exported_id_field -> begin
"field"
end
| Exported_id_term_type -> begin
"term/type"
end))


let find_in_module_with_includes = (fun eikind find_in_module find_in_module_default env ns id -> (

let idstr = id.FStar_Ident.idText
in (

let rec aux = (fun uu___144_706 -> (match (uu___144_706) with
| [] -> begin
find_in_module_default
end
| (modul)::q -> begin
(

let mname = modul.FStar_Ident.str
in (

let not_shadowed = (

let uu____714 = (get_exported_id_set env mname)
in (match (uu____714) with
| None -> begin
true
end
| Some (mex) -> begin
(

let mexports = (

let uu____730 = (mex eikind)
in (FStar_ST.read uu____730))
in (FStar_Util.set_mem idstr mexports))
end))
in (

let mincludes = (

let uu____737 = (FStar_Util.smap_try_find env.includes mname)
in (match (uu____737) with
| None -> begin
[]
end
| Some (minc) -> begin
(FStar_ST.read minc)
end))
in (

let look_into = (match (not_shadowed) with
| true -> begin
(

let uu____757 = (qual modul id)
in (find_in_module uu____757))
end
| uu____758 -> begin
Cont_ignore
end)
in (match (look_into) with
| Cont_ignore -> begin
(aux (FStar_List.append mincludes q))
end
| uu____760 -> begin
look_into
end)))))
end))
in (aux ((ns)::[])))))


let is_exported_id_field : exported_id_kind  ->  Prims.bool = (fun uu___145_764 -> (match (uu___145_764) with
| Exported_id_field -> begin
true
end
| uu____765 -> begin
false
end))


let try_lookup_id'' = (fun env id eikind k_local_binding k_rec_binding k_record find_in_module lookup_default_id -> (

let check_local_binding_id = (fun uu___146_854 -> (match (uu___146_854) with
| (id', uu____856, uu____857) -> begin
(id'.FStar_Ident.idText = id.FStar_Ident.idText)
end))
in (

let check_rec_binding_id = (fun uu___147_861 -> (match (uu___147_861) with
| (id', uu____863, uu____864) -> begin
(id'.FStar_Ident.idText = id.FStar_Ident.idText)
end))
in (

let curmod_ns = (

let uu____867 = (current_module env)
in (FStar_Ident.ids_of_lid uu____867))
in (

let proc = (fun uu___148_872 -> (match (uu___148_872) with
| Local_binding (l) when (check_local_binding_id l) -> begin
(k_local_binding l)
end
| Rec_binding (r) when (check_rec_binding_id r) -> begin
(k_rec_binding r)
end
| Open_module_or_namespace (ns, uu____877) -> begin
(find_in_module_with_includes eikind find_in_module Cont_ignore env ns id)
end
| Top_level_def (id') when (id'.FStar_Ident.idText = id.FStar_Ident.idText) -> begin
(lookup_default_id Cont_ignore id)
end
| Record_or_dc (r) when (is_exported_id_field eikind) -> begin
(

let uu____880 = (FStar_Ident.lid_of_ids curmod_ns)
in (find_in_module_with_includes Exported_id_field (fun lid -> (

let id = lid.FStar_Ident.ident
in (find_in_record lid.FStar_Ident.ns id r k_record))) Cont_ignore env uu____880 id))
end
| uu____883 -> begin
Cont_ignore
end))
in (

let rec aux = (fun uu___149_889 -> (match (uu___149_889) with
| (a)::q -> begin
(

let uu____895 = (proc a)
in (option_of_cont (fun uu____897 -> (aux q)) uu____895))
end
| [] -> begin
(

let uu____898 = (lookup_default_id Cont_fail id)
in (option_of_cont (fun uu____900 -> None) uu____898))
end))
in (aux env.scope_mods)))))))


let found_local_binding = (fun r uu____919 -> (match (uu____919) with
| (id', x, mut) -> begin
(

let uu____926 = (bv_to_name x r)
in ((uu____926), (mut)))
end))


let find_in_module = (fun env lid k_global_def k_not_found -> (

let uu____963 = (FStar_Util.smap_try_find (sigmap env) lid.FStar_Ident.str)
in (match (uu____963) with
| Some (sb) -> begin
(k_global_def lid sb)
end
| None -> begin
k_not_found
end)))


let try_lookup_id : env  ->  FStar_Ident.ident  ->  (FStar_Syntax_Syntax.term * Prims.bool) Prims.option = (fun env id -> (

let uu____985 = (unmangleOpName id)
in (match (uu____985) with
| Some (f) -> begin
Some (f)
end
| uu____999 -> begin
(try_lookup_id'' env id Exported_id_term_type (fun r -> (

let uu____1006 = (found_local_binding id.FStar_Ident.idRange r)
in Cont_ok (uu____1006))) (fun uu____1011 -> Cont_fail) (fun uu____1014 -> Cont_ignore) (fun i -> (find_in_module env i (fun uu____1021 uu____1022 -> Cont_fail) Cont_ignore)) (fun uu____1029 uu____1030 -> Cont_fail))
end)))


let lookup_default_id = (fun env id k_global_def k_not_found -> (

let find_in_monad = (match (env.curmonad) with
| Some (uu____1082) -> begin
(

let lid = (qualify env id)
in (

let uu____1084 = (FStar_Util.smap_try_find (sigmap env) lid.FStar_Ident.str)
in (match (uu____1084) with
| Some (r) -> begin
(

let uu____1097 = (k_global_def lid r)
in Some (uu____1097))
end
| None -> begin
None
end)))
end
| None -> begin
None
end)
in (match (find_in_monad) with
| Some (v) -> begin
v
end
| None -> begin
(

let lid = (

let uu____1110 = (current_module env)
in (qual uu____1110 id))
in (find_in_module env lid k_global_def k_not_found))
end)))


let module_is_defined : env  ->  FStar_Ident.lident  ->  Prims.bool = (fun env lid -> ((

let uu____1118 = (current_module env)
in (FStar_Ident.lid_equals lid uu____1118)) || (FStar_List.existsb (fun x -> (FStar_Ident.lid_equals lid (Prims.fst x))) env.modules)))


let resolve_module_name : env  ->  FStar_Ident.lident  ->  Prims.bool  ->  FStar_Ident.lident Prims.option = (fun env lid honor_ns -> (

let nslen = (FStar_List.length lid.FStar_Ident.ns)
in (

let rec aux = (fun uu___150_1142 -> (match (uu___150_1142) with
| [] -> begin
(

let uu____1145 = (module_is_defined env lid)
in (match (uu____1145) with
| true -> begin
Some (lid)
end
| uu____1147 -> begin
None
end))
end
| (Open_module_or_namespace (ns, Open_namespace))::q when honor_ns -> begin
(

let new_lid = (

let uu____1152 = (

let uu____1154 = (FStar_Ident.path_of_lid ns)
in (

let uu____1156 = (FStar_Ident.path_of_lid lid)
in (FStar_List.append uu____1154 uu____1156)))
in (FStar_Ident.lid_of_path uu____1152 (FStar_Ident.range_of_lid lid)))
in (

let uu____1158 = (module_is_defined env new_lid)
in (match (uu____1158) with
| true -> begin
Some (new_lid)
end
| uu____1160 -> begin
(aux q)
end)))
end
| (Module_abbrev (name, modul))::uu____1163 when ((nslen = (Prims.parse_int "0")) && (name.FStar_Ident.idText = lid.FStar_Ident.ident.FStar_Ident.idText)) -> begin
Some (modul)
end
| (uu____1167)::q -> begin
(aux q)
end))
in (aux env.scope_mods))))


let resolve_in_open_namespaces'' = (fun env lid eikind k_local_binding k_rec_binding k_record f_module l_default -> (match (lid.FStar_Ident.ns) with
| (uu____1255)::uu____1256 -> begin
(

let uu____1258 = (

let uu____1260 = (

let uu____1261 = (FStar_Ident.lid_of_ids lid.FStar_Ident.ns)
in (FStar_Ident.set_lid_range uu____1261 (FStar_Ident.range_of_lid lid)))
in (resolve_module_name env uu____1260 true))
in (match (uu____1258) with
| None -> begin
None
end
| Some (modul) -> begin
(

let uu____1264 = (find_in_module_with_includes eikind f_module Cont_fail env modul lid.FStar_Ident.ident)
in (option_of_cont (fun uu____1266 -> None) uu____1264))
end))
end
| [] -> begin
(try_lookup_id'' env lid.FStar_Ident.ident eikind k_local_binding k_rec_binding k_record f_module l_default)
end))


let cont_of_option = (fun k_none uu___151_1281 -> (match (uu___151_1281) with
| Some (v) -> begin
Cont_ok (v)
end
| None -> begin
k_none
end))


let resolve_in_open_namespaces' = (fun env lid k_local_binding k_rec_binding k_global_def -> (

let k_global_def' = (fun k lid def -> (

let uu____1360 = (k_global_def lid def)
in (cont_of_option k uu____1360)))
in (

let f_module = (fun lid' -> (

let k = Cont_ignore
in (find_in_module env lid' (k_global_def' k) k)))
in (

let l_default = (fun k i -> (lookup_default_id env i (k_global_def' k) k))
in (resolve_in_open_namespaces'' env lid Exported_id_term_type (fun l -> (

let uu____1381 = (k_local_binding l)
in (cont_of_option Cont_fail uu____1381))) (fun r -> (

let uu____1384 = (k_rec_binding r)
in (cont_of_option Cont_fail uu____1384))) (fun uu____1386 -> Cont_ignore) f_module l_default)))))


let fv_qual_of_se : FStar_Syntax_Syntax.sigelt  ->  FStar_Syntax_Syntax.fv_qual Prims.option = (fun uu___153_1390 -> (match (uu___153_1390) with
| FStar_Syntax_Syntax.Sig_datacon (uu____1392, uu____1393, uu____1394, l, uu____1396, quals, uu____1398, uu____1399) -> begin
(

let qopt = (FStar_Util.find_map quals (fun uu___152_1406 -> (match (uu___152_1406) with
| FStar_Syntax_Syntax.RecordConstructor (uu____1408, fs) -> begin
Some (FStar_Syntax_Syntax.Record_ctor (((l), (fs))))
end
| uu____1415 -> begin
None
end)))
in (match (qopt) with
| None -> begin
Some (FStar_Syntax_Syntax.Data_ctor)
end
| x -> begin
x
end))
end
| FStar_Syntax_Syntax.Sig_declare_typ (uu____1419, uu____1420, uu____1421, quals, uu____1423) -> begin
None
end
| uu____1426 -> begin
None
end))


let lb_fv : FStar_Syntax_Syntax.letbinding Prims.list  ->  FStar_Ident.lident  ->  FStar_Syntax_Syntax.fv = (fun lbs lid -> (

let uu____1435 = (FStar_Util.find_map lbs (fun lb -> (

let fv = (FStar_Util.right lb.FStar_Syntax_Syntax.lbname)
in (

let uu____1439 = (FStar_Syntax_Syntax.fv_eq_lid fv lid)
in (match (uu____1439) with
| true -> begin
Some (fv)
end
| uu____1441 -> begin
None
end)))))
in (FStar_All.pipe_right uu____1435 FStar_Util.must)))


let ns_of_lid_equals : FStar_Ident.lident  ->  FStar_Ident.lident  ->  Prims.bool = (fun lid ns -> (((FStar_List.length lid.FStar_Ident.ns) = (FStar_List.length (FStar_Ident.ids_of_lid ns))) && (

let uu____1453 = (FStar_Ident.lid_of_ids lid.FStar_Ident.ns)
in (FStar_Ident.lid_equals uu____1453 ns))))


let try_lookup_name : Prims.bool  ->  Prims.bool  ->  env  ->  FStar_Ident.lident  ->  foundname Prims.option = (fun any_val exclude_interf env lid -> (

let occurrence_range = (FStar_Ident.range_of_lid lid)
in (

let k_global_def = (fun source_lid uu___157_1478 -> (match (uu___157_1478) with
| (uu____1482, true) when exclude_interf -> begin
None
end
| (se, uu____1484) -> begin
(match (se) with
| FStar_Syntax_Syntax.Sig_inductive_typ (uu____1486) -> begin
(

let uu____1498 = (

let uu____1499 = (

let uu____1502 = (FStar_Syntax_Syntax.fvar source_lid FStar_Syntax_Syntax.Delta_constant None)
in ((uu____1502), (false)))
in Term_name (uu____1499))
in Some (uu____1498))
end
| FStar_Syntax_Syntax.Sig_datacon (uu____1503) -> begin
(

let uu____1514 = (

let uu____1515 = (

let uu____1518 = (

let uu____1519 = (fv_qual_of_se se)
in (FStar_Syntax_Syntax.fvar source_lid FStar_Syntax_Syntax.Delta_constant uu____1519))
in ((uu____1518), (false)))
in Term_name (uu____1515))
in Some (uu____1514))
end
| FStar_Syntax_Syntax.Sig_let ((uu____1521, lbs), uu____1523, uu____1524, uu____1525, uu____1526) -> begin
(

let fv = (lb_fv lbs source_lid)
in (

let uu____1539 = (

let uu____1540 = (

let uu____1543 = (FStar_Syntax_Syntax.fvar source_lid fv.FStar_Syntax_Syntax.fv_delta fv.FStar_Syntax_Syntax.fv_qual)
in ((uu____1543), (false)))
in Term_name (uu____1540))
in Some (uu____1539)))
end
| FStar_Syntax_Syntax.Sig_declare_typ (lid, uu____1545, uu____1546, quals, uu____1548) -> begin
(

let uu____1551 = (any_val || (FStar_All.pipe_right quals (FStar_Util.for_some (fun uu___154_1553 -> (match (uu___154_1553) with
| FStar_Syntax_Syntax.Assumption -> begin
true
end
| uu____1554 -> begin
false
end)))))
in (match (uu____1551) with
| true -> begin
(

let lid = (FStar_Ident.set_lid_range lid (FStar_Ident.range_of_lid source_lid))
in (

let dd = (

let uu____1558 = ((FStar_Syntax_Util.is_primop_lid lid) || ((ns_of_lid_equals lid FStar_Syntax_Const.prims_lid) && (FStar_All.pipe_right quals (FStar_Util.for_some (fun uu___155_1560 -> (match (uu___155_1560) with
| (FStar_Syntax_Syntax.Projector (_)) | (FStar_Syntax_Syntax.Discriminator (_)) -> begin
true
end
| uu____1563 -> begin
false
end))))))
in (match (uu____1558) with
| true -> begin
FStar_Syntax_Syntax.Delta_equational
end
| uu____1564 -> begin
FStar_Syntax_Syntax.Delta_constant
end))
in (

let uu____1565 = (FStar_Util.find_map quals (fun uu___156_1567 -> (match (uu___156_1567) with
| FStar_Syntax_Syntax.Reflectable (refl_monad) -> begin
Some (refl_monad)
end
| uu____1570 -> begin
None
end)))
in (match (uu____1565) with
| Some (refl_monad) -> begin
(

let refl_const = ((FStar_Syntax_Syntax.mk (FStar_Syntax_Syntax.Tm_constant (FStar_Const.Const_reflect (refl_monad)))) None occurrence_range)
in Some (Term_name (((refl_const), (false)))))
end
| uu____1586 -> begin
(

let uu____1588 = (

let uu____1589 = (

let uu____1592 = (

let uu____1593 = (fv_qual_of_se se)
in (FStar_Syntax_Syntax.fvar lid dd uu____1593))
in ((uu____1592), (false)))
in Term_name (uu____1589))
in Some (uu____1588))
end))))
end
| uu____1595 -> begin
None
end))
end
| (FStar_Syntax_Syntax.Sig_new_effect_for_free (ne, _)) | (FStar_Syntax_Syntax.Sig_new_effect (ne, _)) -> begin
Some (Eff_name (((se), ((FStar_Ident.set_lid_range ne.FStar_Syntax_Syntax.mname (FStar_Ident.range_of_lid source_lid))))))
end
| FStar_Syntax_Syntax.Sig_effect_abbrev (uu____1599) -> begin
Some (Eff_name (((se), (source_lid))))
end
| uu____1609 -> begin
None
end)
end))
in (

let k_local_binding = (fun r -> (

let uu____1621 = (

let uu____1622 = (found_local_binding (FStar_Ident.range_of_lid lid) r)
in Term_name (uu____1622))
in Some (uu____1621)))
in (

let k_rec_binding = (fun uu____1632 -> (match (uu____1632) with
| (id, l, dd) -> begin
(

let uu____1640 = (

let uu____1641 = (

let uu____1644 = (FStar_Syntax_Syntax.fvar (FStar_Ident.set_lid_range l (FStar_Ident.range_of_lid lid)) dd None)
in ((uu____1644), (false)))
in Term_name (uu____1641))
in Some (uu____1640))
end))
in (

let found_unmangled = (match (lid.FStar_Ident.ns) with
| [] -> begin
(

let uu____1648 = (unmangleOpName lid.FStar_Ident.ident)
in (match (uu____1648) with
| Some (f) -> begin
Some (Term_name (f))
end
| uu____1658 -> begin
None
end))
end
| uu____1662 -> begin
None
end)
in (match (found_unmangled) with
| None -> begin
(resolve_in_open_namespaces' env lid k_local_binding k_rec_binding k_global_def)
end
| x -> begin
x
end)))))))


let try_lookup_effect_name' : Prims.bool  ->  env  ->  FStar_Ident.lident  ->  (FStar_Syntax_Syntax.sigelt * FStar_Ident.lident) Prims.option = (fun exclude_interf env lid -> (

let uu____1682 = (try_lookup_name true exclude_interf env lid)
in (match (uu____1682) with
| Some (Eff_name (o, l)) -> begin
Some (((o), (l)))
end
| uu____1691 -> begin
None
end)))


let try_lookup_effect_name : env  ->  FStar_Ident.lident  ->  FStar_Ident.lident Prims.option = (fun env l -> (

let uu____1702 = (try_lookup_effect_name' (not (env.iface)) env l)
in (match (uu____1702) with
| Some (o, l) -> begin
Some (l)
end
| uu____1711 -> begin
None
end)))


let try_lookup_effect_name_and_attributes : env  ->  FStar_Ident.lident  ->  (FStar_Ident.lident * FStar_Syntax_Syntax.cflags Prims.list) Prims.option = (fun env l -> (

let uu____1725 = (try_lookup_effect_name' (not (env.iface)) env l)
in (match (uu____1725) with
| Some (FStar_Syntax_Syntax.Sig_new_effect (ne, uu____1734), l) -> begin
Some (((l), (ne.FStar_Syntax_Syntax.cattributes)))
end
| Some (FStar_Syntax_Syntax.Sig_new_effect_for_free (ne, uu____1743), l) -> begin
Some (((l), (ne.FStar_Syntax_Syntax.cattributes)))
end
| Some (FStar_Syntax_Syntax.Sig_effect_abbrev (uu____1751, uu____1752, uu____1753, uu____1754, uu____1755, cattributes, uu____1757), l) -> begin
Some (((l), (cattributes)))
end
| uu____1769 -> begin
None
end)))


let try_lookup_effect_defn : env  ->  FStar_Ident.lident  ->  FStar_Syntax_Syntax.eff_decl Prims.option = (fun env l -> (

let uu____1783 = (try_lookup_effect_name' (not (env.iface)) env l)
in (match (uu____1783) with
| Some (FStar_Syntax_Syntax.Sig_new_effect (ne, uu____1789), uu____1790) -> begin
Some (ne)
end
| Some (FStar_Syntax_Syntax.Sig_new_effect_for_free (ne, uu____1794), uu____1795) -> begin
Some (ne)
end
| uu____1798 -> begin
None
end)))


let is_effect_name : env  ->  FStar_Ident.lident  ->  Prims.bool = (fun env lid -> (

let uu____1808 = (try_lookup_effect_name env lid)
in (match (uu____1808) with
| None -> begin
false
end
| Some (uu____1810) -> begin
true
end)))


let try_lookup_root_effect_name : env  ->  FStar_Ident.lident  ->  FStar_Ident.lident Prims.option = (fun env l -> (

let uu____1818 = (try_lookup_effect_name' (not (env.iface)) env l)
in (match (uu____1818) with
| Some (FStar_Syntax_Syntax.Sig_effect_abbrev (l', uu____1824, uu____1825, uu____1826, uu____1827, uu____1828, uu____1829), uu____1830) -> begin
(

let rec aux = (fun new_name -> (

let uu____1842 = (FStar_Util.smap_try_find (sigmap env) new_name.FStar_Ident.str)
in (match (uu____1842) with
| None -> begin
None
end
| Some (s, uu____1852) -> begin
(match (s) with
| (FStar_Syntax_Syntax.Sig_new_effect_for_free (ne, _)) | (FStar_Syntax_Syntax.Sig_new_effect (ne, _)) -> begin
Some ((FStar_Ident.set_lid_range ne.FStar_Syntax_Syntax.mname (FStar_Ident.range_of_lid l)))
end
| FStar_Syntax_Syntax.Sig_effect_abbrev (uu____1859, uu____1860, uu____1861, cmp, uu____1863, uu____1864, uu____1865) -> begin
(

let l'' = (FStar_Syntax_Util.comp_effect_name cmp)
in (aux l''))
end
| uu____1871 -> begin
None
end)
end)))
in (aux l'))
end
| Some (uu____1872, l') -> begin
Some (l')
end
| uu____1876 -> begin
None
end)))


let lookup_letbinding_quals : env  ->  FStar_Ident.lident  ->  FStar_Syntax_Syntax.qualifier Prims.list = (fun env lid -> (

let k_global_def = (fun lid uu___158_1897 -> (match (uu___158_1897) with
| (FStar_Syntax_Syntax.Sig_declare_typ (lid, uu____1903, uu____1904, quals, uu____1906), uu____1907) -> begin
Some (quals)
end
| uu____1911 -> begin
None
end))
in (

let uu____1915 = (resolve_in_open_namespaces' env lid (fun uu____1919 -> None) (fun uu____1921 -> None) k_global_def)
in (match (uu____1915) with
| Some (quals) -> begin
quals
end
| uu____1927 -> begin
[]
end))))


let try_lookup_module : env  ->  Prims.string Prims.list  ->  FStar_Syntax_Syntax.modul Prims.option = (fun env path -> (

let uu____1939 = (FStar_List.tryFind (fun uu____1945 -> (match (uu____1945) with
| (mlid, modul) -> begin
(

let uu____1950 = (FStar_Ident.path_of_lid mlid)
in (uu____1950 = path))
end)) env.modules)
in (match (uu____1939) with
| Some (uu____1954, modul) -> begin
Some (modul)
end
| None -> begin
None
end)))


let try_lookup_let : env  ->  FStar_Ident.lident  ->  FStar_Syntax_Syntax.term Prims.option = (fun env lid -> (

let k_global_def = (fun lid uu___159_1976 -> (match (uu___159_1976) with
| (FStar_Syntax_Syntax.Sig_let ((uu____1980, lbs), uu____1982, uu____1983, uu____1984, uu____1985), uu____1986) -> begin
(

let fv = (lb_fv lbs lid)
in (

let uu____1999 = (FStar_Syntax_Syntax.fvar lid fv.FStar_Syntax_Syntax.fv_delta fv.FStar_Syntax_Syntax.fv_qual)
in Some (uu____1999)))
end
| uu____2000 -> begin
None
end))
in (resolve_in_open_namespaces' env lid (fun uu____2003 -> None) (fun uu____2004 -> None) k_global_def)))


let try_lookup_definition : env  ->  FStar_Ident.lident  ->  FStar_Syntax_Syntax.term Prims.option = (fun env lid -> (

let k_global_def = (fun lid uu___160_2023 -> (match (uu___160_2023) with
| (FStar_Syntax_Syntax.Sig_let (lbs, uu____2030, uu____2031, uu____2032, uu____2033), uu____2034) -> begin
(FStar_Util.find_map (Prims.snd lbs) (fun lb -> (match (lb.FStar_Syntax_Syntax.lbname) with
| FStar_Util.Inr (fv) when (FStar_Syntax_Syntax.fv_eq_lid fv lid) -> begin
Some (lb.FStar_Syntax_Syntax.lbdef)
end
| uu____2051 -> begin
None
end)))
end
| uu____2056 -> begin
None
end))
in (resolve_in_open_namespaces' env lid (fun uu____2063 -> None) (fun uu____2066 -> None) k_global_def)))


let empty_include_smap : FStar_Ident.lident Prims.list FStar_ST.ref FStar_Util.smap = (new_sigmap ())


let empty_exported_id_smap : exported_id_set FStar_Util.smap = (new_sigmap ())


let try_lookup_lid' : Prims.bool  ->  Prims.bool  ->  env  ->  FStar_Ident.lident  ->  (FStar_Syntax_Syntax.term * Prims.bool) Prims.option = (fun any_val exclude_interf env lid -> (

let uu____2093 = (try_lookup_name any_val exclude_interf env lid)
in (match (uu____2093) with
| Some (Term_name (e, mut)) -> begin
Some (((e), (mut)))
end
| uu____2102 -> begin
None
end)))


let try_lookup_lid : env  ->  FStar_Ident.lident  ->  (FStar_Syntax_Syntax.term * Prims.bool) Prims.option = (fun env l -> (try_lookup_lid' env.iface false env l))


let try_lookup_lid_no_resolve : env  ->  FStar_Ident.lident  ->  (FStar_Syntax_Syntax.term * Prims.bool) Prims.option = (fun env l -> (

let env' = (

let uu___174_2125 = env
in {curmodule = uu___174_2125.curmodule; curmonad = uu___174_2125.curmonad; modules = uu___174_2125.modules; scope_mods = []; exported_ids = empty_exported_id_smap; trans_exported_ids = uu___174_2125.trans_exported_ids; includes = empty_include_smap; sigaccum = uu___174_2125.sigaccum; sigmap = uu___174_2125.sigmap; iface = uu___174_2125.iface; admitted_iface = uu___174_2125.admitted_iface; expect_typ = uu___174_2125.expect_typ})
in (try_lookup_lid env' l)))


let try_lookup_datacon : env  ->  FStar_Ident.lident  ->  FStar_Syntax_Syntax.fv Prims.option = (fun env lid -> (

let k_global_def = (fun lid uu___162_2142 -> (match (uu___162_2142) with
| (FStar_Syntax_Syntax.Sig_declare_typ (uu____2146, uu____2147, uu____2148, quals, uu____2150), uu____2151) -> begin
(

let uu____2154 = (FStar_All.pipe_right quals (FStar_Util.for_some (fun uu___161_2156 -> (match (uu___161_2156) with
| FStar_Syntax_Syntax.Assumption -> begin
true
end
| uu____2157 -> begin
false
end))))
in (match (uu____2154) with
| true -> begin
(

let uu____2159 = (FStar_Syntax_Syntax.lid_as_fv lid FStar_Syntax_Syntax.Delta_constant None)
in Some (uu____2159))
end
| uu____2160 -> begin
None
end))
end
| (FStar_Syntax_Syntax.Sig_datacon (uu____2161), uu____2162) -> begin
(

let uu____2173 = (FStar_Syntax_Syntax.lid_as_fv lid FStar_Syntax_Syntax.Delta_constant (Some (FStar_Syntax_Syntax.Data_ctor)))
in Some (uu____2173))
end
| uu____2174 -> begin
None
end))
in (resolve_in_open_namespaces' env lid (fun uu____2177 -> None) (fun uu____2178 -> None) k_global_def)))


let find_all_datacons : env  ->  FStar_Ident.lident  ->  FStar_Ident.lident Prims.list Prims.option = (fun env lid -> (

let k_global_def = (fun lid uu___163_2197 -> (match (uu___163_2197) with
| (FStar_Syntax_Syntax.Sig_inductive_typ (uu____2202, uu____2203, uu____2204, uu____2205, uu____2206, datas, uu____2208, uu____2209), uu____2210) -> begin
Some (datas)
end
| uu____2218 -> begin
None
end))
in (resolve_in_open_namespaces' env lid (fun uu____2223 -> None) (fun uu____2225 -> None) k_global_def)))


let record_cache_aux_with_filter : (((Prims.unit  ->  Prims.unit) * (Prims.unit  ->  Prims.unit) * (Prims.unit  ->  record_or_dc Prims.list) * (record_or_dc  ->  Prims.unit) * (Prims.unit  ->  Prims.unit)) * (Prims.unit  ->  Prims.unit)) = (

let record_cache = (FStar_Util.mk_ref (([])::[]))
in (

let push = (fun uu____2259 -> (

let uu____2260 = (

let uu____2263 = (

let uu____2265 = (FStar_ST.read record_cache)
in (FStar_List.hd uu____2265))
in (

let uu____2273 = (FStar_ST.read record_cache)
in (uu____2263)::uu____2273))
in (FStar_ST.write record_cache uu____2260)))
in (

let pop = (fun uu____2288 -> (

let uu____2289 = (

let uu____2292 = (FStar_ST.read record_cache)
in (FStar_List.tl uu____2292))
in (FStar_ST.write record_cache uu____2289)))
in (

let peek = (fun uu____2308 -> (

let uu____2309 = (FStar_ST.read record_cache)
in (FStar_List.hd uu____2309)))
in (

let insert = (fun r -> (

let uu____2321 = (

let uu____2324 = (

let uu____2326 = (peek ())
in (r)::uu____2326)
in (

let uu____2328 = (

let uu____2331 = (FStar_ST.read record_cache)
in (FStar_List.tl uu____2331))
in (uu____2324)::uu____2328))
in (FStar_ST.write record_cache uu____2321)))
in (

let commit = (fun uu____2347 -> (

let uu____2348 = (FStar_ST.read record_cache)
in (match (uu____2348) with
| (hd)::(uu____2356)::tl -> begin
(FStar_ST.write record_cache ((hd)::tl))
end
| uu____2369 -> begin
(failwith "Impossible")
end)))
in (

let filter = (fun uu____2375 -> (

let rc = (peek ())
in ((pop ());
(match (()) with
| () -> begin
(

let filtered = (FStar_List.filter (fun r -> (not (r.is_private_or_abstract))) rc)
in (

let uu____2382 = (

let uu____2385 = (FStar_ST.read record_cache)
in (filtered)::uu____2385)
in (FStar_ST.write record_cache uu____2382)))
end);
)))
in (

let aux = ((push), (pop), (peek), (insert), (commit))
in ((aux), (filter))))))))))


let record_cache_aux : ((Prims.unit  ->  Prims.unit) * (Prims.unit  ->  Prims.unit) * (Prims.unit  ->  record_or_dc Prims.list) * (record_or_dc  ->  Prims.unit) * (Prims.unit  ->  Prims.unit)) = (

let uu____2459 = record_cache_aux_with_filter
in (match (uu____2459) with
| (aux, uu____2497) -> begin
aux
end))


let filter_record_cache : Prims.unit  ->  Prims.unit = (

let uu____2536 = record_cache_aux_with_filter
in (match (uu____2536) with
| (uu____2559, filter) -> begin
filter
end))


let push_record_cache : Prims.unit  ->  Prims.unit = (

let uu____2599 = record_cache_aux
in (match (uu____2599) with
| (push, uu____2619, uu____2620, uu____2621, uu____2622) -> begin
push
end))


let pop_record_cache : Prims.unit  ->  Prims.unit = (

let uu____2647 = record_cache_aux
in (match (uu____2647) with
| (uu____2666, pop, uu____2668, uu____2669, uu____2670) -> begin
pop
end))


let peek_record_cache : Prims.unit  ->  record_or_dc Prims.list = (

let uu____2696 = record_cache_aux
in (match (uu____2696) with
| (uu____2716, uu____2717, peek, uu____2719, uu____2720) -> begin
peek
end))


let insert_record_cache : record_or_dc  ->  Prims.unit = (

let uu____2745 = record_cache_aux
in (match (uu____2745) with
| (uu____2764, uu____2765, uu____2766, insert, uu____2768) -> begin
insert
end))


let commit_record_cache : Prims.unit  ->  Prims.unit = (

let uu____2793 = record_cache_aux
in (match (uu____2793) with
| (uu____2812, uu____2813, uu____2814, uu____2815, commit) -> begin
commit
end))


let extract_record : env  ->  scope_mod Prims.list FStar_ST.ref  ->  FStar_Syntax_Syntax.sigelt  ->  Prims.unit = (fun e new_globs uu___167_2850 -> (match (uu___167_2850) with
| FStar_Syntax_Syntax.Sig_bundle (sigs, uu____2855, uu____2856, uu____2857) -> begin
(

let is_rec = (FStar_Util.for_some (fun uu___164_2868 -> (match (uu___164_2868) with
| (FStar_Syntax_Syntax.RecordType (_)) | (FStar_Syntax_Syntax.RecordConstructor (_)) -> begin
true
end
| uu____2871 -> begin
false
end)))
in (

let find_dc = (fun dc -> (FStar_All.pipe_right sigs (FStar_Util.find_opt (fun uu___165_2879 -> (match (uu___165_2879) with
| FStar_Syntax_Syntax.Sig_datacon (lid, uu____2881, uu____2882, uu____2883, uu____2884, uu____2885, uu____2886, uu____2887) -> begin
(FStar_Ident.lid_equals dc lid)
end
| uu____2892 -> begin
false
end)))))
in (FStar_All.pipe_right sigs (FStar_List.iter (fun uu___166_2894 -> (match (uu___166_2894) with
| FStar_Syntax_Syntax.Sig_inductive_typ (typename, univs, parms, uu____2898, uu____2899, (dc)::[], tags, uu____2902) -> begin
(

let uu____2908 = (

let uu____2909 = (find_dc dc)
in (FStar_All.pipe_left FStar_Util.must uu____2909))
in (match (uu____2908) with
| FStar_Syntax_Syntax.Sig_datacon (constrname, uu____2913, t, uu____2915, uu____2916, uu____2917, uu____2918, uu____2919) -> begin
(

let uu____2924 = (FStar_Syntax_Util.arrow_formals t)
in (match (uu____2924) with
| (formals, uu____2933) -> begin
(

let is_rec = (is_rec tags)
in (

let formals' = (FStar_All.pipe_right formals (FStar_List.collect (fun uu____2959 -> (match (uu____2959) with
| (x, q) -> begin
(

let uu____2967 = ((FStar_Syntax_Syntax.is_null_bv x) || (is_rec && (FStar_Syntax_Syntax.is_implicit q)))
in (match (uu____2967) with
| true -> begin
[]
end
| uu____2973 -> begin
(((x), (q)))::[]
end))
end))))
in (

let fields' = (FStar_All.pipe_right formals' (FStar_List.map (fun uu____2998 -> (match (uu____2998) with
| (x, q) -> begin
(

let uu____3007 = (match (is_rec) with
| true -> begin
(FStar_Syntax_Util.unmangle_field_name x.FStar_Syntax_Syntax.ppname)
end
| uu____3008 -> begin
x.FStar_Syntax_Syntax.ppname
end)
in ((uu____3007), (x.FStar_Syntax_Syntax.sort)))
end))))
in (

let fields = fields'
in (

let record = {typename = typename; constrname = constrname.FStar_Ident.ident; parms = parms; fields = fields; is_private_or_abstract = ((FStar_List.contains FStar_Syntax_Syntax.Private tags) || (FStar_List.contains FStar_Syntax_Syntax.Abstract tags)); is_record = is_rec}
in ((

let uu____3019 = (

let uu____3021 = (FStar_ST.read new_globs)
in (Record_or_dc (record))::uu____3021)
in (FStar_ST.write new_globs uu____3019));
(match (()) with
| () -> begin
((

let add_field = (fun uu____3037 -> (match (uu____3037) with
| (id, uu____3043) -> begin
(

let modul = (

let uu____3049 = (FStar_Ident.lid_of_ids constrname.FStar_Ident.ns)
in uu____3049.FStar_Ident.str)
in (

let uu____3050 = (get_exported_id_set e modul)
in (match (uu____3050) with
| Some (my_ex) -> begin
(

let my_exported_ids = (my_ex Exported_id_field)
in ((

let uu____3066 = (

let uu____3067 = (FStar_ST.read my_exported_ids)
in (FStar_Util.set_add id.FStar_Ident.idText uu____3067))
in (FStar_ST.write my_exported_ids uu____3066));
(match (()) with
| () -> begin
(

let projname = (

let uu____3074 = (

let uu____3075 = (FStar_Syntax_Util.mk_field_projector_name_from_ident constrname id)
in uu____3075.FStar_Ident.ident)
in uu____3074.FStar_Ident.idText)
in (

let uu____3077 = (

let uu____3078 = (FStar_ST.read my_exported_ids)
in (FStar_Util.set_add projname uu____3078))
in (FStar_ST.write my_exported_ids uu____3077)))
end);
))
end
| None -> begin
()
end)))
end))
in (FStar_List.iter add_field fields'));
(match (()) with
| () -> begin
(insert_record_cache record)
end);
)
end);
))))))
end))
end
| uu____3091 -> begin
()
end))
end
| uu____3092 -> begin
()
end))))))
end
| uu____3093 -> begin
()
end))


let try_lookup_record_or_dc_by_field_name : env  ->  FStar_Ident.lident  ->  record_or_dc Prims.option = (fun env fieldname -> (

let find_in_cache = (fun fieldname -> (

let uu____3106 = ((fieldname.FStar_Ident.ns), (fieldname.FStar_Ident.ident))
in (match (uu____3106) with
| (ns, id) -> begin
(

let uu____3116 = (peek_record_cache ())
in (FStar_Util.find_map uu____3116 (fun record -> (

let uu____3119 = (find_in_record ns id record (fun r -> Cont_ok (r)))
in (option_of_cont (fun uu____3122 -> None) uu____3119)))))
end)))
in (resolve_in_open_namespaces'' env fieldname Exported_id_field (fun uu____3123 -> Cont_ignore) (fun uu____3124 -> Cont_ignore) (fun r -> Cont_ok (r)) (fun fn -> (

let uu____3127 = (find_in_cache fn)
in (cont_of_option Cont_ignore uu____3127))) (fun k uu____3130 -> k))))


let try_lookup_record_by_field_name : env  ->  FStar_Ident.lident  ->  record_or_dc Prims.option = (fun env fieldname -> (

let uu____3139 = (try_lookup_record_or_dc_by_field_name env fieldname)
in (match (uu____3139) with
| Some (r) when r.is_record -> begin
Some (r)
end
| uu____3143 -> begin
None
end)))


let belongs_to_record : env  ->  FStar_Ident.lident  ->  record_or_dc  ->  Prims.bool = (fun env lid record -> (

let uu____3154 = (try_lookup_record_by_field_name env lid)
in (match (uu____3154) with
| Some (record') when (

let uu____3157 = (

let uu____3158 = (FStar_Ident.path_of_ns record.typename.FStar_Ident.ns)
in (FStar_Ident.text_of_path uu____3158))
in (

let uu____3160 = (

let uu____3161 = (FStar_Ident.path_of_ns record'.typename.FStar_Ident.ns)
in (FStar_Ident.text_of_path uu____3161))
in (uu____3157 = uu____3160))) -> begin
(

let uu____3163 = (find_in_record record.typename.FStar_Ident.ns lid.FStar_Ident.ident record (fun uu____3165 -> Cont_ok (())))
in (match (uu____3163) with
| Cont_ok (uu____3166) -> begin
true
end
| uu____3167 -> begin
false
end))
end
| uu____3169 -> begin
false
end)))


let try_lookup_dc_by_field_name : env  ->  FStar_Ident.lident  ->  (FStar_Ident.lident * Prims.bool) Prims.option = (fun env fieldname -> (

let uu____3180 = (try_lookup_record_or_dc_by_field_name env fieldname)
in (match (uu____3180) with
| Some (r) -> begin
(

let uu____3186 = (

let uu____3189 = (

let uu____3190 = (FStar_Ident.lid_of_ids (FStar_List.append r.typename.FStar_Ident.ns ((r.constrname)::[])))
in (FStar_Ident.set_lid_range uu____3190 (FStar_Ident.range_of_lid fieldname)))
in ((uu____3189), (r.is_record)))
in Some (uu____3186))
end
| uu____3193 -> begin
None
end)))


let string_set_ref_new : Prims.unit  ->  Prims.string FStar_Util.set FStar_ST.ref = (fun uu____3202 -> (

let uu____3203 = (FStar_Util.new_set FStar_Util.compare FStar_Util.hashcode)
in (FStar_Util.mk_ref uu____3203)))


let exported_id_set_new : Prims.unit  ->  exported_id_kind  ->  Prims.string FStar_Util.set FStar_ST.ref = (fun uu____3214 -> (

let term_type_set = (string_set_ref_new ())
in (

let field_set = (string_set_ref_new ())
in (fun uu___168_3223 -> (match (uu___168_3223) with
| Exported_id_term_type -> begin
term_type_set
end
| Exported_id_field -> begin
field_set
end)))))


let unique : Prims.bool  ->  Prims.bool  ->  env  ->  FStar_Ident.lident  ->  Prims.bool = (fun any_val exclude_if env lid -> (

let filter_scope_mods = (fun uu___169_3243 -> (match (uu___169_3243) with
| Rec_binding (uu____3244) -> begin
true
end
| uu____3245 -> begin
false
end))
in (

let this_env = (

let uu___175_3247 = env
in (

let uu____3248 = (FStar_List.filter filter_scope_mods env.scope_mods)
in {curmodule = uu___175_3247.curmodule; curmonad = uu___175_3247.curmonad; modules = uu___175_3247.modules; scope_mods = uu____3248; exported_ids = empty_exported_id_smap; trans_exported_ids = uu___175_3247.trans_exported_ids; includes = empty_include_smap; sigaccum = uu___175_3247.sigaccum; sigmap = uu___175_3247.sigmap; iface = uu___175_3247.iface; admitted_iface = uu___175_3247.admitted_iface; expect_typ = uu___175_3247.expect_typ}))
in (

let uu____3250 = (try_lookup_lid' any_val exclude_if this_env lid)
in (match (uu____3250) with
| None -> begin
true
end
| Some (uu____3256) -> begin
false
end)))))


let push_scope_mod : env  ->  scope_mod  ->  env = (fun env scope_mod -> (

let uu___176_3267 = env
in {curmodule = uu___176_3267.curmodule; curmonad = uu___176_3267.curmonad; modules = uu___176_3267.modules; scope_mods = (scope_mod)::env.scope_mods; exported_ids = uu___176_3267.exported_ids; trans_exported_ids = uu___176_3267.trans_exported_ids; includes = uu___176_3267.includes; sigaccum = uu___176_3267.sigaccum; sigmap = uu___176_3267.sigmap; iface = uu___176_3267.iface; admitted_iface = uu___176_3267.admitted_iface; expect_typ = uu___176_3267.expect_typ}))


let push_bv' : env  ->  FStar_Ident.ident  ->  Prims.bool  ->  (env * FStar_Syntax_Syntax.bv) = (fun env x is_mutable -> (

let bv = (FStar_Syntax_Syntax.gen_bv x.FStar_Ident.idText (Some (x.FStar_Ident.idRange)) FStar_Syntax_Syntax.tun)
in (((push_scope_mod env (Local_binding (((x), (bv), (is_mutable)))))), (bv))))


let push_bv_mutable : env  ->  FStar_Ident.ident  ->  (env * FStar_Syntax_Syntax.bv) = (fun env x -> (push_bv' env x true))


let push_bv : env  ->  FStar_Ident.ident  ->  (env * FStar_Syntax_Syntax.bv) = (fun env x -> (push_bv' env x false))


let push_top_level_rec_binding : env  ->  FStar_Ident.ident  ->  FStar_Syntax_Syntax.delta_depth  ->  env = (fun env x dd -> (

let l = (qualify env x)
in (

let uu____3306 = (unique false true env l)
in (match (uu____3306) with
| true -> begin
(push_scope_mod env (Rec_binding (((x), (l), (dd)))))
end
| uu____3307 -> begin
(Prims.raise (FStar_Errors.Error ((((Prims.strcat "Duplicate top-level names " l.FStar_Ident.str)), ((FStar_Ident.range_of_lid l))))))
end))))


let push_sigelt : env  ->  FStar_Syntax_Syntax.sigelt  ->  env = (fun env s -> (

let err = (fun l -> (

let sopt = (FStar_Util.smap_try_find (sigmap env) l.FStar_Ident.str)
in (

let r = (match (sopt) with
| Some (se, uu____3326) -> begin
(

let uu____3329 = (FStar_Util.find_opt (FStar_Ident.lid_equals l) (FStar_Syntax_Util.lids_of_sigelt se))
in (match (uu____3329) with
| Some (l) -> begin
(FStar_All.pipe_left FStar_Range.string_of_range (FStar_Ident.range_of_lid l))
end
| None -> begin
"<unknown>"
end))
end
| None -> begin
"<unknown>"
end)
in (

let uu____3334 = (

let uu____3335 = (

let uu____3338 = (FStar_Util.format2 "Duplicate top-level names [%s]; previously declared at %s" (FStar_Ident.text_of_lid l) r)
in ((uu____3338), ((FStar_Ident.range_of_lid l))))
in FStar_Errors.Error (uu____3335))
in (Prims.raise uu____3334)))))
in (

let globals = (FStar_Util.mk_ref env.scope_mods)
in (

let env = (

let uu____3345 = (match (s) with
| FStar_Syntax_Syntax.Sig_let (uu____3350) -> begin
((false), (true))
end
| FStar_Syntax_Syntax.Sig_bundle (uu____3359) -> begin
((true), (true))
end
| uu____3367 -> begin
((false), (false))
end)
in (match (uu____3345) with
| (any_val, exclude_if) -> begin
(

let lids = (FStar_Syntax_Util.lids_of_sigelt s)
in (

let uu____3372 = (FStar_Util.find_map lids (fun l -> (

let uu____3375 = (

let uu____3376 = (unique any_val exclude_if env l)
in (not (uu____3376)))
in (match (uu____3375) with
| true -> begin
Some (l)
end
| uu____3378 -> begin
None
end))))
in (match (uu____3372) with
| None -> begin
((extract_record env globals s);
(

let uu___177_3382 = env
in {curmodule = uu___177_3382.curmodule; curmonad = uu___177_3382.curmonad; modules = uu___177_3382.modules; scope_mods = uu___177_3382.scope_mods; exported_ids = uu___177_3382.exported_ids; trans_exported_ids = uu___177_3382.trans_exported_ids; includes = uu___177_3382.includes; sigaccum = (s)::env.sigaccum; sigmap = uu___177_3382.sigmap; iface = uu___177_3382.iface; admitted_iface = uu___177_3382.admitted_iface; expect_typ = uu___177_3382.expect_typ});
)
end
| Some (l) -> begin
(err l)
end)))
end))
in (

let env = (

let uu___178_3385 = env
in (

let uu____3386 = (FStar_ST.read globals)
in {curmodule = uu___178_3385.curmodule; curmonad = uu___178_3385.curmonad; modules = uu___178_3385.modules; scope_mods = uu____3386; exported_ids = uu___178_3385.exported_ids; trans_exported_ids = uu___178_3385.trans_exported_ids; includes = uu___178_3385.includes; sigaccum = uu___178_3385.sigaccum; sigmap = uu___178_3385.sigmap; iface = uu___178_3385.iface; admitted_iface = uu___178_3385.admitted_iface; expect_typ = uu___178_3385.expect_typ}))
in (

let uu____3391 = (match (s) with
| FStar_Syntax_Syntax.Sig_bundle (ses, uu____3405, uu____3406, uu____3407) -> begin
(

let uu____3414 = (FStar_List.map (fun se -> (((FStar_Syntax_Util.lids_of_sigelt se)), (se))) ses)
in ((env), (uu____3414)))
end
| uu____3428 -> begin
((env), (((((FStar_Syntax_Util.lids_of_sigelt s)), (s)))::[]))
end)
in (match (uu____3391) with
| (env, lss) -> begin
((FStar_All.pipe_right lss (FStar_List.iter (fun uu____3458 -> (match (uu____3458) with
| (lids, se) -> begin
(FStar_All.pipe_right lids (FStar_List.iter (fun lid -> ((

let uu____3469 = (

let uu____3471 = (FStar_ST.read globals)
in (Top_level_def (lid.FStar_Ident.ident))::uu____3471)
in (FStar_ST.write globals uu____3469));
(match (()) with
| () -> begin
(

let modul = (

let uu____3480 = (FStar_Ident.lid_of_ids lid.FStar_Ident.ns)
in uu____3480.FStar_Ident.str)
in ((

let uu____3482 = (get_exported_id_set env modul)
in (match (uu____3482) with
| Some (f) -> begin
(

let my_exported_ids = (f Exported_id_term_type)
in (

let uu____3497 = (

let uu____3498 = (FStar_ST.read my_exported_ids)
in (FStar_Util.set_add lid.FStar_Ident.ident.FStar_Ident.idText uu____3498))
in (FStar_ST.write my_exported_ids uu____3497)))
end
| None -> begin
()
end));
(match (()) with
| () -> begin
(FStar_Util.smap_add (sigmap env) lid.FStar_Ident.str ((se), ((env.iface && (not (env.admitted_iface))))))
end);
))
end);
))))
end))));
(

let env = (

let uu___179_3510 = env
in (

let uu____3511 = (FStar_ST.read globals)
in {curmodule = uu___179_3510.curmodule; curmonad = uu___179_3510.curmonad; modules = uu___179_3510.modules; scope_mods = uu____3511; exported_ids = uu___179_3510.exported_ids; trans_exported_ids = uu___179_3510.trans_exported_ids; includes = uu___179_3510.includes; sigaccum = uu___179_3510.sigaccum; sigmap = uu___179_3510.sigmap; iface = uu___179_3510.iface; admitted_iface = uu___179_3510.admitted_iface; expect_typ = uu___179_3510.expect_typ}))
in env);
)
end)))))))


let push_namespace : env  ->  FStar_Ident.lident  ->  env = (fun env ns -> (

let uu____3522 = (

let uu____3525 = (resolve_module_name env ns false)
in (match (uu____3525) with
| None -> begin
(

let modules = env.modules
in (

let uu____3533 = (FStar_All.pipe_right modules (FStar_Util.for_some (fun uu____3539 -> (match (uu____3539) with
| (m, uu____3543) -> begin
(FStar_Util.starts_with (Prims.strcat (FStar_Ident.text_of_lid m) ".") (Prims.strcat (FStar_Ident.text_of_lid ns) "."))
end))))
in (match (uu____3533) with
| true -> begin
((ns), (Open_namespace))
end
| uu____3546 -> begin
(

let uu____3547 = (

let uu____3548 = (

let uu____3551 = (FStar_Util.format1 "Namespace %s cannot be found" (FStar_Ident.text_of_lid ns))
in ((uu____3551), ((FStar_Ident.range_of_lid ns))))
in FStar_Errors.Error (uu____3548))
in (Prims.raise uu____3547))
end)))
end
| Some (ns') -> begin
((ns'), (Open_module))
end))
in (match (uu____3522) with
| (ns', kd) -> begin
(push_scope_mod env (Open_module_or_namespace (((ns'), (kd)))))
end)))


let push_include : env  ->  FStar_Ident.lident  ->  env = (fun env ns -> (

let uu____3563 = (resolve_module_name env ns false)
in (match (uu____3563) with
| Some (ns) -> begin
(

let env = (push_scope_mod env (Open_module_or_namespace (((ns), (Open_module)))))
in (

let curmod = (

let uu____3568 = (current_module env)
in uu____3568.FStar_Ident.str)
in ((

let uu____3570 = (FStar_Util.smap_try_find env.includes curmod)
in (match (uu____3570) with
| None -> begin
()
end
| Some (incl) -> begin
(

let uu____3583 = (

let uu____3585 = (FStar_ST.read incl)
in (ns)::uu____3585)
in (FStar_ST.write incl uu____3583))
end));
(match (()) with
| () -> begin
(

let uu____3593 = (get_trans_exported_id_set env ns.FStar_Ident.str)
in (match (uu____3593) with
| Some (ns_trans_exports) -> begin
((

let uu____3606 = (

let uu____3617 = (get_exported_id_set env curmod)
in (

let uu____3622 = (get_trans_exported_id_set env curmod)
in ((uu____3617), (uu____3622))))
in (match (uu____3606) with
| (Some (cur_exports), Some (cur_trans_exports)) -> begin
(

let update_exports = (fun k -> (

let ns_ex = (

let uu____3662 = (ns_trans_exports k)
in (FStar_ST.read uu____3662))
in (

let ex = (cur_exports k)
in ((

let uu____3671 = (

let uu____3672 = (FStar_ST.read ex)
in (FStar_Util.set_difference uu____3672 ns_ex))
in (FStar_ST.write ex uu____3671));
(match (()) with
| () -> begin
(

let trans_ex = (cur_trans_exports k)
in (

let uu____3682 = (

let uu____3683 = (FStar_ST.read ex)
in (FStar_Util.set_union uu____3683 ns_ex))
in (FStar_ST.write trans_ex uu____3682)))
end);
))))
in (FStar_List.iter update_exports all_exported_id_kinds))
end
| uu____3689 -> begin
()
end));
(match (()) with
| () -> begin
env
end);
)
end
| None -> begin
(

let uu____3703 = (

let uu____3704 = (

let uu____3707 = (FStar_Util.format1 "include: Module %s was not prepared" ns.FStar_Ident.str)
in ((uu____3707), ((FStar_Ident.range_of_lid ns))))
in FStar_Errors.Error (uu____3704))
in (Prims.raise uu____3703))
end))
end);
)))
end
| uu____3708 -> begin
(

let uu____3710 = (

let uu____3711 = (

let uu____3714 = (FStar_Util.format1 "include: Module %s cannot be found" ns.FStar_Ident.str)
in ((uu____3714), ((FStar_Ident.range_of_lid ns))))
in FStar_Errors.Error (uu____3711))
in (Prims.raise uu____3710))
end)))


let push_module_abbrev : env  ->  FStar_Ident.ident  ->  FStar_Ident.lident  ->  env = (fun env x l -> (

let uu____3724 = (module_is_defined env l)
in (match (uu____3724) with
| true -> begin
(push_scope_mod env (Module_abbrev (((x), (l)))))
end
| uu____3725 -> begin
(

let uu____3726 = (

let uu____3727 = (

let uu____3730 = (FStar_Util.format1 "Module %s cannot be found" (FStar_Ident.text_of_lid l))
in ((uu____3730), ((FStar_Ident.range_of_lid l))))
in FStar_Errors.Error (uu____3727))
in (Prims.raise uu____3726))
end)))


let check_admits : env  ->  Prims.unit = (fun env -> (FStar_All.pipe_right env.sigaccum (FStar_List.iter (fun se -> (match (se) with
| FStar_Syntax_Syntax.Sig_declare_typ (l, u, t, quals, r) -> begin
(

let uu____3742 = (try_lookup_lid env l)
in (match (uu____3742) with
| None -> begin
((

let uu____3749 = (

let uu____3750 = (FStar_Range.string_of_range (FStar_Ident.range_of_lid l))
in (

let uu____3751 = (FStar_Syntax_Print.lid_to_string l)
in (FStar_Util.format2 "%s: Warning: Admitting %s without a definition\n" uu____3750 uu____3751)))
in (FStar_Util.print_string uu____3749));
(FStar_Util.smap_add (sigmap env) l.FStar_Ident.str ((FStar_Syntax_Syntax.Sig_declare_typ (((l), (u), (t), ((FStar_Syntax_Syntax.Assumption)::quals), (r)))), (false)));
)
end
| Some (uu____3755) -> begin
()
end))
end
| uu____3760 -> begin
()
end)))))


let finish : env  ->  FStar_Syntax_Syntax.modul  ->  env = (fun env modul -> ((FStar_All.pipe_right modul.FStar_Syntax_Syntax.declarations (FStar_List.iter (fun uu___171_3768 -> (match (uu___171_3768) with
| FStar_Syntax_Syntax.Sig_bundle (ses, quals, uu____3771, uu____3772) -> begin
(match (((FStar_List.contains FStar_Syntax_Syntax.Private quals) || (FStar_List.contains FStar_Syntax_Syntax.Abstract quals))) with
| true -> begin
(FStar_All.pipe_right ses (FStar_List.iter (fun uu___170_3780 -> (match (uu___170_3780) with
| FStar_Syntax_Syntax.Sig_datacon (lid, uu____3782, uu____3783, uu____3784, uu____3785, uu____3786, uu____3787, uu____3788) -> begin
(FStar_Util.smap_remove (sigmap env) lid.FStar_Ident.str)
end
| uu____3795 -> begin
()
end))))
end
| uu____3796 -> begin
()
end)
end
| FStar_Syntax_Syntax.Sig_declare_typ (lid, uu____3798, uu____3799, quals, uu____3801) -> begin
(match ((FStar_List.contains FStar_Syntax_Syntax.Private quals)) with
| true -> begin
(FStar_Util.smap_remove (sigmap env) lid.FStar_Ident.str)
end
| uu____3806 -> begin
()
end)
end
| FStar_Syntax_Syntax.Sig_let ((uu____3807, lbs), r, uu____3810, quals, uu____3812) -> begin
((match (((FStar_List.contains FStar_Syntax_Syntax.Private quals) || (FStar_List.contains FStar_Syntax_Syntax.Abstract quals))) with
| true -> begin
(FStar_All.pipe_right lbs (FStar_List.iter (fun lb -> (

let uu____3827 = (

let uu____3828 = (

let uu____3829 = (

let uu____3834 = (FStar_Util.right lb.FStar_Syntax_Syntax.lbname)
in uu____3834.FStar_Syntax_Syntax.fv_name)
in uu____3829.FStar_Syntax_Syntax.v)
in uu____3828.FStar_Ident.str)
in (FStar_Util.smap_remove (sigmap env) uu____3827)))))
end
| uu____3840 -> begin
()
end);
(match (((FStar_List.contains FStar_Syntax_Syntax.Abstract quals) && (not ((FStar_List.contains FStar_Syntax_Syntax.Private quals))))) with
| true -> begin
(FStar_All.pipe_right lbs (FStar_List.iter (fun lb -> (

let lid = (

let uu____3844 = (

let uu____3849 = (FStar_Util.right lb.FStar_Syntax_Syntax.lbname)
in uu____3849.FStar_Syntax_Syntax.fv_name)
in uu____3844.FStar_Syntax_Syntax.v)
in (

let decl = FStar_Syntax_Syntax.Sig_declare_typ (((lid), (lb.FStar_Syntax_Syntax.lbunivs), (lb.FStar_Syntax_Syntax.lbtyp), ((FStar_Syntax_Syntax.Assumption)::quals), (r)))
in (FStar_Util.smap_add (sigmap env) lid.FStar_Ident.str ((decl), (false))))))))
end
| uu____3860 -> begin
()
end);
)
end
| uu____3861 -> begin
()
end))));
(

let curmod = (

let uu____3863 = (current_module env)
in uu____3863.FStar_Ident.str)
in ((

let uu____3865 = (

let uu____3876 = (get_exported_id_set env curmod)
in (

let uu____3881 = (get_trans_exported_id_set env curmod)
in ((uu____3876), (uu____3881))))
in (match (uu____3865) with
| (Some (cur_ex), Some (cur_trans_ex)) -> begin
(

let update_exports = (fun eikind -> (

let cur_ex_set = (

let uu____3921 = (cur_ex eikind)
in (FStar_ST.read uu____3921))
in (

let cur_trans_ex_set_ref = (cur_trans_ex eikind)
in (

let uu____3929 = (

let uu____3930 = (FStar_ST.read cur_trans_ex_set_ref)
in (FStar_Util.set_union cur_ex_set uu____3930))
in (FStar_ST.write cur_trans_ex_set_ref uu____3929)))))
in (FStar_List.iter update_exports all_exported_id_kinds))
end
| uu____3936 -> begin
()
end));
(match (()) with
| () -> begin
((filter_record_cache ());
(match (()) with
| () -> begin
(

let uu___180_3948 = env
in {curmodule = None; curmonad = uu___180_3948.curmonad; modules = (((modul.FStar_Syntax_Syntax.name), (modul)))::env.modules; scope_mods = []; exported_ids = uu___180_3948.exported_ids; trans_exported_ids = uu___180_3948.trans_exported_ids; includes = uu___180_3948.includes; sigaccum = []; sigmap = uu___180_3948.sigmap; iface = uu___180_3948.iface; admitted_iface = uu___180_3948.admitted_iface; expect_typ = uu___180_3948.expect_typ})
end);
)
end);
));
))

type env_stack_ops =
{push : env  ->  env; mark : env  ->  env; reset_mark : env  ->  env; commit_mark : env  ->  env; pop : env  ->  env}


let stack_ops : env_stack_ops = (

let stack = (FStar_Util.mk_ref [])
in (

let push = (fun env -> ((push_record_cache ());
(

let uu____4032 = (

let uu____4034 = (FStar_ST.read stack)
in (env)::uu____4034)
in (FStar_ST.write stack uu____4032));
(

let uu___181_4042 = env
in (

let uu____4043 = (FStar_Util.smap_copy (sigmap env))
in {curmodule = uu___181_4042.curmodule; curmonad = uu___181_4042.curmonad; modules = uu___181_4042.modules; scope_mods = uu___181_4042.scope_mods; exported_ids = uu___181_4042.exported_ids; trans_exported_ids = uu___181_4042.trans_exported_ids; includes = uu___181_4042.includes; sigaccum = uu___181_4042.sigaccum; sigmap = uu____4043; iface = uu___181_4042.iface; admitted_iface = uu___181_4042.admitted_iface; expect_typ = uu___181_4042.expect_typ}));
))
in (

let pop = (fun env -> (

let uu____4053 = (FStar_ST.read stack)
in (match (uu____4053) with
| (env)::tl -> begin
((pop_record_cache ());
(FStar_ST.write stack tl);
env;
)
end
| uu____4066 -> begin
(failwith "Impossible: Too many pops")
end)))
in (

let commit_mark = (fun env -> ((commit_record_cache ());
(

let uu____4073 = (FStar_ST.read stack)
in (match (uu____4073) with
| (uu____4078)::tl -> begin
((FStar_ST.write stack tl);
env;
)
end
| uu____4085 -> begin
(failwith "Impossible: Too many pops")
end));
))
in {push = push; mark = push; reset_mark = pop; commit_mark = commit_mark; pop = pop}))))


let push : env  ->  env = (fun env -> (stack_ops.push env))


let mark : env  ->  env = (fun env -> (stack_ops.mark env))


let reset_mark : env  ->  env = (fun env -> (stack_ops.reset_mark env))


let commit_mark : env  ->  env = (fun env -> (stack_ops.commit_mark env))


let pop : env  ->  env = (fun env -> (stack_ops.pop env))


let export_interface : FStar_Ident.lident  ->  env  ->  env = (fun m env -> (

let sigelt_in_m = (fun se -> (match ((FStar_Syntax_Util.lids_of_sigelt se)) with
| (l)::uu____4113 -> begin
(l.FStar_Ident.nsstr = m.FStar_Ident.str)
end
| uu____4115 -> begin
false
end))
in (

let sm = (sigmap env)
in (

let env = (pop env)
in (

let keys = (FStar_Util.smap_keys sm)
in (

let sm' = (sigmap env)
in ((FStar_All.pipe_right keys (FStar_List.iter (fun k -> (

let uu____4133 = (FStar_Util.smap_try_find sm' k)
in (match (uu____4133) with
| Some (se, true) when (sigelt_in_m se) -> begin
((FStar_Util.smap_remove sm' k);
(

let se = (match (se) with
| FStar_Syntax_Syntax.Sig_declare_typ (l, u, t, q, r) -> begin
FStar_Syntax_Syntax.Sig_declare_typ (((l), (u), (t), ((FStar_Syntax_Syntax.Assumption)::q), (r)))
end
| uu____4154 -> begin
se
end)
in (FStar_Util.smap_add sm' k ((se), (false))));
)
end
| uu____4157 -> begin
()
end)))));
env;
)))))))


let finish_module_or_interface : env  ->  FStar_Syntax_Syntax.modul  ->  env = (fun env modul -> ((match ((not (modul.FStar_Syntax_Syntax.is_interface))) with
| true -> begin
(check_admits env)
end
| uu____4168 -> begin
()
end);
(finish env modul);
))


let prepare_module_or_interface : Prims.bool  ->  Prims.bool  ->  env  ->  FStar_Ident.lident  ->  (env * Prims.bool) = (fun intf admitted env mname -> (

let prep = (fun env -> (

let open_ns = (match ((FStar_Ident.lid_equals mname FStar_Syntax_Const.prims_lid)) with
| true -> begin
[]
end
| uu____4190 -> begin
(match ((FStar_Util.starts_with "FStar." (FStar_Ident.text_of_lid mname))) with
| true -> begin
(FStar_Syntax_Const.prims_lid)::(FStar_Syntax_Const.fstar_ns_lid)::[]
end
| uu____4192 -> begin
(FStar_Syntax_Const.prims_lid)::(FStar_Syntax_Const.st_lid)::(FStar_Syntax_Const.all_lid)::(FStar_Syntax_Const.fstar_ns_lid)::[]
end)
end)
in (

let open_ns = (match (((FStar_List.length mname.FStar_Ident.ns) <> (Prims.parse_int "0"))) with
| true -> begin
(

let ns = (FStar_Ident.lid_of_ids mname.FStar_Ident.ns)
in (ns)::open_ns)
end
| uu____4199 -> begin
open_ns
end)
in ((

let uu____4201 = (exported_id_set_new ())
in (FStar_Util.smap_add env.exported_ids mname.FStar_Ident.str uu____4201));
(match (()) with
| () -> begin
((

let uu____4206 = (exported_id_set_new ())
in (FStar_Util.smap_add env.trans_exported_ids mname.FStar_Ident.str uu____4206));
(match (()) with
| () -> begin
((

let uu____4211 = (FStar_Util.mk_ref [])
in (FStar_Util.smap_add env.includes mname.FStar_Ident.str uu____4211));
(match (()) with
| () -> begin
(

let uu___182_4220 = env
in (

let uu____4221 = (FStar_List.map (fun lid -> Open_module_or_namespace (((lid), (Open_namespace)))) open_ns)
in {curmodule = Some (mname); curmonad = uu___182_4220.curmonad; modules = uu___182_4220.modules; scope_mods = uu____4221; exported_ids = uu___182_4220.exported_ids; trans_exported_ids = uu___182_4220.trans_exported_ids; includes = uu___182_4220.includes; sigaccum = uu___182_4220.sigaccum; sigmap = env.sigmap; iface = intf; admitted_iface = admitted; expect_typ = uu___182_4220.expect_typ}))
end);
)
end);
)
end);
))))
in (

let uu____4224 = (FStar_All.pipe_right env.modules (FStar_Util.find_opt (fun uu____4236 -> (match (uu____4236) with
| (l, uu____4240) -> begin
(FStar_Ident.lid_equals l mname)
end))))
in (match (uu____4224) with
| None -> begin
(

let uu____4245 = (prep env)
in ((uu____4245), (false)))
end
| Some (uu____4246, m) -> begin
((match (((not (m.FStar_Syntax_Syntax.is_interface)) || intf)) with
| true -> begin
(

let uu____4251 = (

let uu____4252 = (

let uu____4255 = (FStar_Util.format1 "Duplicate module or interface name: %s" mname.FStar_Ident.str)
in ((uu____4255), ((FStar_Ident.range_of_lid mname))))
in FStar_Errors.Error (uu____4252))
in (Prims.raise uu____4251))
end
| uu____4256 -> begin
()
end);
(

let uu____4257 = (

let uu____4258 = (push env)
in (prep uu____4258))
in ((uu____4257), (true)));
)
end))))


let enter_monad_scope : env  ->  FStar_Ident.ident  ->  env = (fun env mname -> (match (env.curmonad) with
| Some (mname') -> begin
(Prims.raise (FStar_Errors.Error ((((Prims.strcat "Trying to define monad " (Prims.strcat mname.FStar_Ident.idText (Prims.strcat ", but already in monad scope " mname'.FStar_Ident.idText)))), (mname.FStar_Ident.idRange)))))
end
| None -> begin
(

let uu___183_4266 = env
in {curmodule = uu___183_4266.curmodule; curmonad = Some (mname); modules = uu___183_4266.modules; scope_mods = uu___183_4266.scope_mods; exported_ids = uu___183_4266.exported_ids; trans_exported_ids = uu___183_4266.trans_exported_ids; includes = uu___183_4266.includes; sigaccum = uu___183_4266.sigaccum; sigmap = uu___183_4266.sigmap; iface = uu___183_4266.iface; admitted_iface = uu___183_4266.admitted_iface; expect_typ = uu___183_4266.expect_typ})
end))


let fail_or = (fun env lookup lid -> (

let uu____4291 = (lookup lid)
in (match (uu____4291) with
| None -> begin
(

let opened_modules = (FStar_List.map (fun uu____4297 -> (match (uu____4297) with
| (lid, uu____4301) -> begin
(FStar_Ident.text_of_lid lid)
end)) env.modules)
in (

let msg = (FStar_Util.format1 "Identifier not found: [%s]" (FStar_Ident.text_of_lid lid))
in (

let msg = (match (((FStar_List.length lid.FStar_Ident.ns) = (Prims.parse_int "0"))) with
| true -> begin
msg
end
| uu____4306 -> begin
(

let modul = (

let uu____4308 = (FStar_Ident.lid_of_ids lid.FStar_Ident.ns)
in (FStar_Ident.set_lid_range uu____4308 (FStar_Ident.range_of_lid lid)))
in (

let uu____4309 = (resolve_module_name env modul true)
in (match (uu____4309) with
| None -> begin
(

let opened_modules = (FStar_String.concat ", " opened_modules)
in (FStar_Util.format3 "%s\nModule %s does not belong to the list of modules in scope, namely %s" msg modul.FStar_Ident.str opened_modules))
end
| Some (modul') when (not ((FStar_List.existsb (fun m -> (m = modul'.FStar_Ident.str)) opened_modules))) -> begin
(

let opened_modules = (FStar_String.concat ", " opened_modules)
in (FStar_Util.format4 "%s\nModule %s resolved into %s, which does not belong to the list of modules in scope, namely %s" msg modul.FStar_Ident.str modul'.FStar_Ident.str opened_modules))
end
| Some (modul') -> begin
(FStar_Util.format4 "%s\nModule %s resolved into %s, definition %s not found" msg modul.FStar_Ident.str modul'.FStar_Ident.str lid.FStar_Ident.ident.FStar_Ident.idText)
end)))
end)
in (Prims.raise (FStar_Errors.Error (((msg), ((FStar_Ident.range_of_lid lid)))))))))
end
| Some (r) -> begin
r
end)))


let fail_or2 = (fun lookup id -> (

let uu____4336 = (lookup id)
in (match (uu____4336) with
| None -> begin
(Prims.raise (FStar_Errors.Error ((((Prims.strcat "Identifier not found [" (Prims.strcat id.FStar_Ident.idText "]"))), (id.FStar_Ident.idRange)))))
end
| Some (r) -> begin
r
end)))




