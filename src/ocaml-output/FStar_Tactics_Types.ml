open Prims
type goal =
  {
  goal_main_env: FStar_TypeChecker_Env.env ;
  goal_ctx_uvar: FStar_Syntax_Syntax.ctx_uvar ;
  opts: FStar_Options.optionstate ;
  is_guard: Prims.bool ;
  label: Prims.string }
let (__proj__Mkgoal__item__goal_main_env : goal -> FStar_TypeChecker_Env.env)
  =
  fun projectee  ->
    match projectee with
    | { goal_main_env; goal_ctx_uvar; opts; is_guard; label;_} ->
        goal_main_env
  
let (__proj__Mkgoal__item__goal_ctx_uvar :
  goal -> FStar_Syntax_Syntax.ctx_uvar) =
  fun projectee  ->
    match projectee with
    | { goal_main_env; goal_ctx_uvar; opts; is_guard; label;_} ->
        goal_ctx_uvar
  
let (__proj__Mkgoal__item__opts : goal -> FStar_Options.optionstate) =
  fun projectee  ->
    match projectee with
    | { goal_main_env; goal_ctx_uvar; opts; is_guard; label;_} -> opts
  
let (__proj__Mkgoal__item__is_guard : goal -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { goal_main_env; goal_ctx_uvar; opts; is_guard; label;_} -> is_guard
  
let (__proj__Mkgoal__item__label : goal -> Prims.string) =
  fun projectee  ->
    match projectee with
    | { goal_main_env; goal_ctx_uvar; opts; is_guard; label;_} -> label
  
let (goal_env : goal -> FStar_TypeChecker_Env.env) =
  fun g  ->
    let uu___601_64529 = g.goal_main_env  in
    {
      FStar_TypeChecker_Env.solver =
        (uu___601_64529.FStar_TypeChecker_Env.solver);
      FStar_TypeChecker_Env.range =
        (uu___601_64529.FStar_TypeChecker_Env.range);
      FStar_TypeChecker_Env.curmodule =
        (uu___601_64529.FStar_TypeChecker_Env.curmodule);
      FStar_TypeChecker_Env.gamma =
        ((g.goal_ctx_uvar).FStar_Syntax_Syntax.ctx_uvar_gamma);
      FStar_TypeChecker_Env.gamma_sig =
        (uu___601_64529.FStar_TypeChecker_Env.gamma_sig);
      FStar_TypeChecker_Env.gamma_cache =
        (uu___601_64529.FStar_TypeChecker_Env.gamma_cache);
      FStar_TypeChecker_Env.modules =
        (uu___601_64529.FStar_TypeChecker_Env.modules);
      FStar_TypeChecker_Env.expected_typ =
        (uu___601_64529.FStar_TypeChecker_Env.expected_typ);
      FStar_TypeChecker_Env.sigtab =
        (uu___601_64529.FStar_TypeChecker_Env.sigtab);
      FStar_TypeChecker_Env.attrtab =
        (uu___601_64529.FStar_TypeChecker_Env.attrtab);
      FStar_TypeChecker_Env.is_pattern =
        (uu___601_64529.FStar_TypeChecker_Env.is_pattern);
      FStar_TypeChecker_Env.instantiate_imp =
        (uu___601_64529.FStar_TypeChecker_Env.instantiate_imp);
      FStar_TypeChecker_Env.effects =
        (uu___601_64529.FStar_TypeChecker_Env.effects);
      FStar_TypeChecker_Env.generalize =
        (uu___601_64529.FStar_TypeChecker_Env.generalize);
      FStar_TypeChecker_Env.letrecs =
        (uu___601_64529.FStar_TypeChecker_Env.letrecs);
      FStar_TypeChecker_Env.top_level =
        (uu___601_64529.FStar_TypeChecker_Env.top_level);
      FStar_TypeChecker_Env.check_uvars =
        (uu___601_64529.FStar_TypeChecker_Env.check_uvars);
      FStar_TypeChecker_Env.use_eq =
        (uu___601_64529.FStar_TypeChecker_Env.use_eq);
      FStar_TypeChecker_Env.is_iface =
        (uu___601_64529.FStar_TypeChecker_Env.is_iface);
      FStar_TypeChecker_Env.admit =
        (uu___601_64529.FStar_TypeChecker_Env.admit);
      FStar_TypeChecker_Env.lax = (uu___601_64529.FStar_TypeChecker_Env.lax);
      FStar_TypeChecker_Env.lax_universes =
        (uu___601_64529.FStar_TypeChecker_Env.lax_universes);
      FStar_TypeChecker_Env.phase1 =
        (uu___601_64529.FStar_TypeChecker_Env.phase1);
      FStar_TypeChecker_Env.failhard =
        (uu___601_64529.FStar_TypeChecker_Env.failhard);
      FStar_TypeChecker_Env.nosynth =
        (uu___601_64529.FStar_TypeChecker_Env.nosynth);
      FStar_TypeChecker_Env.uvar_subtyping =
        (uu___601_64529.FStar_TypeChecker_Env.uvar_subtyping);
      FStar_TypeChecker_Env.tc_term =
        (uu___601_64529.FStar_TypeChecker_Env.tc_term);
      FStar_TypeChecker_Env.type_of =
        (uu___601_64529.FStar_TypeChecker_Env.type_of);
      FStar_TypeChecker_Env.universe_of =
        (uu___601_64529.FStar_TypeChecker_Env.universe_of);
      FStar_TypeChecker_Env.check_type_of =
        (uu___601_64529.FStar_TypeChecker_Env.check_type_of);
      FStar_TypeChecker_Env.use_bv_sorts =
        (uu___601_64529.FStar_TypeChecker_Env.use_bv_sorts);
      FStar_TypeChecker_Env.qtbl_name_and_index =
        (uu___601_64529.FStar_TypeChecker_Env.qtbl_name_and_index);
      FStar_TypeChecker_Env.normalized_eff_names =
        (uu___601_64529.FStar_TypeChecker_Env.normalized_eff_names);
      FStar_TypeChecker_Env.fv_delta_depths =
        (uu___601_64529.FStar_TypeChecker_Env.fv_delta_depths);
      FStar_TypeChecker_Env.proof_ns =
        (uu___601_64529.FStar_TypeChecker_Env.proof_ns);
      FStar_TypeChecker_Env.synth_hook =
        (uu___601_64529.FStar_TypeChecker_Env.synth_hook);
      FStar_TypeChecker_Env.splice =
        (uu___601_64529.FStar_TypeChecker_Env.splice);
      FStar_TypeChecker_Env.postprocess =
        (uu___601_64529.FStar_TypeChecker_Env.postprocess);
      FStar_TypeChecker_Env.is_native_tactic =
        (uu___601_64529.FStar_TypeChecker_Env.is_native_tactic);
      FStar_TypeChecker_Env.identifier_info =
        (uu___601_64529.FStar_TypeChecker_Env.identifier_info);
      FStar_TypeChecker_Env.tc_hooks =
        (uu___601_64529.FStar_TypeChecker_Env.tc_hooks);
      FStar_TypeChecker_Env.dsenv =
        (uu___601_64529.FStar_TypeChecker_Env.dsenv);
      FStar_TypeChecker_Env.nbe = (uu___601_64529.FStar_TypeChecker_Env.nbe)
    }
  
let (goal_witness : goal -> FStar_Syntax_Syntax.term) =
  fun g  ->
    FStar_Syntax_Syntax.mk
      (FStar_Syntax_Syntax.Tm_uvar
         ((g.goal_ctx_uvar), ([], FStar_Syntax_Syntax.NoUseRange)))
      FStar_Pervasives_Native.None FStar_Range.dummyRange
  
let (goal_type : goal -> FStar_Syntax_Syntax.term) =
  fun g  -> (g.goal_ctx_uvar).FStar_Syntax_Syntax.ctx_uvar_typ 
let (goal_with_type : goal -> FStar_Syntax_Syntax.term -> goal) =
  fun g  ->
    fun t  ->
      let c = g.goal_ctx_uvar  in
      let c' =
        let uu___608_64569 = c  in
        {
          FStar_Syntax_Syntax.ctx_uvar_head =
            (uu___608_64569.FStar_Syntax_Syntax.ctx_uvar_head);
          FStar_Syntax_Syntax.ctx_uvar_gamma =
            (uu___608_64569.FStar_Syntax_Syntax.ctx_uvar_gamma);
          FStar_Syntax_Syntax.ctx_uvar_binders =
            (uu___608_64569.FStar_Syntax_Syntax.ctx_uvar_binders);
          FStar_Syntax_Syntax.ctx_uvar_typ = t;
          FStar_Syntax_Syntax.ctx_uvar_reason =
            (uu___608_64569.FStar_Syntax_Syntax.ctx_uvar_reason);
          FStar_Syntax_Syntax.ctx_uvar_should_check =
            (uu___608_64569.FStar_Syntax_Syntax.ctx_uvar_should_check);
          FStar_Syntax_Syntax.ctx_uvar_range =
            (uu___608_64569.FStar_Syntax_Syntax.ctx_uvar_range);
          FStar_Syntax_Syntax.ctx_uvar_meta =
            (uu___608_64569.FStar_Syntax_Syntax.ctx_uvar_meta)
        }  in
      let uu___611_64570 = g  in
      {
        goal_main_env = (uu___611_64570.goal_main_env);
        goal_ctx_uvar = c';
        opts = (uu___611_64570.opts);
        is_guard = (uu___611_64570.is_guard);
        label = (uu___611_64570.label)
      }
  
let (goal_with_env : goal -> FStar_TypeChecker_Env.env -> goal) =
  fun g  ->
    fun env  ->
      let c = g.goal_ctx_uvar  in
      let c' =
        let uu___616_64584 = c  in
        let uu____64585 = FStar_TypeChecker_Env.all_binders env  in
        {
          FStar_Syntax_Syntax.ctx_uvar_head =
            (uu___616_64584.FStar_Syntax_Syntax.ctx_uvar_head);
          FStar_Syntax_Syntax.ctx_uvar_gamma =
            (env.FStar_TypeChecker_Env.gamma);
          FStar_Syntax_Syntax.ctx_uvar_binders = uu____64585;
          FStar_Syntax_Syntax.ctx_uvar_typ =
            (uu___616_64584.FStar_Syntax_Syntax.ctx_uvar_typ);
          FStar_Syntax_Syntax.ctx_uvar_reason =
            (uu___616_64584.FStar_Syntax_Syntax.ctx_uvar_reason);
          FStar_Syntax_Syntax.ctx_uvar_should_check =
            (uu___616_64584.FStar_Syntax_Syntax.ctx_uvar_should_check);
          FStar_Syntax_Syntax.ctx_uvar_range =
            (uu___616_64584.FStar_Syntax_Syntax.ctx_uvar_range);
          FStar_Syntax_Syntax.ctx_uvar_meta =
            (uu___616_64584.FStar_Syntax_Syntax.ctx_uvar_meta)
        }  in
      let uu___619_64594 = g  in
      {
        goal_main_env = env;
        goal_ctx_uvar = c';
        opts = (uu___619_64594.opts);
        is_guard = (uu___619_64594.is_guard);
        label = (uu___619_64594.label)
      }
  
let (mk_goal :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.ctx_uvar ->
      FStar_Options.optionstate -> Prims.bool -> Prims.string -> goal)
  =
  fun env  ->
    fun u  ->
      fun o  ->
        fun b  ->
          fun l  ->
            {
              goal_main_env = env;
              goal_ctx_uvar = u;
              opts = o;
              is_guard = b;
              label = l
            }
  
let (subst_goal : FStar_Syntax_Syntax.subst_elt Prims.list -> goal -> goal) =
  fun subst1  ->
    fun goal  ->
      let g = goal.goal_ctx_uvar  in
      let ctx_uvar =
        let uu___629_64642 = g  in
        let uu____64643 =
          FStar_TypeChecker_Env.rename_gamma subst1
            g.FStar_Syntax_Syntax.ctx_uvar_gamma
           in
        let uu____64646 =
          FStar_Syntax_Subst.subst subst1 g.FStar_Syntax_Syntax.ctx_uvar_typ
           in
        {
          FStar_Syntax_Syntax.ctx_uvar_head =
            (uu___629_64642.FStar_Syntax_Syntax.ctx_uvar_head);
          FStar_Syntax_Syntax.ctx_uvar_gamma = uu____64643;
          FStar_Syntax_Syntax.ctx_uvar_binders =
            (uu___629_64642.FStar_Syntax_Syntax.ctx_uvar_binders);
          FStar_Syntax_Syntax.ctx_uvar_typ = uu____64646;
          FStar_Syntax_Syntax.ctx_uvar_reason =
            (uu___629_64642.FStar_Syntax_Syntax.ctx_uvar_reason);
          FStar_Syntax_Syntax.ctx_uvar_should_check =
            (uu___629_64642.FStar_Syntax_Syntax.ctx_uvar_should_check);
          FStar_Syntax_Syntax.ctx_uvar_range =
            (uu___629_64642.FStar_Syntax_Syntax.ctx_uvar_range);
          FStar_Syntax_Syntax.ctx_uvar_meta =
            (uu___629_64642.FStar_Syntax_Syntax.ctx_uvar_meta)
        }  in
      let uu___632_64649 = goal  in
      {
        goal_main_env = (uu___632_64649.goal_main_env);
        goal_ctx_uvar = ctx_uvar;
        opts = (uu___632_64649.opts);
        is_guard = (uu___632_64649.is_guard);
        label = (uu___632_64649.label)
      }
  
type guard_policy =
  | Goal 
  | SMT 
  | Force 
  | Drop 
let (uu___is_Goal : guard_policy -> Prims.bool) =
  fun projectee  ->
    match projectee with | Goal  -> true | uu____64659 -> false
  
let (uu___is_SMT : guard_policy -> Prims.bool) =
  fun projectee  ->
    match projectee with | SMT  -> true | uu____64670 -> false
  
let (uu___is_Force : guard_policy -> Prims.bool) =
  fun projectee  ->
    match projectee with | Force  -> true | uu____64681 -> false
  
let (uu___is_Drop : guard_policy -> Prims.bool) =
  fun projectee  ->
    match projectee with | Drop  -> true | uu____64692 -> false
  
type proofstate =
  {
  main_context: FStar_TypeChecker_Env.env ;
  main_goal: goal ;
  all_implicits: FStar_TypeChecker_Env.implicits ;
  goals: goal Prims.list ;
  smt_goals: goal Prims.list ;
  depth: Prims.int ;
  __dump: proofstate -> Prims.string -> unit ;
  psc: FStar_TypeChecker_Cfg.psc ;
  entry_range: FStar_Range.range ;
  guard_policy: guard_policy ;
  freshness: Prims.int ;
  tac_verb_dbg: Prims.bool ;
  local_state: FStar_Syntax_Syntax.term FStar_Util.psmap }
let (__proj__Mkproofstate__item__main_context :
  proofstate -> FStar_TypeChecker_Env.env) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> main_context
  
let (__proj__Mkproofstate__item__main_goal : proofstate -> goal) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> main_goal
  
let (__proj__Mkproofstate__item__all_implicits :
  proofstate -> FStar_TypeChecker_Env.implicits) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> all_implicits
  
let (__proj__Mkproofstate__item__goals : proofstate -> goal Prims.list) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> goals
  
let (__proj__Mkproofstate__item__smt_goals : proofstate -> goal Prims.list) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> smt_goals
  
let (__proj__Mkproofstate__item__depth : proofstate -> Prims.int) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> depth
  
let (__proj__Mkproofstate__item____dump :
  proofstate -> proofstate -> Prims.string -> unit) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> __dump
  
let (__proj__Mkproofstate__item__psc :
  proofstate -> FStar_TypeChecker_Cfg.psc) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> psc
  
let (__proj__Mkproofstate__item__entry_range :
  proofstate -> FStar_Range.range) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> entry_range
  
let (__proj__Mkproofstate__item__guard_policy : proofstate -> guard_policy) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> guard_policy
  
let (__proj__Mkproofstate__item__freshness : proofstate -> Prims.int) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> freshness
  
let (__proj__Mkproofstate__item__tac_verb_dbg : proofstate -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> tac_verb_dbg
  
let (__proj__Mkproofstate__item__local_state :
  proofstate -> FStar_Syntax_Syntax.term FStar_Util.psmap) =
  fun projectee  ->
    match projectee with
    | { main_context; main_goal; all_implicits; goals; smt_goals; depth;
        __dump; psc; entry_range; guard_policy; freshness; tac_verb_dbg;
        local_state;_} -> local_state
  
let (subst_proof_state :
  FStar_Syntax_Syntax.subst_t -> proofstate -> proofstate) =
  fun subst1  ->
    fun ps  ->
      let uu____65279 = FStar_Options.tactic_raw_binders ()  in
      if uu____65279
      then ps
      else
        (let uu___676_65284 = ps  in
         let uu____65285 = subst_goal subst1 ps.main_goal  in
         let uu____65286 = FStar_List.map (subst_goal subst1) ps.goals  in
         {
           main_context = (uu___676_65284.main_context);
           main_goal = uu____65285;
           all_implicits = (uu___676_65284.all_implicits);
           goals = uu____65286;
           smt_goals = (uu___676_65284.smt_goals);
           depth = (uu___676_65284.depth);
           __dump = (uu___676_65284.__dump);
           psc = (uu___676_65284.psc);
           entry_range = (uu___676_65284.entry_range);
           guard_policy = (uu___676_65284.guard_policy);
           freshness = (uu___676_65284.freshness);
           tac_verb_dbg = (uu___676_65284.tac_verb_dbg);
           local_state = (uu___676_65284.local_state)
         })
  
let (decr_depth : proofstate -> proofstate) =
  fun ps  ->
    let uu___679_65295 = ps  in
    {
      main_context = (uu___679_65295.main_context);
      main_goal = (uu___679_65295.main_goal);
      all_implicits = (uu___679_65295.all_implicits);
      goals = (uu___679_65295.goals);
      smt_goals = (uu___679_65295.smt_goals);
      depth = (ps.depth - (Prims.parse_int "1"));
      __dump = (uu___679_65295.__dump);
      psc = (uu___679_65295.psc);
      entry_range = (uu___679_65295.entry_range);
      guard_policy = (uu___679_65295.guard_policy);
      freshness = (uu___679_65295.freshness);
      tac_verb_dbg = (uu___679_65295.tac_verb_dbg);
      local_state = (uu___679_65295.local_state)
    }
  
let (incr_depth : proofstate -> proofstate) =
  fun ps  ->
    let uu___682_65303 = ps  in
    {
      main_context = (uu___682_65303.main_context);
      main_goal = (uu___682_65303.main_goal);
      all_implicits = (uu___682_65303.all_implicits);
      goals = (uu___682_65303.goals);
      smt_goals = (uu___682_65303.smt_goals);
      depth = (ps.depth + (Prims.parse_int "1"));
      __dump = (uu___682_65303.__dump);
      psc = (uu___682_65303.psc);
      entry_range = (uu___682_65303.entry_range);
      guard_policy = (uu___682_65303.guard_policy);
      freshness = (uu___682_65303.freshness);
      tac_verb_dbg = (uu___682_65303.tac_verb_dbg);
      local_state = (uu___682_65303.local_state)
    }
  
let (tracepoint : proofstate -> unit) =
  fun ps  ->
    let uu____65311 =
      (FStar_Options.tactic_trace ()) ||
        (let uu____65314 = FStar_Options.tactic_trace_d ()  in
         ps.depth <= uu____65314)
       in
    if uu____65311
    then
      let uu____65317 =
        let uu____65318 = FStar_TypeChecker_Cfg.psc_subst ps.psc  in
        subst_proof_state uu____65318 ps  in
      ps.__dump uu____65317 "TRACE"
    else ()
  
let (set_ps_psc : FStar_TypeChecker_Cfg.psc -> proofstate -> proofstate) =
  fun psc  ->
    fun ps  ->
      let uu___688_65333 = ps  in
      {
        main_context = (uu___688_65333.main_context);
        main_goal = (uu___688_65333.main_goal);
        all_implicits = (uu___688_65333.all_implicits);
        goals = (uu___688_65333.goals);
        smt_goals = (uu___688_65333.smt_goals);
        depth = (uu___688_65333.depth);
        __dump = (uu___688_65333.__dump);
        psc;
        entry_range = (uu___688_65333.entry_range);
        guard_policy = (uu___688_65333.guard_policy);
        freshness = (uu___688_65333.freshness);
        tac_verb_dbg = (uu___688_65333.tac_verb_dbg);
        local_state = (uu___688_65333.local_state)
      }
  
let (set_proofstate_range : proofstate -> FStar_Range.range -> proofstate) =
  fun ps  ->
    fun r  ->
      let uu___692_65345 = ps  in
      let uu____65346 =
        let uu____65347 = FStar_Range.def_range r  in
        FStar_Range.set_def_range ps.entry_range uu____65347  in
      {
        main_context = (uu___692_65345.main_context);
        main_goal = (uu___692_65345.main_goal);
        all_implicits = (uu___692_65345.all_implicits);
        goals = (uu___692_65345.goals);
        smt_goals = (uu___692_65345.smt_goals);
        depth = (uu___692_65345.depth);
        __dump = (uu___692_65345.__dump);
        psc = (uu___692_65345.psc);
        entry_range = uu____65346;
        guard_policy = (uu___692_65345.guard_policy);
        freshness = (uu___692_65345.freshness);
        tac_verb_dbg = (uu___692_65345.tac_verb_dbg);
        local_state = (uu___692_65345.local_state)
      }
  
let (goals_of : proofstate -> goal Prims.list) = fun ps  -> ps.goals 
let (smt_goals_of : proofstate -> goal Prims.list) = fun ps  -> ps.smt_goals 
let (is_guard : goal -> Prims.bool) = fun g  -> g.is_guard 
let (get_label : goal -> Prims.string) = fun g  -> g.label 
let (set_label : Prims.string -> goal -> goal) =
  fun l  ->
    fun g  ->
      let uu___700_65395 = g  in
      {
        goal_main_env = (uu___700_65395.goal_main_env);
        goal_ctx_uvar = (uu___700_65395.goal_ctx_uvar);
        opts = (uu___700_65395.opts);
        is_guard = (uu___700_65395.is_guard);
        label = l
      }
  
type direction =
  | TopDown 
  | BottomUp 
let (uu___is_TopDown : direction -> Prims.bool) =
  fun projectee  ->
    match projectee with | TopDown  -> true | uu____65405 -> false
  
let (uu___is_BottomUp : direction -> Prims.bool) =
  fun projectee  ->
    match projectee with | BottomUp  -> true | uu____65416 -> false
  
exception TacticFailure of Prims.string 
let (uu___is_TacticFailure : Prims.exn -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | TacticFailure uu____65431 -> true
    | uu____65434 -> false
  
let (__proj__TacticFailure__item__uu___ : Prims.exn -> Prims.string) =
  fun projectee  ->
    match projectee with | TacticFailure uu____65445 -> uu____65445
  
exception EExn of FStar_Syntax_Syntax.term 
let (uu___is_EExn : Prims.exn -> Prims.bool) =
  fun projectee  ->
    match projectee with | EExn uu____65459 -> true | uu____65461 -> false
  
let (__proj__EExn__item__uu___ : Prims.exn -> FStar_Syntax_Syntax.term) =
  fun projectee  -> match projectee with | EExn uu____65470 -> uu____65470 