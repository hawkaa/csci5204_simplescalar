gcc2_compiled.:
___gnu_compiled_c:
.data
	.align 4
_ptrace_nelt:
	.word	0
	.align 4
_twolev_nelt:
	.word	3
	.align 4
_twolev_config:
	.word	1
	.word	1024
	.word	8
	.align 4
_ruu_include_spec:
	.word	1
	.align 4
_RUU_size:
	.word	8
	.align 4
_LSQ_size:
	.word	4
	.align 4
_mem_nelt:
	.word	2
	.align 4
_mem_lat:
	.word	18
	.word	2
	.align 4
_pcstat_nelt:
	.word	0
	.global _fu_config
	.align 4
_fu_config:
	.word	LC0
	.word	4
	.word	0
	.word	1
	.word	1
	.word	1
	.skip 4
	.skip 240
	.word	LC1
	.word	1
	.word	0
	.word	2
	.word	3
	.word	1
	.skip 4
	.word	3
	.word	20
	.word	19
	.skip 4
	.skip 224
	.word	LC2
	.word	2
	.word	0
	.word	10
	.word	1
	.word	1
	.skip 4
	.word	11
	.word	1
	.word	1
	.skip 4
	.skip 224
	.word	LC3
	.word	4
	.word	0
	.word	4
	.word	2
	.word	1
	.skip 4
	.word	5
	.word	2
	.word	1
	.skip 4
	.word	6
	.word	2
	.word	1
	.skip 4
	.skip 208
	.word	LC4
	.word	1
	.word	0
	.word	7
	.word	4
	.word	1
	.skip 4
	.word	8
	.word	12
	.word	12
	.skip 4
	.word	9
	.word	24
	.word	24
	.skip 4
	.skip 208
.text
	.align 8
LC4:
	.ascii "FP-MULT/DIV\0"
	.align 8
LC3:
	.ascii "FP-adder\0"
	.align 8
LC2:
	.ascii "memory-port\0"
	.align 8
LC1:
	.ascii "integer-MULT/DIV\0"
	.align 8
LC0:
	.ascii "integer-ALU\0"
.data
	.align 8
_sim_num_insn:
	.word	0
	.word	0
	.align 8
_sim_total_insn:
	.word	0
	.word	0
	.align 8
_sim_num_refs:
	.word	0
	.word	0
	.align 8
_sim_total_refs:
	.word	0
	.word	0
	.align 8
_sim_num_loads:
	.word	0
	.word	0
	.align 8
_sim_total_loads:
	.word	0
	.word	0
	.align 8
_sim_num_branches:
	.word	0
	.word	0
	.align 8
_sim_total_branches:
	.word	0
	.word	0
	.align 8
_sim_cycle:
	.word	0
	.word	0
	.align 4
_inst_seq:
	.word	0
	.align 4
_ptrace_seq:
	.word	0
	.align 4
_spec_mode:
	.word	0
	.align 4
_ruu_fetch_issue_delay:
	.word	0
	.align 4
_pred_perfect:
	.word	0
	.align 4
_fu_pool:
	.word	0
.text
	.align 8
LC5:
	.ascii "chunks > 0\0"
	.align 8
LC6:
	.ascii "sim-outorder.c\0"
	.align 8
LC7:
	.ascii "mem_access_latency\0"
	.align 4
	.proc	016
_mem_access_latency:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	add %i0,-1,%i0
	sethi %hi(_mem_bus_width),%o0
	ld [%o0+%lo(_mem_bus_width)],%o1
	add %i0,%o1,%i0
	call .div,0
	mov %i0,%o0
	orcc %o0,%g0,%i0
	bg L6
	sethi %hi(_mem_lat),%l0
	sethi %hi(LC5),%o0
	or %o0,%lo(LC5),%o0
	sethi %hi(LC6),%o1
	or %o1,%lo(LC6),%o1
	mov 396,%o2
	sethi %hi(LC7),%o3
	call ___assert_fail,0
	or %o3,%lo(LC7),%o3
L6:
	or %l0,%lo(_mem_lat),%o1
	add %i0,-1,%o0
	call .umul,0
	ld [%o1+4],%o1
	ld [%l0+%lo(_mem_lat)],%i0
	ret
	restore %o0,%i0,%o0
	.align 4
	.proc	016
_dl1_access_fn:
	!#PROLOGUE# 0
	save %sp,-128,%sp
	!#PROLOGUE# 1
	mov %i1,%o2
	sethi %hi(_cache_dl2),%o0
	ld [%o0+%lo(_cache_dl2)],%o0
	cmp %o0,0
	be L8
	mov %i2,%o4
	st %g0,[%sp+96]
	st %g0,[%sp+100]
	st %i5,[%sp+92]
	mov %i4,%o5
	mov %i0,%o1
	call _cache_access,0
	mov 0,%o3
	subcc %g0,%i0,%g0
	addx %g0,-1,%i0
	b L14
	and %i0,%o0,%i0
L8:
	cmp %i0,0
	bne L14
	mov 0,%i0
	call _mem_access_latency,0
	mov %o4,%o0
	mov %o0,%i0
L14:
	ret
	restore
	.align 4
	.proc	016
_dl2_access_fn:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	cmp %i0,0
	be L16
	mov %i2,%o0
	b L18
	mov 0,%i0
L16:
	call _mem_access_latency,0
	nop
	mov %o0,%i0
L18:
	ret
	restore
	.align 8
LC8:
	.ascii "il1_access_fn\0"
	.align 8
LC9:
	.ascii "writes to instruction memory not supported\0"
	.align 4
	.proc	016
_il1_access_fn:
	!#PROLOGUE# 0
	save %sp,-128,%sp
	!#PROLOGUE# 1
	mov %i1,%o2
	sethi %hi(_cache_il2),%o0
	ld [%o0+%lo(_cache_il2)],%o0
	cmp %o0,0
	be L20
	mov %i2,%o4
	st %g0,[%sp+96]
	st %g0,[%sp+100]
	st %i5,[%sp+92]
	mov %i4,%o5
	mov %i0,%o1
	call _cache_access,0
	mov 0,%o3
	cmp %i0,0
	bne,a L21
	sethi %hi(LC6),%o0
	b L26
	mov %o0,%i0
L21:
	or %o0,%lo(LC6),%o0
	sethi %hi(LC8),%o1
	or %o1,%lo(LC8),%o1
	mov 479,%o2
	sethi %hi(LC9),%o3
	call __panic,0
	or %o3,%lo(LC9),%o3
L20:
	cmp %i0,0
	bne L24
	sethi %hi(LC6),%o0
	call _mem_access_latency,0
	mov %o4,%o0
	b L26
	mov %o0,%i0
L24:
	or %o0,%lo(LC6),%o0
	sethi %hi(LC8),%o1
	or %o1,%lo(LC8),%o1
	mov 487,%o2
	sethi %hi(LC9),%o3
	call __panic,0
	or %o3,%lo(LC9),%o3
L26:
	ret
	restore
	.align 8
LC10:
	.ascii "il2_access_fn\0"
	.align 4
	.proc	016
_il2_access_fn:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	cmp %i0,0
	bne L28
	mov %i2,%o0
	call _mem_access_latency,0
	nop
	b L30
	mov %o0,%i0
L28:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC10),%o1
	or %o1,%lo(LC10),%o1
	mov 503,%o2
	sethi %hi(LC9),%o3
	call __panic,0
	or %o3,%lo(LC9),%o3
L30:
	ret
	restore
	.align 8
LC11:
	.ascii "phy_page_ptr\0"
	.align 8
LC12:
	.ascii "itlb_access_fn\0"
	.align 4
	.proc	016
_itlb_access_fn:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	ld [%i3+32],%i0
	cmp %i0,0
	bne,a L34
	st %g0,[%i0]
	sethi %hi(LC11),%o0
	or %o0,%lo(LC11),%o0
	sethi %hi(LC6),%o1
	or %o1,%lo(LC6),%o1
	mov 522,%o2
	sethi %hi(LC12),%o3
	call ___assert_fail,0
	or %o3,%lo(LC12),%o3
	st %g0,[%i0]
L34:
	sethi %hi(_tlb_miss_lat),%o0
	ld [%o0+%lo(_tlb_miss_lat)],%i0
	ret
	restore
	.align 8
LC13:
	.ascii "dtlb_access_fn\0"
	.align 4
	.proc	016
_dtlb_access_fn:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	ld [%i3+32],%i0
	cmp %i0,0
	bne,a L38
	st %g0,[%i0]
	sethi %hi(LC11),%o0
	or %o0,%lo(LC11),%o0
	sethi %hi(LC6),%o1
	or %o1,%lo(LC6),%o1
	mov 542,%o2
	sethi %hi(LC13),%o3
	call ___assert_fail,0
	or %o3,%lo(LC13),%o3
	st %g0,[%i0]
L38:
	sethi %hi(_tlb_miss_lat),%o0
	ld [%o0+%lo(_tlb_miss_lat)],%i0
	ret
	restore
	.align 8
LC14:
	.ascii "sim-outorder: This simulator implements a very detailed out-of-order issue\12superscalar processor with a two-level memory system and speculative\12execution support.  This simulator is a performance simulator, tracking the\12latency of all pipeline operations.\12\0"
	.align 8
LC15:
	.ascii "-ptrace\0"
	.align 8
LC16:
	.ascii "generate pipetrace, i.e., <fname|stdout|stderr> <range>\0"
	.align 8
LC17:
	.ascii "  Pipetrace range arguments are formatted as follows:\12\12    {{@|#}<start>}:{{@|#|+}<end>}\12\12  Both ends of the range are optional, if neither are specified, the entire\12  execution is traced.  Ranges that start with a `@' designate an address\12  range to be traced, those that start with an `#' designate a cycle count\12  range.  All other range values represent an instruction count range.  The\12  second argument, if specified with a `+', indicates a value relative\12  to the first argument, e.g., 1000:+100 == 1000:1100.  Program symbols may\12  be used in all contexts.\12\12    Examples:   -ptrace FOO.trc #0:#1000\12                -ptrace BAR.trc @2000:\12                -ptrace BLAH.trc :1500\12                -ptrace UXXE.trc :\12                -ptrace FOOBAR.trc @main:+278\12\0"
	.align 8
LC18:
	.ascii "-max:inst\0"
	.align 8
LC19:
	.ascii "maximum number of inst's to execute\0"
	.align 8
LC20:
	.ascii "-fastfwd\0"
	.align 8
LC21:
	.ascii "number of insts skipped before timing starts\0"
	.align 8
LC22:
	.ascii "-fetch:ifqsize\0"
	.align 8
LC23:
	.ascii "instruction fetch queue size (in insts)\0"
	.align 8
LC24:
	.ascii "-fetch:mplat\0"
	.align 8
LC25:
	.ascii "extra branch mis-prediction latency\0"
	.align 8
LC26:
	.ascii "-bpred\0"
	.align 8
LC27:
	.ascii "branch predictor type {nottaken|taken|perfect|bimod|2lev}\0"
	.align 8
LC28:
	.ascii "bimod\0"
	.align 8
LC29:
	.ascii "-bpred:bimod\0"
	.align 8
LC30:
	.ascii "bimodal predictor BTB size\0"
	.align 8
LC31:
	.ascii "-bpred:2lev\0"
	.align 8
LC32:
	.ascii "2-level predictor config (<l1size> <l2size> <hist_size>)\0"
	.align 8
LC33:
	.ascii "-decode:width\0"
	.align 8
LC34:
	.ascii "instruction decode B/W (insts/cycle)\0"
	.align 8
LC35:
	.ascii "-issue:width\0"
	.align 8
LC36:
	.ascii "instruction issue B/W (insts/cycle)\0"
	.align 8
LC37:
	.ascii "-issue:inorder\0"
	.align 8
LC38:
	.ascii "run pipeline with in-order issue\0"
	.align 8
LC39:
	.ascii "-issue:wrongpath\0"
	.align 8
LC40:
	.ascii "issue instructions down wrong execution paths\0"
	.align 8
LC41:
	.ascii "-commit:width\0"
	.align 8
LC42:
	.ascii "instruction commit B/W (insts/cycle)\0"
	.align 8
LC43:
	.ascii "-ruu:size\0"
	.align 8
LC44:
	.ascii "register update unit (RUU) size\0"
	.align 8
LC45:
	.ascii "-lsq:size\0"
	.align 8
LC46:
	.ascii "load/store queue (LSQ) size\0"
	.align 8
LC47:
	.ascii "-cache:dl1\0"
	.align 8
LC48:
	.ascii "l1 data cache config, i.e., {<config>|none}\0"
	.align 8
LC49:
	.ascii "dl1:128:32:4:l\0"
	.align 8
LC50:
	.ascii "  The cache config parameter <config> has the following format:\12\12    <name>:<nsets>:<bsize>:<assoc>:<repl>\12\12    <name>   - name of the cache being defined\12    <nsets>  - number of sets in the cache\12    <bsize>  - block size of the cache\12    <assoc>  - associativity of the cache\12    <repl>   - block replacement strategy, 'l'-LRU, 'f'-FIFO, 'r'-random\12\12    Examples:   -cache:dl1 dl1:4096:32:1:l\12                -dtlb dtlb:128:4096:32:r\12\0"
	.align 8
LC51:
	.ascii "-cache:dl1lat\0"
	.align 8
LC52:
	.ascii "l1 data cache hit latency (in cycles)\0"
	.align 8
LC53:
	.ascii "-cache:dl2\0"
	.align 8
LC54:
	.ascii "l2 data cache config, i.e., {<config>|none}\0"
	.align 8
LC55:
	.ascii "ul2:1024:64:4:l\0"
	.align 8
LC56:
	.ascii "-cache:dl2lat\0"
	.align 8
LC57:
	.ascii "l2 data cache hit latency (in cycles)\0"
	.align 8
LC58:
	.ascii "-cache:il1\0"
	.align 8
LC59:
	.ascii "l1 inst cache config, i.e., {<config>|dl1|dl2|none}\0"
	.align 8
LC60:
	.ascii "il1:512:32:1:l\0"
	.align 8
LC61:
	.ascii "  Cache levels can be unified by pointing a level of the instruction cache\12  hierarchy at the data cache hiearchy using the \"dl1\" and \"dl2\" cache\12  configuration arguments.  Most sensible combinations are supported, e.g.,\12\12    A unified l2 cache (il2 is pointed at dl2):\12      -cache:il1 il1:128:64:1:l -cache:il2 dl2\12      -cache:dl1 dl1:256:32:1:l -cache:dl2 ul2:1024:64:2:l\12\12    Or, a fully unified cache hierarchy (il1 pointed at dl1):\12      -cache:il1 dl1\12      -cache:dl1 ul1:256:32:1:l -cache:dl2 ul2:1024:64:2:l\12\0"
	.align 8
LC62:
	.ascii "-cache:il1lat\0"
	.align 8
LC63:
	.ascii "l1 instruction cache hit latency (in cycles)\0"
	.align 8
LC64:
	.ascii "-cache:il2\0"
	.align 8
LC65:
	.ascii "l2 instruction cache config, i.e., {<config>|dl2|none}\0"
	.align 8
LC66:
	.ascii "dl2\0"
	.align 8
LC67:
	.ascii "-cache:il2lat\0"
	.align 8
LC68:
	.ascii "l2 instruction cache hit latency (in cycles)\0"
	.align 8
LC69:
	.ascii "-cache:flush\0"
	.align 8
LC70:
	.ascii "flush caches on system calls\0"
	.align 8
LC71:
	.ascii "-cache:icompress\0"
	.align 8
LC72:
	.ascii "convert 64-bit inst addresses to 32-bit inst equivalents\0"
	.align 8
LC73:
	.ascii "-mem:lat\0"
	.align 8
LC74:
	.ascii "memory access latency (<first_chunk> <inter_chunk>)\0"
	.align 8
LC75:
	.ascii "-mem:width\0"
	.align 8
LC76:
	.ascii "memory access bus width (in bytes)\0"
	.align 8
LC77:
	.ascii "-tlb:itlb\0"
	.align 8
LC78:
	.ascii "instruction TLB config, i.e., {<config>|none}\0"
	.align 8
LC79:
	.ascii "itlb:16:4096:4:l\0"
	.align 8
LC80:
	.ascii "-tlb:dtlb\0"
	.align 8
LC81:
	.ascii "data TLB config, i.e., {<config>|none}\0"
	.align 8
LC82:
	.ascii "dtlb:32:4096:4:l\0"
	.align 8
LC83:
	.ascii "-tlb:lat\0"
	.align 8
LC84:
	.ascii "inst/data TLB miss latency (in cycles)\0"
	.align 8
LC85:
	.ascii "-res:ialu\0"
	.align 8
LC86:
	.ascii "total number of integer ALU's available\0"
	.align 8
LC87:
	.ascii "-res:imult\0"
	.align 8
LC88:
	.ascii "total number of integer multiplier/dividers available\0"
	.align 8
LC89:
	.ascii "-res:memport\0"
	.align 8
LC90:
	.ascii "total number of memory system ports available (to CPU)\0"
	.align 8
LC91:
	.ascii "-res:fpalu\0"
	.align 8
LC92:
	.ascii "total number of floating point ALU's available\0"
	.align 8
LC93:
	.ascii "-res:fpmult\0"
	.align 8
LC94:
	.ascii "total number of floating point multiplier/dividers available\0"
	.align 8
LC95:
	.ascii "-pcstat\0"
	.align 8
LC96:
	.ascii "profile stat(s) against text addr's (mult uses ok)\0"
	.align 8
LC97:
	.ascii "-bugcompat\0"
	.align 8
LC98:
	.ascii "operate in backward-compatible bugs mode (for testing only)\0"
	.align 4
	.global _sim_reg_options
	.proc	020
_sim_reg_options:
	!#PROLOGUE# 0
	save %sp,-128,%sp
	!#PROLOGUE# 1
	mov %i0,%o0
	sethi %hi(LC14),%o1
	call _opt_reg_header,0
	or %o1,%lo(LC14),%o1
	st %g0,[%sp+92]
	st %g0,[%sp+96]
	st %g0,[%sp+100]
	st %g0,[%sp+104]
	mov %i0,%o0
	sethi %hi(LC15),%o1
	or %o1,%lo(LC15),%o1
	sethi %hi(LC16),%o2
	or %o2,%lo(LC16),%o2
	sethi %hi(_ptrace_opts),%o3
	or %o3,%lo(_ptrace_opts),%o3
	mov 2,%o4
	sethi %hi(_ptrace_nelt),%o5
	call _opt_reg_string_list,0
	or %o5,%lo(_ptrace_nelt),%o5
	mov %i0,%o0
	sethi %hi(LC17),%o1
	call _opt_reg_note,0
	or %o1,%lo(LC17),%o1
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC18),%o1
	or %o1,%lo(LC18),%o1
	sethi %hi(LC19),%o2
	or %o2,%lo(LC19),%o2
	sethi %hi(_max_insts),%o3
	or %o3,%lo(_max_insts),%o3
	mov 0,%o4
	call _opt_reg_uint,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC20),%o1
	or %o1,%lo(LC20),%o1
	sethi %hi(LC21),%o2
	or %o2,%lo(LC21),%o2
	sethi %hi(_fastfwd_count),%o3
	or %o3,%lo(_fastfwd_count),%o3
	mov 0,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC22),%o1
	or %o1,%lo(LC22),%o1
	sethi %hi(LC23),%o2
	or %o2,%lo(LC23),%o2
	sethi %hi(_ruu_ifq_size),%o3
	or %o3,%lo(_ruu_ifq_size),%o3
	mov 4,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC24),%o1
	or %o1,%lo(LC24),%o1
	sethi %hi(LC25),%o2
	or %o2,%lo(LC25),%o2
	sethi %hi(_ruu_branch_penalty),%o3
	or %o3,%lo(_ruu_branch_penalty),%o3
	mov 3,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC26),%o1
	or %o1,%lo(LC26),%o1
	sethi %hi(LC27),%o2
	or %o2,%lo(LC27),%o2
	sethi %hi(_pred_type),%o3
	or %o3,%lo(_pred_type),%o3
	sethi %hi(LC28),%o4
	or %o4,%lo(LC28),%o4
	call _opt_reg_string,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC29),%o1
	or %o1,%lo(LC29),%o1
	sethi %hi(LC30),%o2
	or %o2,%lo(LC30),%o2
	sethi %hi(_btb_size),%o3
	or %o3,%lo(_btb_size),%o3
	mov 2048,%o4
	call _opt_reg_int,0
	mov 1,%o5
	sethi %hi(_twolev_nelt),%o5
	sethi %hi(_twolev_config),%o3
	or %o3,%lo(_twolev_config),%o3
	st %o3,[%sp+92]
	mov 1,%l1
	st %l1,[%sp+96]
	st %g0,[%sp+100]
	st %g0,[%sp+104]
	mov %i0,%o0
	sethi %hi(LC31),%o1
	or %o1,%lo(LC31),%o1
	sethi %hi(LC32),%o2
	or %o2,%lo(LC32),%o2
	ld [%o5+%lo(_twolev_nelt)],%o4
	call _opt_reg_int_list,0
	or %o5,%lo(_twolev_nelt),%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC33),%o1
	or %o1,%lo(LC33),%o1
	sethi %hi(LC34),%o2
	or %o2,%lo(LC34),%o2
	sethi %hi(_ruu_decode_width),%o3
	or %o3,%lo(_ruu_decode_width),%o3
	mov 4,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC35),%o1
	or %o1,%lo(LC35),%o1
	sethi %hi(LC36),%o2
	or %o2,%lo(LC36),%o2
	sethi %hi(_ruu_issue_width),%o3
	or %o3,%lo(_ruu_issue_width),%o3
	mov 4,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC37),%o1
	or %o1,%lo(LC37),%o1
	sethi %hi(LC38),%o2
	or %o2,%lo(LC38),%o2
	sethi %hi(_ruu_inorder_issue),%o3
	or %o3,%lo(_ruu_inorder_issue),%o3
	mov 0,%o4
	call _opt_reg_flag,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC39),%o1
	or %o1,%lo(LC39),%o1
	sethi %hi(LC40),%o2
	or %o2,%lo(LC40),%o2
	sethi %hi(_ruu_include_spec),%o3
	or %o3,%lo(_ruu_include_spec),%o3
	mov 1,%o4
	call _opt_reg_flag,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC41),%o1
	or %o1,%lo(LC41),%o1
	sethi %hi(LC42),%o2
	or %o2,%lo(LC42),%o2
	sethi %hi(_ruu_commit_width),%o3
	or %o3,%lo(_ruu_commit_width),%o3
	mov 4,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC43),%o1
	or %o1,%lo(LC43),%o1
	sethi %hi(LC44),%o2
	or %o2,%lo(LC44),%o2
	sethi %hi(_RUU_size),%o3
	or %o3,%lo(_RUU_size),%o3
	mov 16,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC45),%o1
	or %o1,%lo(LC45),%o1
	sethi %hi(LC46),%o2
	or %o2,%lo(LC46),%o2
	sethi %hi(_LSQ_size),%o3
	or %o3,%lo(_LSQ_size),%o3
	mov 8,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC47),%o1
	or %o1,%lo(LC47),%o1
	sethi %hi(LC48),%o2
	or %o2,%lo(LC48),%o2
	sethi %hi(_cache_dl1_opt),%o3
	or %o3,%lo(_cache_dl1_opt),%o3
	sethi %hi(LC49),%o4
	or %o4,%lo(LC49),%o4
	call _opt_reg_string,0
	mov 1,%o5
	mov %i0,%o0
	sethi %hi(LC50),%o1
	call _opt_reg_note,0
	or %o1,%lo(LC50),%o1
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC51),%o1
	or %o1,%lo(LC51),%o1
	sethi %hi(LC52),%o2
	or %o2,%lo(LC52),%o2
	sethi %hi(_cache_dl1_lat),%o3
	or %o3,%lo(_cache_dl1_lat),%o3
	mov 1,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC53),%o1
	or %o1,%lo(LC53),%o1
	sethi %hi(LC54),%o2
	or %o2,%lo(LC54),%o2
	sethi %hi(_cache_dl2_opt),%o3
	or %o3,%lo(_cache_dl2_opt),%o3
	sethi %hi(LC55),%o4
	or %o4,%lo(LC55),%o4
	call _opt_reg_string,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC56),%o1
	or %o1,%lo(LC56),%o1
	sethi %hi(LC57),%o2
	or %o2,%lo(LC57),%o2
	sethi %hi(_cache_dl2_lat),%o3
	or %o3,%lo(_cache_dl2_lat),%o3
	mov 6,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC58),%o1
	or %o1,%lo(LC58),%o1
	sethi %hi(LC59),%o2
	or %o2,%lo(LC59),%o2
	sethi %hi(_cache_il1_opt),%o3
	or %o3,%lo(_cache_il1_opt),%o3
	sethi %hi(LC60),%o4
	or %o4,%lo(LC60),%o4
	call _opt_reg_string,0
	mov 1,%o5
	mov %i0,%o0
	sethi %hi(LC61),%o1
	call _opt_reg_note,0
	or %o1,%lo(LC61),%o1
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC62),%o1
	or %o1,%lo(LC62),%o1
	sethi %hi(LC63),%o2
	or %o2,%lo(LC63),%o2
	sethi %hi(_cache_il1_lat),%o3
	or %o3,%lo(_cache_il1_lat),%o3
	mov 1,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC64),%o1
	or %o1,%lo(LC64),%o1
	sethi %hi(LC65),%o2
	or %o2,%lo(LC65),%o2
	sethi %hi(_cache_il2_opt),%o3
	or %o3,%lo(_cache_il2_opt),%o3
	sethi %hi(LC66),%o4
	or %o4,%lo(LC66),%o4
	call _opt_reg_string,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC67),%o1
	or %o1,%lo(LC67),%o1
	sethi %hi(LC68),%o2
	or %o2,%lo(LC68),%o2
	sethi %hi(_cache_il2_lat),%o3
	or %o3,%lo(_cache_il2_lat),%o3
	mov 6,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC69),%o1
	or %o1,%lo(LC69),%o1
	sethi %hi(LC70),%o2
	or %o2,%lo(LC70),%o2
	sethi %hi(_flush_on_syscalls),%o3
	or %o3,%lo(_flush_on_syscalls),%o3
	mov 0,%o4
	call _opt_reg_flag,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC71),%o1
	or %o1,%lo(LC71),%o1
	sethi %hi(LC72),%o2
	or %o2,%lo(LC72),%o2
	sethi %hi(_compress_icache_addrs),%o3
	or %o3,%lo(_compress_icache_addrs),%o3
	mov 0,%o4
	call _opt_reg_flag,0
	mov 1,%o5
	sethi %hi(_mem_nelt),%o5
	sethi %hi(_mem_lat),%o3
	or %o3,%lo(_mem_lat),%o3
	st %o3,[%sp+92]
	st %l1,[%sp+96]
	st %g0,[%sp+100]
	st %g0,[%sp+104]
	mov %i0,%o0
	sethi %hi(LC73),%o1
	or %o1,%lo(LC73),%o1
	sethi %hi(LC74),%o2
	or %o2,%lo(LC74),%o2
	ld [%o5+%lo(_mem_nelt)],%o4
	call _opt_reg_int_list,0
	or %o5,%lo(_mem_nelt),%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC75),%o1
	or %o1,%lo(LC75),%o1
	sethi %hi(LC76),%o2
	or %o2,%lo(LC76),%o2
	sethi %hi(_mem_bus_width),%o3
	or %o3,%lo(_mem_bus_width),%o3
	mov 8,%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC77),%o1
	or %o1,%lo(LC77),%o1
	sethi %hi(LC78),%o2
	or %o2,%lo(LC78),%o2
	sethi %hi(_itlb_opt),%o3
	or %o3,%lo(_itlb_opt),%o3
	sethi %hi(LC79),%o4
	or %o4,%lo(LC79),%o4
	call _opt_reg_string,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC80),%o1
	or %o1,%lo(LC80),%o1
	sethi %hi(LC81),%o2
	or %o2,%lo(LC81),%o2
	sethi %hi(_dtlb_opt),%o3
	or %o3,%lo(_dtlb_opt),%o3
	sethi %hi(LC82),%o4
	or %o4,%lo(LC82),%o4
	call _opt_reg_string,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC83),%o1
	or %o1,%lo(LC83),%o1
	sethi %hi(LC84),%o2
	or %o2,%lo(LC84),%o2
	sethi %hi(_tlb_miss_lat),%o3
	or %o3,%lo(_tlb_miss_lat),%o3
	mov 30,%o4
	call _opt_reg_int,0
	mov 1,%o5
	sethi %hi(_fu_config+4),%o4
	or %o4,%lo(_fu_config+4),%l0
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC85),%o1
	or %o1,%lo(LC85),%o1
	sethi %hi(LC86),%o2
	or %o2,%lo(LC86),%o2
	sethi %hi(_res_ialu),%o3
	or %o3,%lo(_res_ialu),%o3
	ld [%o4+%lo(_fu_config+4)],%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC87),%o1
	or %o1,%lo(LC87),%o1
	sethi %hi(LC88),%o2
	or %o2,%lo(LC88),%o2
	sethi %hi(_res_imult),%o3
	or %o3,%lo(_res_imult),%o3
	ld [%l0+268],%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC89),%o1
	or %o1,%lo(LC89),%o1
	sethi %hi(LC90),%o2
	or %o2,%lo(LC90),%o2
	sethi %hi(_res_memport),%o3
	or %o3,%lo(_res_memport),%o3
	ld [%l0+536],%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC91),%o1
	or %o1,%lo(LC91),%o1
	sethi %hi(LC92),%o2
	or %o2,%lo(LC92),%o2
	sethi %hi(_res_fpalu),%o3
	or %o3,%lo(_res_fpalu),%o3
	ld [%l0+804],%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC93),%o1
	or %o1,%lo(LC93),%o1
	sethi %hi(LC94),%o2
	or %o2,%lo(LC94),%o2
	sethi %hi(_res_fpmult),%o3
	or %o3,%lo(_res_fpmult),%o3
	ld [%l0+1072],%o4
	call _opt_reg_int,0
	mov 1,%o5
	st %g0,[%sp+92]
	st %g0,[%sp+96]
	st %g0,[%sp+100]
	st %l1,[%sp+104]
	mov %i0,%o0
	sethi %hi(LC95),%o1
	or %o1,%lo(LC95),%o1
	sethi %hi(LC96),%o2
	or %o2,%lo(LC96),%o2
	sethi %hi(_pcstat_vars),%o3
	or %o3,%lo(_pcstat_vars),%o3
	mov 8,%o4
	sethi %hi(_pcstat_nelt),%o5
	call _opt_reg_string_list,0
	or %o5,%lo(_pcstat_nelt),%o5
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC97),%o1
	or %o1,%lo(LC97),%o1
	sethi %hi(LC98),%o2
	or %o2,%lo(LC98),%o2
	sethi %hi(_bugcompat_mode),%o3
	or %o3,%lo(_bugcompat_mode),%o3
	mov 0,%o4
	call _opt_reg_flag,0
	mov 1,%o5
	ret
	restore
	.align 8
LC99:
	.ascii "sim_check_options\0"
	.align 8
LC100:
	.ascii "bad fast forward count: %d\0"
	.align 8
LC101:
	.ascii "inst fetch queue size must be positive > 0 and a power of two\0"
	.align 8
LC102:
	.ascii "mis-prediction penalty must be at least 1 cycle\0"
	.align 8
LC103:
	.ascii "perfect\0"
	.align 8
LC104:
	.ascii "taken\0"
	.align 8
LC105:
	.ascii "nottaken\0"
	.align 8
LC106:
	.ascii "2lev\0"
	.align 8
LC107:
	.ascii "bad 2-level predictor config (<l1size> <l2size> <hist_size>)\0"
	.align 8
LC108:
	.ascii "cannot parse predictor type `%s'\0"
	.align 8
LC109:
	.ascii "issue width must be positive non-zero and a power of two\0"
	.align 8
LC110:
	.ascii "commit width must be positive non-zero\0"
	.align 8
LC111:
	.ascii "RUU size must be a positive number > 1 and a power of two\0"
	.align 8
LC112:
	.ascii "LSQ size must be a positive number > 1 and a power of two\0"
	.align 8
LC113:
	.ascii "none\0"
	.align 8
LC114:
	.ascii "the l1 data cache must defined if the l2 cache is defined\0"
	.align 8
LC115:
	.ascii "%[^:]:%d:%d:%d:%c\0"
	.align 8
LC116:
	.ascii "bad l1 D-cache parms: <name>:<nsets>:<bsize>:<assoc>:<repl>\0"
	.align 8
LC117:
	.ascii "bad l2 D-cache parms: <name>:<nsets>:<bsize>:<assoc>:<repl>\0"
	.align 8
LC118:
	.ascii "the l1 inst cache must defined if the l2 cache is defined\0"
	.align 8
LC119:
	.ascii "dl1\0"
	.align 8
LC120:
	.ascii "I-cache l1 cannot access D-cache l1 as it's undefined\0"
	.align 8
LC121:
	.ascii "I-cache l1 cannot access D-cache l2 as it's undefined\0"
	.align 8
LC122:
	.ascii "bad l1 I-cache parms: <name>:<nsets>:<bsize>:<assoc>:<repl>\0"
	.align 8
LC123:
	.ascii "I-cache l2 cannot access D-cache l2 as it's undefined\0"
	.align 8
LC124:
	.ascii "bad l2 I-cache parms: <name>:<nsets>:<bsize>:<assoc>:<repl>\0"
	.align 8
LC125:
	.ascii "bad TLB parms: <name>:<nsets>:<page_size>:<assoc>:<repl>\0"
	.align 8
LC126:
	.ascii "l1 data cache latency must be greater than zero\0"
	.align 8
LC127:
	.ascii "l2 data cache latency must be greater than zero\0"
	.align 8
LC128:
	.ascii "l1 instruction cache latency must be greater than zero\0"
	.align 8
LC129:
	.ascii "l2 instruction cache latency must be greater than zero\0"
	.align 8
LC130:
	.ascii "bad memory access latency (<first_chunk> <inter_chunk>)\0"
	.align 8
LC131:
	.ascii "all memory access latencies must be greater than zero\0"
	.align 8
LC132:
	.ascii "memory bus width must be positive non-zero and a power of two\0"
	.align 8
LC133:
	.ascii "TLB miss latency must be greater than zero\0"
	.align 8
LC134:
	.ascii "number of integer ALU's must be greater than zero\0"
	.align 8
LC135:
	.ascii "number of integer ALU's must be <= MAX_INSTS_PER_CLASS\0"
	.align 8
LC136:
	.ascii "number of integer multiplier/dividers must be greater than zero\0"
	.align 8
LC137:
	.ascii "number of integer mult/div's must be <= MAX_INSTS_PER_CLASS\0"
	.align 8
LC138:
	.ascii "number of memory system ports must be greater than zero\0"
	.align 8
LC139:
	.ascii "number of memory system ports must be <= MAX_INSTS_PER_CLASS\0"
	.align 8
LC140:
	.ascii "number of floating point ALU's must be greater than zero\0"
	.align 8
LC141:
	.ascii "number of floating point ALU's must be <= MAX_INSTS_PER_CLASS\0"
	.align 8
LC142:
	.ascii "number of floating point multiplier/dividers must be > zero\0"
	.align 8
LC143:
	.ascii "number of FP mult/div's must be <= MAX_INSTS_PER_CLASS\0"
	.align 4
	.global _sim_check_options
	.proc	020
_sim_check_options:
	!#PROLOGUE# 0
	save %sp,-272,%sp
	!#PROLOGUE# 1
	sethi %hi(_fastfwd_count),%o0
	ld [%o0+%lo(_fastfwd_count)],%o4
	sethi %hi(2147483646),%o0
	or %o0,%lo(2147483646),%o0
	cmp %o4,%o0
	bleu L41
	sethi %hi(_ruu_ifq_size),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 819,%o2
	sethi %hi(LC100),%o3
	call __fatal,0
	or %o3,%lo(LC100),%o3
L41:
	ld [%o0+%lo(_ruu_ifq_size)],%o1
	cmp %o1,0
	ble L43
	mov 822,%o2
	add %o1,-1,%o0
	andcc %o0,%o1,%g0
	be L42
	sethi %hi(_ruu_branch_penalty),%o0
L43:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	sethi %hi(LC101),%o3
	call __fatal,0
	or %o3,%lo(LC101),%o3
L42:
	ld [%o0+%lo(_ruu_branch_penalty)],%o0
	cmp %o0,0
	bg L44
	sethi %hi(_pred_type),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 825,%o2
	sethi %hi(LC102),%o3
	call __fatal,0
	or %o3,%lo(LC102),%o3
L44:
	ld [%o0+%lo(_pred_type)],%o0
	sethi %hi(LC103),%o1
	call _mystricmp,0
	or %o1,%lo(LC103),%o1
	cmp %o0,0
	bne L45
	sethi %hi(_pred_type),%o0
	sethi %hi(_pred),%o0
	st %g0,[%o0+%lo(_pred)]
	mov 1,%o0
	sethi %hi(_pred_perfect),%o1
	b L46
	st %o0,[%o1+%lo(_pred_perfect)]
L45:
	ld [%o0+%lo(_pred_type)],%o0
	sethi %hi(LC104),%o1
	call _mystricmp,0
	or %o1,%lo(LC104),%o1
	cmp %o0,0
	bne L47
	sethi %hi(_pred_type),%o0
	mov 2,%o0
	b L116
	mov 0,%o1
L47:
	ld [%o0+%lo(_pred_type)],%o0
	sethi %hi(LC105),%o1
	call _mystricmp,0
	or %o1,%lo(LC105),%o1
	cmp %o0,0
	bne L49
	sethi %hi(_pred_type),%o0
	mov 3,%o0
	b L116
	mov 0,%o1
L49:
	ld [%o0+%lo(_pred_type)],%o0
	sethi %hi(LC28),%o1
	call _mystricmp,0
	or %o1,%lo(LC28),%o1
	cmp %o0,0
	bne L51
	sethi %hi(_pred_type),%o0
	sethi %hi(_btb_size),%o1
	mov 1,%o0
	ld [%o1+%lo(_btb_size)],%o1
L116:
	mov 0,%o2
	call _bpred_create,0
	mov 0,%o3
	sethi %hi(_pred),%o1
	b L46
	st %o0,[%o1+%lo(_pred)]
L51:
	ld [%o0+%lo(_pred_type)],%o0
	sethi %hi(LC106),%o1
	call _mystricmp,0
	or %o1,%lo(LC106),%o1
	cmp %o0,0
	bne L53
	sethi %hi(_pred_type),%o4
	sethi %hi(_twolev_nelt),%o0
	ld [%o0+%lo(_twolev_nelt)],%o0
	cmp %o0,3
	be L54
	sethi %hi(_twolev_config),%o1
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 852,%o2
	sethi %hi(LC107),%o3
	call __fatal,0
	or %o3,%lo(LC107),%o3
L54:
	or %o1,%lo(_twolev_config),%o3
	mov 0,%o0
	ld [%o1+%lo(_twolev_config)],%o1
	ld [%o3+4],%o2
	call _bpred_create,0
	ld [%o3+8],%o3
	sethi %hi(_pred),%o1
	b L46
	st %o0,[%o1+%lo(_pred)]
L53:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 859,%o2
	sethi %hi(LC108),%o3
	or %o3,%lo(LC108),%o3
	call __fatal,0
	ld [%o4+%lo(_pred_type)],%o4
L46:
	sethi %hi(_ruu_decode_width),%o0
	ld [%o0+%lo(_ruu_decode_width)],%o1
	cmp %o1,0
	ble L57
	mov 862,%o2
	add %o1,-1,%o0
	andcc %o0,%o1,%g0
	be L56
	sethi %hi(_ruu_issue_width),%o0
L57:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	sethi %hi(LC109),%o3
	call __fatal,0
	or %o3,%lo(LC109),%o3
L56:
	ld [%o0+%lo(_ruu_issue_width)],%o1
	cmp %o1,0
	ble L59
	mov 865,%o2
	add %o1,-1,%o0
	andcc %o0,%o1,%g0
	be L58
	sethi %hi(_ruu_commit_width),%o0
L59:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	sethi %hi(LC109),%o3
	call __fatal,0
	or %o3,%lo(LC109),%o3
L58:
	ld [%o0+%lo(_ruu_commit_width)],%o0
	cmp %o0,0
	bg L60
	sethi %hi(_RUU_size),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 868,%o2
	sethi %hi(LC110),%o3
	call __fatal,0
	or %o3,%lo(LC110),%o3
L60:
	ld [%o0+%lo(_RUU_size)],%o1
	cmp %o1,1
	ble L62
	mov 871,%o2
	add %o1,-1,%o0
	andcc %o0,%o1,%g0
	be L61
	sethi %hi(_LSQ_size),%o0
L62:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	sethi %hi(LC111),%o3
	call __fatal,0
	or %o3,%lo(LC111),%o3
L61:
	ld [%o0+%lo(_LSQ_size)],%o1
	cmp %o1,1
	ble L64
	mov 874,%o2
	add %o1,-1,%o0
	andcc %o0,%o1,%g0
	be L63
	sethi %hi(_cache_dl1_opt),%o0
L64:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	sethi %hi(LC112),%o3
	call __fatal,0
	or %o3,%lo(LC112),%o3
L63:
	ld [%o0+%lo(_cache_dl1_opt)],%o0
	sethi %hi(LC113),%l0
	call _mystricmp,0
	or %l0,%lo(LC113),%o1
	cmp %o0,0
	bne L65
	sethi %hi(_cache_dl1_opt),%o0
	sethi %hi(_cache_dl1),%o0
	st %g0,[%o0+%lo(_cache_dl1)]
	sethi %hi(_cache_dl2_opt),%o0
	ld [%o0+%lo(_cache_dl2_opt)],%o0
	call _strcmp,0
	or %l0,%lo(LC113),%o1
	cmp %o0,0
	be,a L120
	sethi %hi(_cache_dl2),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 883,%o2
	sethi %hi(LC114),%o3
	call __fatal,0
	or %o3,%lo(LC114),%o3
L65:
	add %fp,-157,%o1
	st %o1,[%sp+92]
	ld [%o0+%lo(_cache_dl1_opt)],%o0
	sethi %hi(LC115),%o1
	or %o1,%lo(LC115),%o1
	add %fp,-144,%o2
	add %fp,-148,%o3
	add %fp,-152,%o4
	call _sscanf,0
	add %fp,-156,%o5
	cmp %o0,5
	be L68
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 890,%o2
	sethi %hi(LC116),%o3
	call __fatal,0
	or %o3,%lo(LC116),%o3
L68:
	call _cache_char2policy,0
	ldsb [%fp-157],%o0
	st %o0,[%sp+92]
	sethi %hi(_dl1_access_fn),%o0
	or %o0,%lo(_dl1_access_fn),%o0
	st %o0,[%sp+96]
	sethi %hi(_cache_dl1_lat),%o0
	ld [%o0+%lo(_cache_dl1_lat)],%o0
	st %o0,[%sp+100]
	add %fp,-144,%o0
	ld [%fp-148],%o1
	ld [%fp-152],%o2
	mov 0,%o3
	mov 0,%o4
	call _cache_create,0
	ld [%fp-156],%o5
	sethi %hi(_cache_dl1),%o1
	st %o0,[%o1+%lo(_cache_dl1)]
	sethi %hi(_cache_dl2_opt),%o0
	ld [%o0+%lo(_cache_dl2_opt)],%o0
	sethi %hi(LC113),%o1
	call _mystricmp,0
	or %o1,%lo(LC113),%o1
	cmp %o0,0
	bne L69
	sethi %hi(_cache_dl2_opt),%o0
	sethi %hi(_cache_dl2),%o0
L120:
	b L67
	st %g0,[%o0+%lo(_cache_dl2)]
L69:
	add %fp,-157,%o1
	st %o1,[%sp+92]
	ld [%o0+%lo(_cache_dl2_opt)],%o0
	sethi %hi(LC115),%o1
	or %o1,%lo(LC115),%o1
	add %fp,-144,%o2
	add %fp,-148,%o3
	add %fp,-152,%o4
	call _sscanf,0
	add %fp,-156,%o5
	cmp %o0,5
	be L71
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 903,%o2
	sethi %hi(LC117),%o3
	call __fatal,0
	or %o3,%lo(LC117),%o3
L71:
	call _cache_char2policy,0
	ldsb [%fp-157],%o0
	st %o0,[%sp+92]
	sethi %hi(_dl2_access_fn),%o0
	or %o0,%lo(_dl2_access_fn),%o0
	st %o0,[%sp+96]
	sethi %hi(_cache_dl2_lat),%o0
	ld [%o0+%lo(_cache_dl2_lat)],%o0
	st %o0,[%sp+100]
	add %fp,-144,%o0
	ld [%fp-148],%o1
	ld [%fp-152],%o2
	mov 0,%o3
	mov 0,%o4
	call _cache_create,0
	ld [%fp-156],%o5
	sethi %hi(_cache_dl2),%o1
	st %o0,[%o1+%lo(_cache_dl2)]
L67:
	sethi %hi(_cache_il1_opt),%o0
	ld [%o0+%lo(_cache_il1_opt)],%o0
	sethi %hi(LC113),%l0
	call _mystricmp,0
	or %l0,%lo(LC113),%o1
	cmp %o0,0
	bne L72
	sethi %hi(_cache_il1_opt),%o0
	sethi %hi(_cache_il1),%o0
	st %g0,[%o0+%lo(_cache_il1)]
	sethi %hi(_cache_il2_opt),%o0
	ld [%o0+%lo(_cache_il2_opt)],%o0
	call _strcmp,0
	or %l0,%lo(LC113),%o1
	cmp %o0,0
	be,a L121
	sethi %hi(_cache_il2),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 917,%o2
	sethi %hi(LC118),%o3
	call __fatal,0
	or %o3,%lo(LC118),%o3
L72:
	ld [%o0+%lo(_cache_il1_opt)],%o0
	sethi %hi(LC119),%o1
	call _mystricmp,0
	or %o1,%lo(LC119),%o1
	cmp %o0,0
	bne L75
	sethi %hi(_cache_il1_opt),%o0
	sethi %hi(_cache_dl1),%o0
	ld [%o0+%lo(_cache_dl1)],%o0
	cmp %o0,0
	bne L76
	sethi %hi(_cache_dl1),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 923,%o2
	sethi %hi(LC120),%o3
	call __fatal,0
	or %o3,%lo(LC120),%o3
L76:
	ld [%o0+%lo(_cache_dl1)],%o0
	sethi %hi(_cache_il1),%o1
	st %o0,[%o1+%lo(_cache_il1)]
	sethi %hi(_cache_il2_opt),%o0
	ld [%o0+%lo(_cache_il2_opt)],%o0
	sethi %hi(LC113),%o1
	call _strcmp,0
	or %o1,%lo(LC113),%o1
	cmp %o0,0
	be,a L121
	sethi %hi(_cache_il2),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 928,%o2
	sethi %hi(LC118),%o3
	call __fatal,0
	or %o3,%lo(LC118),%o3
L75:
	ld [%o0+%lo(_cache_il1_opt)],%o0
	sethi %hi(LC66),%o1
	call _mystricmp,0
	or %o1,%lo(LC66),%o1
	cmp %o0,0
	bne L79
	sethi %hi(_cache_il1_opt),%o0
	sethi %hi(_cache_dl2),%o0
	ld [%o0+%lo(_cache_dl2)],%o0
	cmp %o0,0
	bne L80
	sethi %hi(_cache_dl2),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 934,%o2
	sethi %hi(LC121),%o3
	call __fatal,0
	or %o3,%lo(LC121),%o3
L80:
	ld [%o0+%lo(_cache_dl2)],%o0
	sethi %hi(_cache_il1),%o1
	st %o0,[%o1+%lo(_cache_il1)]
	sethi %hi(_cache_il2_opt),%o0
	ld [%o0+%lo(_cache_il2_opt)],%o0
	sethi %hi(LC113),%o1
	call _strcmp,0
	or %o1,%lo(LC113),%o1
	cmp %o0,0
	be,a L121
	sethi %hi(_cache_il2),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 939,%o2
	sethi %hi(LC118),%o3
	call __fatal,0
	or %o3,%lo(LC118),%o3
L79:
	add %fp,-157,%o1
	st %o1,[%sp+92]
	ld [%o0+%lo(_cache_il1_opt)],%o0
	sethi %hi(LC115),%o1
	or %o1,%lo(LC115),%o1
	add %fp,-144,%o2
	add %fp,-148,%o3
	add %fp,-152,%o4
	call _sscanf,0
	add %fp,-156,%o5
	cmp %o0,5
	be L83
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 946,%o2
	sethi %hi(LC122),%o3
	call __fatal,0
	or %o3,%lo(LC122),%o3
L83:
	call _cache_char2policy,0
	ldsb [%fp-157],%o0
	st %o0,[%sp+92]
	sethi %hi(_il1_access_fn),%o0
	or %o0,%lo(_il1_access_fn),%o0
	st %o0,[%sp+96]
	sethi %hi(_cache_il1_lat),%o0
	ld [%o0+%lo(_cache_il1_lat)],%o0
	st %o0,[%sp+100]
	add %fp,-144,%o0
	ld [%fp-148],%o1
	ld [%fp-152],%o2
	mov 0,%o3
	mov 0,%o4
	call _cache_create,0
	ld [%fp-156],%o5
	sethi %hi(_cache_il1),%o1
	st %o0,[%o1+%lo(_cache_il1)]
	sethi %hi(_cache_il2_opt),%o0
	ld [%o0+%lo(_cache_il2_opt)],%o0
	sethi %hi(LC113),%o1
	call _mystricmp,0
	or %o1,%lo(LC113),%o1
	cmp %o0,0
	bne L84
	sethi %hi(_cache_il2_opt),%o0
	sethi %hi(_cache_il2),%o0
L121:
	b L74
	st %g0,[%o0+%lo(_cache_il2)]
L84:
	ld [%o0+%lo(_cache_il2_opt)],%o0
	sethi %hi(LC66),%o1
	call _mystricmp,0
	or %o1,%lo(LC66),%o1
	cmp %o0,0
	bne L86
	sethi %hi(_cache_il2_opt),%o0
	sethi %hi(_cache_dl2),%o0
	ld [%o0+%lo(_cache_dl2)],%o0
	cmp %o0,0
	bne,a L87
	sethi %hi(_cache_dl2),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 957,%o2
	sethi %hi(LC123),%o3
	call __fatal,0
	or %o3,%lo(LC123),%o3
L87:
	b L119
	ld [%o0+%lo(_cache_dl2)],%o0
L86:
	add %fp,-157,%o1
	st %o1,[%sp+92]
	ld [%o0+%lo(_cache_il2_opt)],%o0
	sethi %hi(LC115),%o1
	or %o1,%lo(LC115),%o1
	add %fp,-144,%o2
	add %fp,-148,%o3
	add %fp,-152,%o4
	call _sscanf,0
	add %fp,-156,%o5
	cmp %o0,5
	be L89
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 965,%o2
	sethi %hi(LC124),%o3
	call __fatal,0
	or %o3,%lo(LC124),%o3
L89:
	call _cache_char2policy,0
	ldsb [%fp-157],%o0
	st %o0,[%sp+92]
	sethi %hi(_il2_access_fn),%o0
	or %o0,%lo(_il2_access_fn),%o0
	st %o0,[%sp+96]
	sethi %hi(_cache_il2_lat),%o0
	ld [%o0+%lo(_cache_il2_lat)],%o0
	st %o0,[%sp+100]
	add %fp,-144,%o0
	ld [%fp-148],%o1
	ld [%fp-152],%o2
	mov 0,%o3
	mov 0,%o4
	call _cache_create,0
	ld [%fp-156],%o5
L119:
	sethi %hi(_cache_il2),%o1
	st %o0,[%o1+%lo(_cache_il2)]
L74:
	sethi %hi(_itlb_opt),%o0
	ld [%o0+%lo(_itlb_opt)],%o0
	sethi %hi(LC113),%o1
	call _mystricmp,0
	or %o1,%lo(LC113),%o1
	cmp %o0,0
	bne L90
	sethi %hi(_itlb_opt),%o0
	sethi %hi(_itlb),%o0
	b L91
	st %g0,[%o0+%lo(_itlb)]
L90:
	add %fp,-157,%o1
	st %o1,[%sp+92]
	ld [%o0+%lo(_itlb_opt)],%o0
	sethi %hi(LC115),%o1
	or %o1,%lo(LC115),%o1
	add %fp,-144,%o2
	add %fp,-148,%o3
	add %fp,-152,%o4
	call _sscanf,0
	add %fp,-156,%o5
	cmp %o0,5
	be L92
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 979,%o2
	sethi %hi(LC125),%o3
	call __fatal,0
	or %o3,%lo(LC125),%o3
L92:
	call _cache_char2policy,0
	ldsb [%fp-157],%o0
	st %o0,[%sp+92]
	sethi %hi(_itlb_access_fn),%o0
	or %o0,%lo(_itlb_access_fn),%o0
	st %o0,[%sp+96]
	mov 1,%o0
	st %o0,[%sp+100]
	add %fp,-144,%o0
	ld [%fp-148],%o1
	ld [%fp-152],%o2
	mov 0,%o3
	mov 4,%o4
	call _cache_create,0
	ld [%fp-156],%o5
	sethi %hi(_itlb),%o1
	st %o0,[%o1+%lo(_itlb)]
L91:
	sethi %hi(_dtlb_opt),%o0
	ld [%o0+%lo(_dtlb_opt)],%o0
	sethi %hi(LC113),%o1
	call _mystricmp,0
	or %o1,%lo(LC113),%o1
	cmp %o0,0
	bne L93
	sethi %hi(_dtlb_opt),%o0
	sethi %hi(_dtlb),%o0
	b L94
	st %g0,[%o0+%lo(_dtlb)]
L93:
	add %fp,-157,%o1
	st %o1,[%sp+92]
	ld [%o0+%lo(_dtlb_opt)],%o0
	sethi %hi(LC115),%o1
	or %o1,%lo(LC115),%o1
	add %fp,-144,%o2
	add %fp,-148,%o3
	add %fp,-152,%o4
	call _sscanf,0
	add %fp,-156,%o5
	cmp %o0,5
	be L95
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 993,%o2
	sethi %hi(LC125),%o3
	call __fatal,0
	or %o3,%lo(LC125),%o3
L95:
	call _cache_char2policy,0
	ldsb [%fp-157],%o0
	st %o0,[%sp+92]
	sethi %hi(_dtlb_access_fn),%o0
	or %o0,%lo(_dtlb_access_fn),%o0
	st %o0,[%sp+96]
	mov 1,%o0
	st %o0,[%sp+100]
	add %fp,-144,%o0
	ld [%fp-148],%o1
	ld [%fp-152],%o2
	mov 0,%o3
	mov 4,%o4
	call _cache_create,0
	ld [%fp-156],%o5
	sethi %hi(_dtlb),%o1
	st %o0,[%o1+%lo(_dtlb)]
L94:
	sethi %hi(_cache_dl1_lat),%o0
	ld [%o0+%lo(_cache_dl1_lat)],%o0
	cmp %o0,0
	bg L96
	sethi %hi(_cache_dl2_lat),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1001,%o2
	sethi %hi(LC126),%o3
	call __fatal,0
	or %o3,%lo(LC126),%o3
L96:
	ld [%o0+%lo(_cache_dl2_lat)],%o0
	cmp %o0,0
	bg L97
	sethi %hi(_cache_il1_lat),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1004,%o2
	sethi %hi(LC127),%o3
	call __fatal,0
	or %o3,%lo(LC127),%o3
L97:
	ld [%o0+%lo(_cache_il1_lat)],%o0
	cmp %o0,0
	bg L98
	sethi %hi(_cache_il2_lat),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1007,%o2
	sethi %hi(LC128),%o3
	call __fatal,0
	or %o3,%lo(LC128),%o3
L98:
	ld [%o0+%lo(_cache_il2_lat)],%o0
	cmp %o0,0
	bg L99
	sethi %hi(_mem_nelt),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1010,%o2
	sethi %hi(LC129),%o3
	call __fatal,0
	or %o3,%lo(LC129),%o3
L99:
	ld [%o0+%lo(_mem_nelt)],%o0
	cmp %o0,2
	be L100
	sethi %hi(_mem_lat),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1013,%o2
	sethi %hi(LC130),%o3
	call __fatal,0
	or %o3,%lo(LC130),%o3
L100:
	or %o0,%lo(_mem_lat),%o1
	ld [%o0+%lo(_mem_lat)],%o0
	cmp %o0,0
	ble L102
	mov 1016,%o2
	ld [%o1+4],%o0
	cmp %o0,0
	bg L101
	sethi %hi(_mem_bus_width),%o0
L102:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	sethi %hi(LC131),%o3
	call __fatal,0
	or %o3,%lo(LC131),%o3
L101:
	ld [%o0+%lo(_mem_bus_width)],%o1
	cmp %o1,0
	ble L104
	mov 1019,%o2
	add %o1,-1,%o0
	andcc %o0,%o1,%g0
	be L103
	sethi %hi(_tlb_miss_lat),%o0
L104:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	sethi %hi(LC132),%o3
	call __fatal,0
	or %o3,%lo(LC132),%o3
L103:
	ld [%o0+%lo(_tlb_miss_lat)],%o0
	cmp %o0,0
	bg L105
	sethi %hi(_res_ialu),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1022,%o2
	sethi %hi(LC133),%o3
	call __fatal,0
	or %o3,%lo(LC133),%o3
L105:
	ld [%o0+%lo(_res_ialu)],%o0
	cmp %o0,0
	bg L106
	sethi %hi(_res_ialu),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1025,%o2
	sethi %hi(LC134),%o3
	call __fatal,0
	or %o3,%lo(LC134),%o3
L106:
	ld [%o0+%lo(_res_ialu)],%o0
	cmp %o0,8
	ble L107
	sethi %hi(_res_ialu),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1027,%o2
	sethi %hi(LC135),%o3
	call __fatal,0
	or %o3,%lo(LC135),%o3
L107:
	ld [%o0+%lo(_res_ialu)],%o0
	sethi %hi(_fu_config+4),%o1
	st %o0,[%o1+%lo(_fu_config+4)]
	sethi %hi(_res_imult),%o0
	ld [%o0+%lo(_res_imult)],%o0
	cmp %o0,0
	bg L108
	sethi %hi(_res_imult),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1031,%o2
	sethi %hi(LC136),%o3
	call __fatal,0
	or %o3,%lo(LC136),%o3
L108:
	ld [%o0+%lo(_res_imult)],%o0
	cmp %o0,8
	ble L109
	sethi %hi(_res_imult),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1033,%o2
	sethi %hi(LC137),%o3
	call __fatal,0
	or %o3,%lo(LC137),%o3
L109:
	ld [%o0+%lo(_res_imult)],%o0
	sethi %hi(_fu_config+272),%o1
	st %o0,[%o1+%lo(_fu_config+272)]
	sethi %hi(_res_memport),%o0
	ld [%o0+%lo(_res_memport)],%o0
	cmp %o0,0
	bg L110
	sethi %hi(_res_memport),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1037,%o2
	sethi %hi(LC138),%o3
	call __fatal,0
	or %o3,%lo(LC138),%o3
L110:
	ld [%o0+%lo(_res_memport)],%o0
	cmp %o0,8
	ble L111
	sethi %hi(_res_memport),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1039,%o2
	sethi %hi(LC139),%o3
	call __fatal,0
	or %o3,%lo(LC139),%o3
L111:
	ld [%o0+%lo(_res_memport)],%o0
	sethi %hi(_fu_config+540),%o1
	st %o0,[%o1+%lo(_fu_config+540)]
	sethi %hi(_res_fpalu),%o0
	ld [%o0+%lo(_res_fpalu)],%o0
	cmp %o0,0
	bg L112
	sethi %hi(_res_fpalu),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1043,%o2
	sethi %hi(LC140),%o3
	call __fatal,0
	or %o3,%lo(LC140),%o3
L112:
	ld [%o0+%lo(_res_fpalu)],%o0
	cmp %o0,8
	ble L113
	sethi %hi(_res_fpalu),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1045,%o2
	sethi %hi(LC141),%o3
	call __fatal,0
	or %o3,%lo(LC141),%o3
L113:
	ld [%o0+%lo(_res_fpalu)],%o0
	sethi %hi(_fu_config+808),%o1
	st %o0,[%o1+%lo(_fu_config+808)]
	sethi %hi(_res_fpmult),%o0
	ld [%o0+%lo(_res_fpmult)],%o0
	cmp %o0,0
	bg L114
	sethi %hi(_res_fpmult),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1049,%o2
	sethi %hi(LC142),%o3
	call __fatal,0
	or %o3,%lo(LC142),%o3
L114:
	ld [%o0+%lo(_res_fpmult)],%o0
	cmp %o0,8
	ble L115
	sethi %hi(_res_fpmult),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC99),%o1
	or %o1,%lo(LC99),%o1
	mov 1051,%o2
	sethi %hi(LC143),%o3
	call __fatal,0
	or %o3,%lo(LC143),%o3
L115:
	ld [%o0+%lo(_res_fpmult)],%o0
	sethi %hi(_fu_config+1076),%o1
	st %o0,[%o1+%lo(_fu_config+1076)]
	ret
	restore
	.align 4
	.global _sim_aux_config
	.proc	020
_sim_aux_config:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	ret
	restore
	.align 8
LC144:
	.ascii "sim_num_insn\0"
	.align 8
LC145:
	.ascii "total number of instructions committed\0"
	.align 8
LC146:
	.ascii "sim_num_refs\0"
	.align 8
LC147:
	.ascii "total number of loads and stores committed\0"
	.align 8
LC148:
	.ascii "sim_num_loads\0"
	.align 8
LC149:
	.ascii "total number of loads committed\0"
	.align 8
LC150:
	.ascii "sim_num_stores\0"
	.align 8
LC151:
	.ascii "total number of stores committed\0"
	.align 8
LC152:
	.ascii "sim_num_refs - sim_num_loads\0"
	.align 8
LC153:
	.ascii "sim_num_branches\0"
	.align 8
LC154:
	.ascii "total number of branches committed\0"
	.align 8
LC155:
	.ascii "sim_elapsed_time\0"
	.align 8
LC156:
	.ascii "total simulation time in seconds\0"
	.align 8
LC157:
	.ascii "sim_inst_rate\0"
	.align 8
LC158:
	.ascii "simulation speed (in insts/sec)\0"
	.align 8
LC159:
	.ascii "sim_num_insn / sim_elapsed_time\0"
	.align 8
LC160:
	.ascii "sim_total_insn\0"
	.align 8
LC161:
	.ascii "total number of instructions executed\0"
	.align 8
LC162:
	.ascii "sim_total_refs\0"
	.align 8
LC163:
	.ascii "total number of loads and stores executed\0"
	.align 8
LC164:
	.ascii "sim_total_loads\0"
	.align 8
LC165:
	.ascii "total number of loads executed\0"
	.align 8
LC166:
	.ascii "sim_total_stores\0"
	.align 8
LC167:
	.ascii "total number of stores executed\0"
	.align 8
LC168:
	.ascii "sim_total_refs - sim_total_loads\0"
	.align 8
LC169:
	.ascii "sim_total_branches\0"
	.align 8
LC170:
	.ascii "total number of branches executed\0"
	.align 8
LC171:
	.ascii "sim_cycle\0"
	.align 8
LC172:
	.ascii "total simulation time in cycles\0"
	.align 8
LC173:
	.ascii "sim_IPC\0"
	.align 8
LC174:
	.ascii "instructions per cycle\0"
	.align 8
LC175:
	.ascii "sim_num_insn / sim_cycle\0"
	.align 8
LC176:
	.ascii "sim_CPI\0"
	.align 8
LC177:
	.ascii "cycles per instruction\0"
	.align 8
LC178:
	.ascii "sim_cycle / sim_num_insn\0"
	.align 8
LC179:
	.ascii "sim_exec_BW\0"
	.align 8
LC180:
	.ascii "total instructions (mis-spec + committed) per cycle\0"
	.align 8
LC181:
	.ascii "sim_total_insn / sim_cycle\0"
	.align 8
LC182:
	.ascii "sim_IPB\0"
	.align 8
LC183:
	.ascii "instruction per branch\0"
	.align 8
LC184:
	.ascii "sim_num_insn / sim_num_branches\0"
	.align 8
LC185:
	.ascii "sim_reg_stats\0"
	.align 8
LC186:
	.ascii "cannot locate any statistic named `%s'\0"
	.align 8
LC187:
	.ascii "`-pcstat' statistical variable `%s' is not an integral type\0"
	.align 8
LC188:
	.ascii "bad stat class\0"
	.align 8
LC189:
	.ascii "%s_by_pc\0"
	.align 8
LC190:
	.ascii "%s (by text address)\0"
	.align 8
LC191:
	.ascii "0x%lx %lu %.2f\0"
	.align 4
	.global _sim_reg_stats
	.proc	020
_sim_reg_stats:
	!#PROLOGUE# 0
	save %sp,-1144,%sp
	!#PROLOGUE# 1
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC144),%o1
	or %o1,%lo(LC144),%o1
	sethi %hi(LC145),%o2
	or %o2,%lo(LC145),%o2
	sethi %hi(_sim_num_insn),%o3
	mov 0,%o4
	mov 0,%o5
	call _stat_reg_llong,0
	or %o3,%lo(_sim_num_insn),%o3
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC146),%o1
	or %o1,%lo(LC146),%o1
	sethi %hi(LC147),%o2
	or %o2,%lo(LC147),%o2
	sethi %hi(_sim_num_refs),%o3
	mov 0,%o4
	mov 0,%o5
	call _stat_reg_llong,0
	or %o3,%lo(_sim_num_refs),%o3
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC148),%o1
	or %o1,%lo(LC148),%o1
	sethi %hi(LC149),%o2
	or %o2,%lo(LC149),%o2
	sethi %hi(_sim_num_loads),%o3
	mov 0,%o4
	mov 0,%o5
	call _stat_reg_llong,0
	or %o3,%lo(_sim_num_loads),%o3
	mov %i0,%o0
	sethi %hi(LC150),%o1
	or %o1,%lo(LC150),%o1
	sethi %hi(LC151),%o2
	or %o2,%lo(LC151),%o2
	sethi %hi(LC152),%o3
	or %o3,%lo(LC152),%o3
	call _stat_reg_formula,0
	mov 0,%o4
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC153),%o1
	or %o1,%lo(LC153),%o1
	sethi %hi(LC154),%o2
	or %o2,%lo(LC154),%o2
	sethi %hi(_sim_num_branches),%o3
	mov 0,%o4
	mov 0,%o5
	call _stat_reg_llong,0
	or %o3,%lo(_sim_num_branches),%o3
	mov %i0,%o0
	sethi %hi(LC155),%o1
	or %o1,%lo(LC155),%o1
	sethi %hi(LC156),%o2
	or %o2,%lo(LC156),%o2
	sethi %hi(_sim_elapsed_time),%o3
	or %o3,%lo(_sim_elapsed_time),%o3
	mov 0,%o4
	call _stat_reg_int,0
	mov 0,%o5
	mov %i0,%o0
	sethi %hi(LC157),%o1
	or %o1,%lo(LC157),%o1
	sethi %hi(LC158),%o2
	or %o2,%lo(LC158),%o2
	sethi %hi(LC159),%o3
	or %o3,%lo(LC159),%o3
	call _stat_reg_formula,0
	mov 0,%o4
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC160),%o1
	or %o1,%lo(LC160),%o1
	sethi %hi(LC161),%o2
	or %o2,%lo(LC161),%o2
	sethi %hi(_sim_total_insn),%o3
	mov 0,%o4
	mov 0,%o5
	call _stat_reg_llong,0
	or %o3,%lo(_sim_total_insn),%o3
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC162),%o1
	or %o1,%lo(LC162),%o1
	sethi %hi(LC163),%o2
	or %o2,%lo(LC163),%o2
	sethi %hi(_sim_total_refs),%o3
	mov 0,%o4
	mov 0,%o5
	call _stat_reg_llong,0
	or %o3,%lo(_sim_total_refs),%o3
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC164),%o1
	or %o1,%lo(LC164),%o1
	sethi %hi(LC165),%o2
	or %o2,%lo(LC165),%o2
	sethi %hi(_sim_total_loads),%o3
	mov 0,%o4
	mov 0,%o5
	call _stat_reg_llong,0
	or %o3,%lo(_sim_total_loads),%o3
	mov %i0,%o0
	sethi %hi(LC166),%o1
	or %o1,%lo(LC166),%o1
	sethi %hi(LC167),%o2
	or %o2,%lo(LC167),%o2
	sethi %hi(LC168),%o3
	or %o3,%lo(LC168),%o3
	call _stat_reg_formula,0
	mov 0,%o4
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC169),%o1
	or %o1,%lo(LC169),%o1
	sethi %hi(LC170),%o2
	or %o2,%lo(LC170),%o2
	sethi %hi(_sim_total_branches),%o3
	mov 0,%o4
	mov 0,%o5
	call _stat_reg_llong,0
	or %o3,%lo(_sim_total_branches),%o3
	st %g0,[%sp+92]
	mov %i0,%o0
	sethi %hi(LC171),%o1
	or %o1,%lo(LC171),%o1
	sethi %hi(LC172),%o2
	or %o2,%lo(LC172),%o2
	sethi %hi(_sim_cycle),%o3
	mov 0,%o4
	mov 0,%o5
	call _stat_reg_llong,0
	or %o3,%lo(_sim_cycle),%o3
	mov %i0,%o0
	sethi %hi(LC173),%o1
	or %o1,%lo(LC173),%o1
	sethi %hi(LC174),%o2
	or %o2,%lo(LC174),%o2
	sethi %hi(LC175),%o3
	or %o3,%lo(LC175),%o3
	call _stat_reg_formula,0
	mov 0,%o4
	mov %i0,%o0
	sethi %hi(LC176),%o1
	or %o1,%lo(LC176),%o1
	sethi %hi(LC177),%o2
	or %o2,%lo(LC177),%o2
	sethi %hi(LC178),%o3
	or %o3,%lo(LC178),%o3
	call _stat_reg_formula,0
	mov 0,%o4
	mov %i0,%o0
	sethi %hi(LC179),%o1
	or %o1,%lo(LC179),%o1
	sethi %hi(LC180),%o2
	or %o2,%lo(LC180),%o2
	sethi %hi(LC181),%o3
	or %o3,%lo(LC181),%o3
	call _stat_reg_formula,0
	mov 0,%o4
	mov %i0,%o0
	sethi %hi(LC182),%o1
	or %o1,%lo(LC182),%o1
	sethi %hi(LC183),%o2
	or %o2,%lo(LC183),%o2
	sethi %hi(LC184),%o3
	or %o3,%lo(LC184),%o3
	call _stat_reg_formula,0
	mov 0,%o4
	sethi %hi(_pred),%o0
	ld [%o0+%lo(_pred)],%o0
	cmp %o0,0
	be,a L143
	sethi %hi(_cache_il1),%o0
	call _bpred_reg_stats,0
	mov %i0,%o1
	sethi %hi(_cache_il1),%o0
L143:
	ld [%o0+%lo(_cache_il1)],%o1
	cmp %o1,0
	be L125
	sethi %hi(_cache_dl1),%o0
	ld [%o0+%lo(_cache_dl1)],%o0
	cmp %o1,%o0
	be L125
	sethi %hi(_cache_dl2),%o0
	ld [%o0+%lo(_cache_dl2)],%o0
	cmp %o1,%o0
	be L125
	mov %o1,%o0
	call _cache_reg_stats,0
	mov %i0,%o1
L125:
	sethi %hi(_cache_il2),%o0
	ld [%o0+%lo(_cache_il2)],%o1
	cmp %o1,0
	be L126
	sethi %hi(_cache_dl1),%o0
	ld [%o0+%lo(_cache_dl1)],%o0
	cmp %o1,%o0
	be L126
	sethi %hi(_cache_dl2),%o0
	ld [%o0+%lo(_cache_dl2)],%o0
	cmp %o1,%o0
	be L126
	mov %o1,%o0
	call _cache_reg_stats,0
	mov %i0,%o1
L126:
	sethi %hi(_cache_dl1),%o0
	ld [%o0+%lo(_cache_dl1)],%o0
	cmp %o0,0
	be,a L144
	sethi %hi(_cache_dl2),%o0
	call _cache_reg_stats,0
	mov %i0,%o1
	sethi %hi(_cache_dl2),%o0
L144:
	ld [%o0+%lo(_cache_dl2)],%o0
	cmp %o0,0
	be,a L145
	sethi %hi(_itlb),%o0
	call _cache_reg_stats,0
	mov %i0,%o1
	sethi %hi(_itlb),%o0
L145:
	ld [%o0+%lo(_itlb)],%o0
	cmp %o0,0
	be,a L146
	sethi %hi(_dtlb),%o0
	call _cache_reg_stats,0
	mov %i0,%o1
	sethi %hi(_dtlb),%o0
L146:
	ld [%o0+%lo(_dtlb)],%o0
	cmp %o0,0
	be L130
	mov 0,%l2
	call _cache_reg_stats,0
	mov %i0,%o1
L130:
	sethi %hi(_pcstat_nelt),%o0
	ld [%o0+%lo(_pcstat_nelt)],%o0
	cmp %l2,%o0
	bge L132
	sethi %hi(_pcstat_vars),%o0
	or %o0,%lo(_pcstat_vars),%l7
	sethi %hi(LC6),%l5
	sethi %hi(LC185),%l6
	sethi %hi(_pcstat_stats),%o0
	or %o0,%lo(_pcstat_stats),%i3
	sethi %hi(_pcstat_lastvals),%o0
	or %o0,%lo(_pcstat_lastvals),%i2
	add %fp,-528,%l4
	add %fp,-1040,%l3
	sethi %hi(_pcstat_sdists),%o0
	or %o0,%lo(_pcstat_sdists),%i1
	sll %l2,2,%l1
L148:
	mov %i0,%o0
	call _stat_find_stat,0
	ld [%l1+%l7],%o1
	orcc %o0,%g0,%l0
	bne,a L134
	ld [%l0+16],%o0
	or %l5,%lo(LC6),%o0
	or %l6,%lo(LC185),%o1
	mov 1154,%o2
	sethi %hi(LC186),%o3
	or %o3,%lo(LC186),%o3
	call __fatal,0
	ld [%l1+%l7],%o4
L134:
	cmp %o0,1
	bleu L135
	cmp %o0,2
	be L147
	sll %l2,2,%o0
	or %l5,%lo(LC6),%o0
	or %l6,%lo(LC185),%o1
	mov 1159,%o2
	sethi %hi(LC187),%o3
	or %o3,%lo(LC187),%o3
	call __fatal,0
	ld [%l0+4],%o4
L135:
	sll %l2,2,%o0
L147:
	st %l0,[%o0+%i3]
	ld [%l0+16],%o0
	cmp %o0,0
	bne L149
	sll %l2,3,%o1
	ld [%l0+24],%o0
	ld [%o0],%o0
	mov %o0,%o3
	b L137
	sra %o0,31,%o2
L149:
	cmp %o0,1
	bne L138
	cmp %o0,2
	ld [%l0+24],%o0
	ld [%o0],%o3
	b L137
	mov 0,%o2
L138:
	bne L140
	or %l5,%lo(LC6),%o0
	ld [%l0+24],%o0
	ldd [%o0],%o2
	b,a L137
L140:
	or %l6,%lo(LC185),%o1
	mov 1163,%o2
	sethi %hi(LC188),%o3
	call __panic,0
	or %o3,%lo(LC188),%o3
L137:
	std %o2,[%i2+%o1]
	mov %l4,%o0
	sethi %hi(LC189),%o1
	or %o1,%lo(LC189),%o1
	call _sprintf,0
	ld [%l0+4],%o2
	mov %l3,%o0
	sethi %hi(LC190),%o1
	or %o1,%lo(LC190),%o1
	call _sprintf,0
	ld [%l0+8],%o2
	st %g0,[%sp+92]
	mov %i0,%o0
	mov %l4,%o1
	mov %l3,%o2
	mov 0,%o3
	mov 3,%o4
	sethi %hi(LC191),%o5
	call _stat_reg_sdist,0
	or %o5,%lo(LC191),%o5
	sll %l2,2,%o1
	st %o0,[%o1+%i1]
	add %l2,1,%l2
	sethi %hi(_pcstat_nelt),%o0
	ld [%o0+%lo(_pcstat_nelt)],%o0
	cmp %l2,%o0
	bl L148
	sll %l2,2,%l1
L132:
	ret
	restore
	.align 8
LC192:
	.ascii "sim_init\0"
	.align 8
LC193:
	.ascii "bad pipetrace args, use: <fname|stdout|stderr> <range>\0"
	.align 8
LC194:
	.ascii "cannot do fast decoding, too many opcodes\0"
	.align 8
LC195:
	.ascii "fu-pool\0"
	.align 4
	.global _sim_init
	.proc	020
_sim_init:
	!#PROLOGUE# 0
	save %sp,-120,%sp
	!#PROLOGUE# 1
	sethi %hi(_sim_num_insn),%o0
	mov 0,%l0
	mov 0,%l1
	std %l0,[%o0+%lo(_sim_num_insn)]
	sethi %hi(_sim_num_refs),%o0
	std %l0,[%o0+%lo(_sim_num_refs)]
	sethi %hi(_ptrace_nelt),%o0
	ld [%o0+%lo(_ptrace_nelt)],%o0
	cmp %o0,2
	bne L151
	sethi %hi(_ptrace_nelt),%o0
	sethi %hi(_ptrace_opts),%o0
	or %o0,%lo(_ptrace_opts),%o1
	ld [%o0+%lo(_ptrace_opts)],%o0
	call _ptrace_open,0
	ld [%o1+4],%o1
	b L160
	sethi %hi(_ld_text_base),%o0
L151:
	ld [%o0+%lo(_ptrace_nelt)],%o0
	cmp %o0,0
	be L160
	sethi %hi(_ld_text_base),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC192),%o1
	or %o1,%lo(LC192),%o1
	mov 1226,%o2
	sethi %hi(LC193),%o3
	call __fatal,0
	or %o3,%lo(LC193),%o3
L160:
	mov %o0,%o1
	ld [%o0+%lo(_ld_text_base)],%o5
	sethi %hi(_ld_text_size),%o0
	mov %o0,%o2
	ld [%o0+%lo(_ld_text_size)],%o0
	add %o5,%o0,%o0
	cmp %o5,%o0
	bgeu L157
	ld [%o1+%lo(_ld_text_base)],%o1
	sethi %hi(32767),%o0
	or %o0,%lo(32767),%g4
	sethi %hi(_mem_table),%o0
	or %o0,%lo(_mem_table),%g2
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%g1
	sethi %hi(_ss_mask2op),%o0
	or %o0,%lo(_ss_mask2op),%o7
	ld [%o2+%lo(_ld_text_size)],%o0
	add %o1,%o0,%g3
L159:
	srl %o5,16,%o3
	and %o3,%g4,%o3
	sll %o3,2,%o3
	and %o5,%g1,%o4
	ld [%o3+%g2],%o1
	ld [%o1+%o4],%o0
	st %o0,[%fp-24]
	add %o1,%o4,%o1
	ld [%o1+4],%o1
	st %o1,[%fp-20]
	and %o0,-256,%o2
	and %o0,255,%o0
	sll %o0,2,%o0
	ld [%o0+%o7],%o0
	or %o2,%o0,%o2
	st %o2,[%fp-24]
	ld [%o3+%g2],%o1
	st %o2,[%o1+%o4]
	add %o1,%o4,%o1
	ld [%fp-20],%o0
	add %o5,8,%o5
	cmp %o5,%g3
	blu L159
	st %o0,[%o1+4]
L157:
	sethi %hi(LC195),%o0
	or %o0,%lo(LC195),%o0
	sethi %hi(_fu_config),%o1
	or %o1,%lo(_fu_config),%o1
	call _res_create_pool,0
	mov 5,%o2
	sethi %hi(_fu_pool),%o1
	st %o0,[%o1+%lo(_fu_pool)]
	call _rslink_init,0
	mov 2048,%o0
	call _tracer_init,0
	nop
	call _fetch_init,0
	nop
	call _cv_init,0
	nop
	call _eventq_init,0
	nop
	call _readyq_init,0
	nop
	call _ruu_init,0
	nop
	call _lsq_init,0
	nop
	sethi %hi(_simoo_reg_obj),%o0
	or %o0,%lo(_simoo_reg_obj),%o0
	sethi %hi(_simoo_mem_obj),%o1
	or %o1,%lo(_simoo_mem_obj),%o1
	sethi %hi(_simoo_mstate_obj),%o2
	call _dlite_init,0
	or %o2,%lo(_simoo_mstate_obj),%o2
	ret
	restore
	.align 4
	.global _sim_aux_stats
	.proc	020
_sim_aux_stats:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	ret
	restore
	.align 4
	.global _sim_uninit
	.proc	020
_sim_uninit:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_ptrace_nelt),%o0
	ld [%o0+%lo(_ptrace_nelt)],%o0
	cmp %o0,0
	ble L163
	nop
	call _ptrace_close,0
	nop
L163:
	ret
	restore
	.align 8
LC196:
	.ascii "ruu_init\0"
	.align 8
LC197:
	.ascii "out of virtual memory\0"
	.align 4
	.proc	020
_ruu_init:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_RUU),%l0
	sethi %hi(_RUU_size),%o0
	ld [%o0+%lo(_RUU_size)],%o0
	call _calloc,0
	mov 96,%o1
	cmp %o0,0
	bne L165
	st %o0,[%l0+%lo(_RUU)]
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC196),%o1
	or %o1,%lo(LC196),%o1
	mov 1362,%o2
	sethi %hi(LC197),%o3
	call __fatal,0
	or %o3,%lo(LC197),%o3
L165:
	sethi %hi(_RUU_num),%o0
	st %g0,[%o0+%lo(_RUU_num)]
	sethi %hi(_RUU_tail),%o0
	st %g0,[%o0+%lo(_RUU_tail)]
	sethi %hi(_RUU_head),%o0
	st %g0,[%o0+%lo(_RUU_head)]
	ret
	restore
	.align 8
LC198:
	.ascii "idx: %2d: opcode: %s, inst: `\0"
	.align 8
LC199:
	.ascii "       opcode: %s, inst: `\0"
	.align 8
LC200:
	.ascii "'\12\0"
	.align 8
LC201:
	.ascii "         PC: 0x%08x, NPC: 0x%08x (pred_PC: 0x%08x)\12\0"
	.align 8
LC202:
	.ascii "         in_LSQ: %s, ea_comp: %s, recover_inst: %s\12\0"
	.align 8
LC203:
	.ascii "t\0"
	.align 8
LC204:
	.ascii "f\0"
	.align 8
LC205:
	.ascii "         spec_mode: %s, addr: 0x%08x, tag: 0x%08x\12\0"
	.align 8
LC206:
	.ascii "         seq: 0x%08x, ptrace_seq: 0x%08x\12\0"
	.align 8
LC207:
	.ascii "         queued: %s, issued: %s, completed: %s\12\0"
	.align 8
LC208:
	.ascii "         operands ready: %s\12\0"
	.align 4
	.proc	020
_ruu_dumpent:
	!#PROLOGUE# 0
	save %sp,-120,%sp
	!#PROLOGUE# 1
	cmp %i3,0
	be L167
	mov %i1,%o2
	ld [%i0+8],%o4
	sethi %hi(_ss_op2name),%o3
	or %o3,%lo(_ss_op2name),%o3
	sll %o4,2,%o4
	mov %i2,%o0
	sethi %hi(LC198),%o1
	or %o1,%lo(LC198),%o1
	call _fprintf,0
	ld [%o4+%o3],%o3
	b L185
	ld [%i0],%o0
L167:
	ld [%i0+8],%o3
	sethi %hi(_ss_op2name),%o2
	or %o2,%lo(_ss_op2name),%o2
	sll %o3,2,%o3
	mov %i2,%o0
	sethi %hi(LC199),%o1
	or %o1,%lo(LC199),%o1
	call _fprintf,0
	ld [%o3+%o2],%o2
	ld [%i0],%o0
L185:
	st %o0,[%fp-24]
	ld [%i0+4],%o0
	st %o0,[%fp-20]
	add %fp,-24,%o0
	ld [%i0+12],%o1
	call _ss_print_insn,0
	mov %i2,%o2
	mov %i2,%o0
	sethi %hi(LC200),%o1
	call _fprintf,0
	or %o1,%lo(LC200),%o1
	mov %i2,%o0
	sethi %hi(LC201),%o1
	or %o1,%lo(LC201),%o1
	ld [%i0+12],%o2
	ld [%i0+16],%o3
	call _fprintf,0
	ld [%i0+20],%o4
	ld [%i0+24],%o0
	cmp %o0,0
	be L169
	sethi %hi(LC203),%o0
	b L170
	or %o0,%lo(LC203),%o2
L169:
	sethi %hi(LC204),%o0
	or %o0,%lo(LC204),%o2
L170:
	ld [%i0+28],%o0
	cmp %o0,0
	be L171
	sethi %hi(LC203),%o0
	b L172
	or %o0,%lo(LC203),%o3
L171:
	sethi %hi(LC204),%o0
	or %o0,%lo(LC204),%o3
L172:
	ld [%i0+32],%o0
	cmp %o0,0
	be L173
	sethi %hi(LC203),%o0
	b L174
	or %o0,%lo(LC203),%o4
L173:
	sethi %hi(LC204),%o0
	or %o0,%lo(LC204),%o4
L174:
	mov %i2,%o0
	sethi %hi(LC202),%o1
	call _fprintf,0
	or %o1,%lo(LC202),%o1
	ld [%i0+36],%o0
	cmp %o0,0
	be L175
	sethi %hi(LC203),%o0
	b L176
	or %o0,%lo(LC203),%o2
L175:
	sethi %hi(LC204),%o0
	or %o0,%lo(LC204),%o2
L176:
	mov %i2,%o0
	sethi %hi(LC205),%o1
	or %o1,%lo(LC205),%o1
	ld [%i0+40],%o3
	call _fprintf,0
	ld [%i0+44],%o4
	mov %i2,%o0
	sethi %hi(LC206),%o1
	or %o1,%lo(LC206),%o1
	ld [%i0+48],%o2
	call _fprintf,0
	ld [%i0+52],%o3
	ld [%i0+56],%o0
	cmp %o0,0
	be L177
	sethi %hi(LC203),%o0
	b L178
	or %o0,%lo(LC203),%o2
L177:
	sethi %hi(LC204),%o0
	or %o0,%lo(LC204),%o2
L178:
	ld [%i0+60],%o0
	cmp %o0,0
	be L179
	sethi %hi(LC203),%o0
	b L180
	or %o0,%lo(LC203),%o3
L179:
	sethi %hi(LC204),%o0
	or %o0,%lo(LC204),%o3
L180:
	ld [%i0+64],%o0
	cmp %o0,0
	be L181
	sethi %hi(LC203),%o0
	b L182
	or %o0,%lo(LC203),%o4
L181:
	sethi %hi(LC204),%o0
	or %o0,%lo(LC204),%o4
L182:
	mov %i2,%o0
	sethi %hi(LC207),%o1
	call _fprintf,0
	or %o1,%lo(LC207),%o1
	ld [%i0+84],%o0
	cmp %o0,0
	be L186
	sethi %hi(LC204),%o0
	ld [%i0+88],%o0
	cmp %o0,0
	be L186
	sethi %hi(LC204),%o0
	ld [%i0+92],%o0
	cmp %o0,0
	be L186
	sethi %hi(LC204),%o0
	sethi %hi(LC203),%o0
	b L184
	or %o0,%lo(LC203),%o2
L186:
	or %o0,%lo(LC204),%o2
L184:
	mov %i2,%o0
	sethi %hi(LC208),%o1
	call _fprintf,0
	or %o1,%lo(LC208),%o1
	ret
	restore
	.align 8
LC209:
	.ascii "** RUU state **\12\0"
	.align 8
LC210:
	.ascii "RUU_head: %d, RUU_tail: %d\12\0"
	.align 8
LC211:
	.ascii "RUU_num: %d\12\0"
	.align 4
	.proc	020
_ruu_dump:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov %i0,%o0
	sethi %hi(LC209),%o1
	call _fprintf,0
	or %o1,%lo(LC209),%o1
	sethi %hi(_RUU_head),%l1
	sethi %hi(_RUU_tail),%o3
	mov %i0,%o0
	sethi %hi(LC210),%o1
	or %o1,%lo(LC210),%o1
	ld [%l1+%lo(_RUU_head)],%o2
	call _fprintf,0
	ld [%o3+%lo(_RUU_tail)],%o3
	sethi %hi(_RUU_num),%l0
	mov %i0,%o0
	sethi %hi(LC211),%o1
	or %o1,%lo(LC211),%o1
	call _fprintf,0
	ld [%l0+%lo(_RUU_num)],%o2
	ld [%l0+%lo(_RUU_num)],%l2
	cmp %l2,0
	be L189
	ld [%l1+%lo(_RUU_head)],%l1
	sethi %hi(_RUU),%l4
	sethi %hi(_RUU_size),%l3
L190:
	sll %l1,1,%l0
	add %l0,%l1,%l0
	sll %l0,5,%l0
	ld [%l4+%lo(_RUU)],%o0
	add %l0,%o0,%l0
	sub %l0,%o0,%o0
	call .div,0
	mov 96,%o1
	mov %o0,%o1
	mov %l0,%o0
	mov %i0,%o2
	call _ruu_dumpent,0
	mov 1,%o3
	add %l1,1,%o0
	call .rem,0
	ld [%l3+%lo(_RUU_size)],%o1
	addcc %l2,-1,%l2
	bne L190
	mov %o0,%l1
L189:
	ret
	restore
	.align 8
LC212:
	.ascii "lsq_init\0"
	.align 4
	.proc	020
_lsq_init:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_LSQ),%l0
	sethi %hi(_LSQ_size),%o0
	ld [%o0+%lo(_LSQ_size)],%o0
	call _calloc,0
	mov 96,%o1
	cmp %o0,0
	bne L192
	st %o0,[%l0+%lo(_LSQ)]
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC212),%o1
	or %o1,%lo(LC212),%o1
	mov 1472,%o2
	sethi %hi(LC197),%o3
	call __fatal,0
	or %o3,%lo(LC197),%o3
L192:
	sethi %hi(_LSQ_num),%o0
	st %g0,[%o0+%lo(_LSQ_num)]
	sethi %hi(_LSQ_tail),%o0
	st %g0,[%o0+%lo(_LSQ_tail)]
	sethi %hi(_LSQ_head),%o0
	st %g0,[%o0+%lo(_LSQ_head)]
	ret
	restore
	.align 8
LC213:
	.ascii "** LSQ state **\12\0"
	.align 8
LC214:
	.ascii "LSQ_head: %d, LSQ_tail: %d\12\0"
	.align 8
LC215:
	.ascii "LSQ_num: %d\12\0"
	.align 4
	.proc	020
_lsq_dump:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov %i0,%o0
	sethi %hi(LC213),%o1
	call _fprintf,0
	or %o1,%lo(LC213),%o1
	sethi %hi(_LSQ_head),%l1
	sethi %hi(_LSQ_tail),%o3
	mov %i0,%o0
	sethi %hi(LC214),%o1
	or %o1,%lo(LC214),%o1
	ld [%l1+%lo(_LSQ_head)],%o2
	call _fprintf,0
	ld [%o3+%lo(_LSQ_tail)],%o3
	sethi %hi(_LSQ_num),%l0
	mov %i0,%o0
	sethi %hi(LC215),%o1
	or %o1,%lo(LC215),%o1
	call _fprintf,0
	ld [%l0+%lo(_LSQ_num)],%o2
	ld [%l0+%lo(_LSQ_num)],%l2
	cmp %l2,0
	be L195
	ld [%l1+%lo(_LSQ_head)],%l1
	sethi %hi(_LSQ),%l4
	sethi %hi(_LSQ_size),%l3
L196:
	sll %l1,1,%l0
	add %l0,%l1,%l0
	sll %l0,5,%l0
	ld [%l4+%lo(_LSQ)],%o0
	add %l0,%o0,%l0
	sub %l0,%o0,%o0
	call .div,0
	mov 96,%o1
	mov %o0,%o1
	mov %l0,%o0
	mov %i0,%o2
	call _ruu_dumpent,0
	mov 1,%o3
	add %l1,1,%o0
	call .rem,0
	ld [%l3+%lo(_LSQ_size)],%o1
	addcc %l2,-1,%l2
	bne L196
	mov %o0,%l1
L195:
	ret
	restore
.data
	.align 8
_RSLINK_NULL:
	.word	0
	.word	0
	.word	0
	.skip 12
.text
	.align 8
LC216:
	.ascii "rslink_init\0"
	.align 4
	.proc	020
_rslink_init:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_rslink_free_list),%o0
	mov 0,%l0
	cmp %l0,%i0
	bge L199
	st %g0,[%o0+%lo(_rslink_free_list)]
	sethi %hi(LC6),%l2
	sethi %hi(LC216),%l3
	sethi %hi(LC197),%l4
	sethi %hi(_rslink_free_list),%l1
L202:
	mov 1,%o0
	call _calloc,0
	mov 24,%o1
	orcc %o0,%g0,%o1
	bne L201
	ld [%l1+%lo(_rslink_free_list)],%o0
	or %l2,%lo(LC6),%o0
	or %l3,%lo(LC216),%o1
	mov 1587,%o2
	call __fatal,0
	or %l4,%lo(LC197),%o3
L201:
	st %o0,[%o1]
	add %l0,1,%l0
	cmp %l0,%i0
	bl L202
	st %o1,[%l1+%lo(_rslink_free_list)]
L199:
	ret
	restore
	.align 4
	.proc	020
_ruu_release_fu:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov 0,%i0
	sethi %hi(_fu_pool),%g2
	ld [%g2+%lo(_fu_pool)],%g2
	ld [%g2+4],%g2
	cmp %i0,%g2
	bge L205
	sethi %hi(_fu_pool),%g2
	ld [%g2+%lo(_fu_pool)],%i1
	ld [%i1+8],%g3
L209:
	sll %i0,4,%g2
	add %g2,%i0,%g2
	sll %g2,2,%g2
	sub %g2,%i0,%g2
	sll %g2,2,%g2
	add %g3,%g2,%g3
	ld [%g3+8],%g2
	cmp %g2,0
	ble L206
	add %i0,1,%i0
	add %g2,-1,%g2
	st %g2,[%g3+8]
L206:
	sethi %hi(_fu_pool),%g2
	ld [%g2+%lo(_fu_pool)],%g2
	ld [%g2+4],%g2
	cmp %i0,%g2
	bl,a L209
	ld [%i1+8],%g3
L205:
	ret
	restore
	.align 4
	.proc	020
_eventq_init:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_event_queue),%g2
	st %g0,[%g2+%lo(_event_queue)]
	ret
	restore
	.align 8
LC217:
	.ascii "** event queue state **\12\0"
	.align 8
LC218:
	.ascii "idx: %2d: @ %.0f\12\0"
	.align 4
	.proc	020
_eventq_dump:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov %i0,%o0
	sethi %hi(LC217),%o1
	call _fprintf,0
	or %o1,%lo(LC217),%o1
	sethi %hi(_event_queue),%o0
	ld [%o0+%lo(_event_queue)],%l2
	cmp %l2,0
	be L213
	sethi %hi(_LSQ),%l4
	sethi %hi(_RUU),%l3
	ld [%l2+4],%o2
L224:
	ld [%l2+8],%o1
	ld [%o2+44],%o0
	cmp %o1,%o0
	bne,a L223
	ld [%l2],%l2
	mov %o2,%l0
	ld [%l0+24],%o0
	cmp %o0,0
	bne L221
	ld [%l4+%lo(_LSQ)],%o0
	ld [%l3+%lo(_RUU)],%o0
L221:
	sub %l0,%o0,%o0
	call .div,0
	mov 96,%o1
	mov %o0,%l1
	ldd [%l2+16],%o0
	call ___floatdidf,0
	nop
	mov %i0,%o0
	sethi %hi(LC218),%o1
	or %o1,%lo(LC218),%o1
	std %f0,[%fp-16]
	ld [%fp-16],%o3
	ld [%fp-12],%o4
	call _fprintf,0
	mov %l1,%o2
	ld [%l0+24],%o0
	cmp %o0,0
	bne L222
	ld [%l4+%lo(_LSQ)],%o0
	ld [%l3+%lo(_RUU)],%o0
L222:
	sub %l0,%o0,%o0
	call .div,0
	mov 96,%o1
	mov %o0,%o1
	mov %l0,%o0
	mov %i0,%o2
	call _ruu_dumpent,0
	mov 0,%o3
	ld [%l2],%l2
L223:
	cmp %l2,0
	bne,a L224
	ld [%l2+4],%o2
L213:
	ret
	restore
	.align 8
LC219:
	.ascii "eventq_queue_event\0"
	.align 8
LC220:
	.ascii "event completed\0"
	.align 8
LC221:
	.ascii "event occurred in the past\0"
	.align 8
LC222:
	.ascii "out of rs links\0"
	.align 4
	.proc	020
_eventq_queue_event:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov %i1,%o4
	mov %i2,%o5
	ld [%i0+64],%o0
	cmp %o0,0
	be L226
	sethi %hi(_sim_cycle),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC219),%o1
	or %o1,%lo(LC219),%o1
	mov 1662,%o2
	sethi %hi(LC220),%o3
	call __panic,0
	or %o3,%lo(LC220),%o3
L226:
	or %o0,%lo(_sim_cycle),%o1
	ld [%o0+%lo(_sim_cycle)],%o0
	cmp %o4,%o0
	bg,a L238
	sethi %hi(_rslink_free_list),%o0
	cmp %o4,%o0
	bne L228
	mov 1665,%o2
	ld [%o1+4],%o0
	cmp %o5,%o0
	bgu L238
	sethi %hi(_rslink_free_list),%o0
L228:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC219),%o1
	or %o1,%lo(LC219),%o1
	sethi %hi(LC221),%o3
	call __panic,0
	or %o3,%lo(LC221),%o3
L238:
	ld [%o0+%lo(_rslink_free_list)],%o0
	cmp %o0,0
	bne L229
	sethi %hi(_rslink_free_list),%o2
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC219),%o1
	or %o1,%lo(LC219),%o1
	mov 1668,%o2
	sethi %hi(LC222),%o3
	call __panic,0
	or %o3,%lo(LC222),%o3
L229:
	ld [%o2+%lo(_rslink_free_list)],%o1
	ld [%o1],%o0
	st %o0,[%o2+%lo(_rslink_free_list)]
	st %g0,[%o1]
	st %i0,[%o1+4]
	ld [%i0+44],%o0
	st %o0,[%o1+8]
	mov %o1,%o3
	std %o4,[%o3+16]
	mov 0,%o2
	sethi %hi(_event_queue),%o0
	b L237
	ld [%o0+%lo(_event_queue)],%o1
L240:
	ld [%o2],%o1
L237:
	cmp %o1,0
	be L239
	cmp %o2,0
	ld [%o1+16],%o0
	cmp %o4,%o0
	bg,a L240
	mov %o1,%o2
	cmp %o4,%o0
	bne L239
	cmp %o2,0
	ld [%o1+20],%o0
	cmp %o5,%o0
	bgu,a L240
	mov %o1,%o2
	cmp %o2,0
L239:
	be L235
	sethi %hi(_event_queue),%o1
	ld [%o2],%o0
	st %o0,[%o3]
	b L236
	st %o3,[%o2]
L235:
	ld [%o1+%lo(_event_queue)],%o0
	st %o0,[%o3]
	st %o3,[%o1+%lo(_event_queue)]
L236:
	ret
	restore
	.align 4
	.proc	0110
_eventq_next_event:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
L246:
	sethi %hi(_event_queue),%g2
	ld [%g2+%lo(_event_queue)],%g3
	cmp %g3,0
	be L242
	sethi %hi(_sim_cycle),%g2
	or %g2,%lo(_sim_cycle),%i1
	ld [%g3+16],%i0
	ld [%g2+%lo(_sim_cycle)],%g2
	cmp %i0,%g2
	bg,a L248
	mov 0,%i0
	cmp %i0,%g2
	bne,a L249
	sethi %hi(_event_queue),%g3
	ld [%g3+20],%g3
	ld [%i1+4],%g2
	cmp %g3,%g2
	bgu L242
	sethi %hi(_event_queue),%g3
L249:
	ld [%g3+%lo(_event_queue)],%i1
	ld [%i1],%g2
	st %g2,[%g3+%lo(_event_queue)]
	ld [%i1+4],%i0
	ld [%i1+8],%g3
	ld [%i0+44],%g2
	cmp %g3,%g2
	bne,a L244
	st %g0,[%i1+4]
	st %g0,[%i1+4]
	st %g0,[%i1+8]
	sethi %hi(_rslink_free_list),%g3
	ld [%g3+%lo(_rslink_free_list)],%g2
	st %g2,[%i1]
	b L248
	st %i1,[%g3+%lo(_rslink_free_list)]
L244:
	st %g0,[%i1+8]
	sethi %hi(_rslink_free_list),%g3
	ld [%g3+%lo(_rslink_free_list)],%g2
	st %g2,[%i1]
	b L246
	st %i1,[%g3+%lo(_rslink_free_list)]
L242:
	mov 0,%i0
L248:
	ret
	restore
	.align 4
	.proc	020
_readyq_init:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_ready_queue),%g2
	st %g0,[%g2+%lo(_ready_queue)]
	ret
	restore
	.align 8
LC223:
	.ascii "** ready queue state **\12\0"
	.align 4
	.proc	020
_readyq_dump:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov %i0,%o0
	sethi %hi(LC223),%o1
	call _fprintf,0
	or %o1,%lo(LC223),%o1
	sethi %hi(_ready_queue),%o0
	ld [%o0+%lo(_ready_queue)],%l1
	cmp %l1,0
	be L253
	sethi %hi(_LSQ),%l3
	sethi %hi(_RUU),%l2
	ld [%l1+4],%o2
L261:
	ld [%l1+8],%o1
	ld [%o2+44],%o0
	cmp %o1,%o0
	bne,a L260
	ld [%l1],%l1
	mov %o2,%l0
	ld [%l0+24],%o0
	cmp %o0,0
	bne L259
	ld [%l3+%lo(_LSQ)],%o0
	ld [%l2+%lo(_RUU)],%o0
L259:
	sub %l0,%o0,%o0
	call .div,0
	mov 96,%o1
	mov %o0,%o1
	mov %l0,%o0
	mov %i0,%o2
	call _ruu_dumpent,0
	mov 1,%o3
	ld [%l1],%l1
L260:
	cmp %l1,0
	bne,a L261
	ld [%l1+4],%o2
L253:
	ret
	restore
	.align 8
LC224:
	.ascii "readyq_enqueue\0"
	.align 8
LC225:
	.ascii "node is already queued\0"
	.align 4
	.proc	020
_readyq_enqueue:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	ld [%i0+56],%o0
	cmp %o0,0
	be L263
	mov 1,%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC224),%o1
	or %o1,%lo(LC224),%o1
	mov 1794,%o2
	sethi %hi(LC225),%o3
	call __panic,0
	or %o3,%lo(LC225),%o3
L263:
	st %o0,[%i0+56]
	sethi %hi(_rslink_free_list),%o0
	ld [%o0+%lo(_rslink_free_list)],%o0
	cmp %o0,0
	bne L264
	sethi %hi(_rslink_free_list),%o2
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC224),%o1
	or %o1,%lo(LC224),%o1
	mov 1798,%o2
	sethi %hi(LC222),%o3
	call __panic,0
	or %o3,%lo(LC222),%o3
L264:
	ld [%o2+%lo(_rslink_free_list)],%o1
	ld [%o1],%o0
	st %o0,[%o2+%lo(_rslink_free_list)]
	st %g0,[%o1]
	st %i0,[%o1+4]
	ld [%i0+44],%o0
	st %o0,[%o1+8]
	mov %o1,%o4
	ld [%i0+48],%o0
	st %o0,[%o4+16]
	ld [%i0+24],%o0
	cmp %o0,0
	bne L266
	mov 0,%o3
	ld [%i0+8],%o1
	sethi %hi(_ss_op2flags),%o0
	or %o0,%lo(_ss_op2flags),%o0
	sll %o1,2,%o1
	ld [%o1+%o0],%o1
	sethi %hi(4100),%o0
	or %o0,%lo(4100),%o0
	andcc %o1,%o0,%g0
	be L265
	sethi %hi(_ready_queue),%o0
L266:
	b L275
	cmp %o3,0
L265:
	b L274
	ld [%o0+%lo(_ready_queue)],%o2
L270:
	ld [%o3],%o2
L274:
	cmp %o2,0
	be L275
	cmp %o3,0
	ld [%o2+16],%o1
	ld [%i0+48],%o0
	cmp %o1,%o0
	blu,a L270
	mov %o2,%o3
	cmp %o3,0
L275:
	be L272
	sethi %hi(_ready_queue),%o1
	ld [%o3],%o0
	st %o0,[%o4]
	b L273
	st %o4,[%o3]
L272:
	ld [%o1+%lo(_ready_queue)],%o0
	st %o0,[%o4]
	st %o4,[%o1+%lo(_ready_queue)]
L273:
	ret
	restore
.data
	.align 4
_CVLINK_NULL:
	.word	0
	.word	0
.text
	.align 4
	.proc	020
_cv_init:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov 0,%i1
	sethi %hi(_create_vector),%g2
	or %g2,%lo(_create_vector),%i5
	sethi %hi(_CVLINK_NULL),%i4
	sethi %hi(_CVLINK_NULL),%g2
	or %g2,%lo(_CVLINK_NULL),%i3
	sethi %hi(_create_vector_rt),%g2
	or %g2,%lo(_create_vector_rt),%g4
	sethi %hi(_spec_create_vector),%g2
	or %g2,%lo(_spec_create_vector),%i2
	sethi %hi(_spec_create_vector_rt),%g2
	or %g2,%lo(_spec_create_vector_rt),%g1
	sll %i1,3,%i0
L285:
	ld [%i4+%lo(_CVLINK_NULL)],%g2
	st %g2,[%i0+%i5]
	add %i0,%i5,%g3
	ld [%i3+4],%g2
	st %g2,[%g3+4]
	mov 0,%o0
	mov 0,%o1
	std %o0,[%i0+%g4]
	ld [%i4+%lo(_CVLINK_NULL)],%g2
	st %g2,[%i0+%i2]
	add %i0,%i2,%g3
	ld [%i3+4],%g2
	st %g2,[%g3+4]
	std %o0,[%i0+%g1]
	add %i1,1,%i1
	cmp %i1,69
	ble L285
	sll %i1,3,%i0
	mov 0,%g3
	sethi %hi(_use_spec_cv),%g2
	or %g2,%lo(_use_spec_cv),%i0
L284:
	sll %g3,2,%g2
	add %g3,1,%g3
	cmp %g3,2
	ble L284
	st %g0,[%g2+%i0]
	ret
	restore
.data
	.align 4
_dep_names:
	.word	LC226
	.word	LC227
	.word	LC228
	.word	LC229
	.word	LC230
	.word	LC231
	.word	LC232
	.word	LC233
	.word	LC234
	.word	LC235
	.word	LC236
	.word	LC237
	.word	LC238
	.word	LC239
	.word	LC240
	.word	LC241
	.word	LC242
	.word	LC243
	.word	LC244
	.word	LC245
	.word	LC246
	.word	LC247
	.word	LC248
	.word	LC249
	.word	LC250
	.word	LC251
	.word	LC252
	.word	LC253
	.word	LC254
	.word	LC255
	.word	LC256
	.word	LC257
	.word	LC258
	.word	LC259
	.word	LC260
	.word	LC261
	.word	LC262
	.word	LC263
	.word	LC264
	.word	LC265
	.word	LC266
	.word	LC267
	.word	LC268
	.word	LC269
	.word	LC270
	.word	LC271
	.word	LC272
	.word	LC273
	.word	LC274
	.word	LC275
	.word	LC276
	.word	LC277
	.word	LC278
	.word	LC279
	.word	LC280
	.word	LC281
	.word	LC282
	.word	LC283
	.word	LC284
	.word	LC285
	.word	LC286
	.word	LC287
	.word	LC288
	.word	LC289
	.word	LC290
	.word	LC291
	.word	LC292
	.word	LC293
	.word	LC226
	.word	LC226
.text
	.align 8
LC293:
	.ascii "$tmp\0"
	.align 8
LC292:
	.ascii "$fcc\0"
	.align 8
LC291:
	.ascii "$lo\0"
	.align 8
LC290:
	.ascii "$hi\0"
	.align 8
LC289:
	.ascii "$f31\0"
	.align 8
LC288:
	.ascii "$f30\0"
	.align 8
LC287:
	.ascii "$f29\0"
	.align 8
LC286:
	.ascii "$f28\0"
	.align 8
LC285:
	.ascii "$f27\0"
	.align 8
LC284:
	.ascii "$f26\0"
	.align 8
LC283:
	.ascii "$f25\0"
	.align 8
LC282:
	.ascii "$f24\0"
	.align 8
LC281:
	.ascii "$f23\0"
	.align 8
LC280:
	.ascii "$f22\0"
	.align 8
LC279:
	.ascii "$f21\0"
	.align 8
LC278:
	.ascii "$f20\0"
	.align 8
LC277:
	.ascii "$f19\0"
	.align 8
LC276:
	.ascii "$f18\0"
	.align 8
LC275:
	.ascii "$f17\0"
	.align 8
LC274:
	.ascii "$f16\0"
	.align 8
LC273:
	.ascii "$f15\0"
	.align 8
LC272:
	.ascii "$f14\0"
	.align 8
LC271:
	.ascii "$f13\0"
	.align 8
LC270:
	.ascii "$f12\0"
	.align 8
LC269:
	.ascii "$f11\0"
	.align 8
LC268:
	.ascii "$f10\0"
	.align 8
LC267:
	.ascii "$f9\0"
	.align 8
LC266:
	.ascii "$f8\0"
	.align 8
LC265:
	.ascii "$f7\0"
	.align 8
LC264:
	.ascii "$f6\0"
	.align 8
LC263:
	.ascii "$f5\0"
	.align 8
LC262:
	.ascii "$f4\0"
	.align 8
LC261:
	.ascii "$f3\0"
	.align 8
LC260:
	.ascii "$f2\0"
	.align 8
LC259:
	.ascii "$f1\0"
	.align 8
LC258:
	.ascii "$f0\0"
	.align 8
LC257:
	.ascii "$r31\0"
	.align 8
LC256:
	.ascii "$r30\0"
	.align 8
LC255:
	.ascii "$r29\0"
	.align 8
LC254:
	.ascii "$r28\0"
	.align 8
LC253:
	.ascii "$r27\0"
	.align 8
LC252:
	.ascii "$r26\0"
	.align 8
LC251:
	.ascii "$r25\0"
	.align 8
LC250:
	.ascii "$r24\0"
	.align 8
LC249:
	.ascii "$r23\0"
	.align 8
LC248:
	.ascii "$r22\0"
	.align 8
LC247:
	.ascii "$r21\0"
	.align 8
LC246:
	.ascii "$r20\0"
	.align 8
LC245:
	.ascii "$r19\0"
	.align 8
LC244:
	.ascii "$r18\0"
	.align 8
LC243:
	.ascii "$r17\0"
	.align 8
LC242:
	.ascii "$r16\0"
	.align 8
LC241:
	.ascii "$r15\0"
	.align 8
LC240:
	.ascii "$r14\0"
	.align 8
LC239:
	.ascii "$r13\0"
	.align 8
LC238:
	.ascii "$r12\0"
	.align 8
LC237:
	.ascii "$r11\0"
	.align 8
LC236:
	.ascii "$r10\0"
	.align 8
LC235:
	.ascii "$r9\0"
	.align 8
LC234:
	.ascii "$r8\0"
	.align 8
LC233:
	.ascii "$r7\0"
	.align 8
LC232:
	.ascii "$r6\0"
	.align 8
LC231:
	.ascii "$r5\0"
	.align 8
LC230:
	.ascii "$r4\0"
	.align 8
LC229:
	.ascii "$r3\0"
	.align 8
LC228:
	.ascii "$r2\0"
	.align 8
LC227:
	.ascii "$r1\0"
	.align 8
LC226:
	.ascii "n/a\0"
	.align 8
LC294:
	.ascii "** create vector state **\12\0"
	.align 8
LC295:
	.ascii "[%4s]: from architected reg file\12\0"
	.align 8
LC296:
	.ascii "[%4s]: from %s, idx: %d\12\0"
	.align 8
LC297:
	.ascii "LSQ\0"
	.align 8
LC298:
	.ascii "RUU\0"
	.align 4
	.proc	020
_cv_dump:
	!#PROLOGUE# 0
	save %sp,-120,%sp
	!#PROLOGUE# 1
	mov %i0,%o0
	sethi %hi(LC294),%o1
	call _fprintf,0
	or %o1,%lo(LC294),%o1
	mov 0,%l0
	sethi %hi(_use_spec_cv),%o0
	or %o0,%lo(_use_spec_cv),%l6
	sethi %hi(_spec_create_vector),%o0
	or %o0,%lo(_spec_create_vector),%l5
	sethi %hi(_create_vector),%o0
	or %o0,%lo(_create_vector),%l4
	sethi %hi(_dep_names),%o0
	or %o0,%lo(_dep_names),%l3
	cmp %l0,0
L304:
	bge L292
	mov %l0,%o0
	add %l0,31,%o0
L292:
	sra %o0,5,%o0
	sll %o0,2,%o2
	cmp %l0,0
	bge L293
	mov %l0,%o0
	add %l0,31,%o0
L293:
	and %o0,-32,%o0
	sub %l0,%o0,%o0
	mov 1,%o1
	sll %o1,%o0,%o1
	ld [%l6+%o2],%o0
	andcc %o1,%o0,%g0
	be L290
	sll %l0,3,%o0
	ld [%o0+%l5],%o1
	st %o1,[%fp-24]
	b L301
	add %o0,%l5,%o0
L290:
	ld [%o0+%l4],%o1
	st %o1,[%fp-24]
	add %o0,%l4,%o0
L301:
	ld [%o0+4],%o0
	st %o0,[%fp-20]
	ld [%fp-24],%o0
	cmp %o0,0
	bne,a L294
	ld [%o0+24],%o0
	sll %l0,2,%o2
	mov %i0,%o0
	sethi %hi(LC295),%o1
	or %o1,%lo(LC295),%o1
	call _fprintf,0
	ld [%o2+%l3],%o2
	b L303
	add %l0,1,%l0
L294:
	cmp %o0,0
	be L296
	sll %l0,2,%l2
	sethi %hi(LC297),%o0
	b L297
	or %o0,%lo(LC297),%l1
L296:
	sethi %hi(LC298),%o0
	or %o0,%lo(LC298),%l1
L297:
	ld [%fp-24],%o1
	ld [%o1+24],%o0
	cmp %o0,0
	be L298
	sethi %hi(_LSQ),%o0
	b L302
	ld [%o0+%lo(_LSQ)],%o0
L298:
	sethi %hi(_RUU),%o0
	ld [%o0+%lo(_RUU)],%o0
L302:
	sub %o1,%o0,%o0
	call .div,0
	mov 96,%o1
	mov %o0,%o4
	mov %i0,%o0
	sethi %hi(LC296),%o1
	or %o1,%lo(LC296),%o1
	ld [%l3+%l2],%o2
	call _fprintf,0
	mov %l1,%o3
	add %l0,1,%l0
L303:
	cmp %l0,69
	ble L304
	cmp %l0,0
	ret
	restore
	.align 8
LC299:
	.ascii "ruu_commit\0"
	.align 8
LC300:
	.ascii "RUU out of sync with LSQ\0"
	.align 8
LC301:
	.ascii "functional unit already in use\0"
	.align 8
LC302:
	.ascii "CT\0"
	.align 4
	.proc	020
_ruu_commit:
	!#PROLOGUE# 0
	save %sp,-128,%sp
	!#PROLOGUE# 1
	sethi %hi(_RUU_num),%o0
	ld [%o0+%lo(_RUU_num)],%o0
	cmp %o0,0
	ble L307
	mov 0,%l2
	sethi %hi(_ruu_commit_width),%o0
	ld [%o0+%lo(_ruu_commit_width)],%o0
	cmp %l2,%o0
	bge L307
	sethi %hi(_RUU_head),%l4
	sethi %hi(_RUU),%l7
	sethi %hi(_LSQ_num),%l6
	sethi %hi(_LSQ_head),%l1
	sethi %hi(_LSQ),%l3
	sethi %hi(_sim_cycle),%i1
	sethi %hi(_sim_cycle),%o0
	or %o0,%lo(_sim_cycle),%i0
	sethi %hi(_ptrace_active),%l5
	ld [%l4+%lo(_RUU_head)],%o1
L327:
	ld [%l7+%lo(_RUU)],%o2
	sll %o1,1,%o0
	add %o0,%o1,%o0
	sll %o0,5,%o0
	add %o2,%o0,%o2
	ld [%o2+64],%o0
	cmp %o0,0
	be L307
	nop
	ld [%o2+28],%o0
	cmp %o0,0
	be L309
	mov 0,%l0
	ld [%l6+%lo(_LSQ_num)],%o0
	cmp %o0,0
	ble L311
	sethi %hi(LC300),%o3
	ld [%l1+%lo(_LSQ_head)],%o2
	ld [%l3+%lo(_LSQ)],%o1
	sll %o2,1,%o0
	add %o0,%o2,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	ld [%o1+24],%o0
	cmp %o0,0
	bne L310
	ld [%l1+%lo(_LSQ_head)],%o1
L311:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC299),%o1
	or %o1,%lo(LC299),%o1
	mov 1965,%o2
	call __panic,0
	or %o3,%lo(LC300),%o3
L310:
	ld [%l3+%lo(_LSQ)],%o2
	sll %o1,1,%o0
	add %o0,%o1,%o0
	sll %o0,5,%o0
	add %o2,%o0,%o2
	ld [%o2+64],%o0
	cmp %o0,0
	be L307
	sethi %hi(_ss_op2flags),%o0
	ld [%o2+8],%o1
	or %o0,%lo(_ss_op2flags),%o0
	sll %o1,2,%o2
	ld [%o2+%o0],%o0
	and %o0,160,%o0
	cmp %o0,160
	bne,a L326
	ld [%l1+%lo(_LSQ_head)],%o1
	sethi %hi(_fu_pool),%o0
	sethi %hi(_ss_op2fu),%o1
	or %o1,%lo(_ss_op2fu),%o1
	ld [%o0+%lo(_fu_pool)],%o0
	call _res_get,0
	ld [%o2+%o1],%o1
	orcc %o0,%g0,%o1
	be L307
	nop
	ld [%o1+12],%o0
	ld [%o0+8],%o0
	cmp %o0,0
	be,a L315
	ld [%o1+12],%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC299),%o1
	or %o1,%lo(LC299),%o1
	mov 1987,%o2
	sethi %hi(LC301),%o3
	call __panic,0
	or %o3,%lo(LC301),%o3
L315:
	ld [%o1+8],%o1
	st %o1,[%o0+8]
	sethi %hi(_cache_dl1),%o0
	ld [%o0+%lo(_cache_dl1)],%o3
	cmp %o3,0
	be L316
	ld [%l1+%lo(_LSQ_head)],%o2
	ld [%l3+%lo(_LSQ)],%o1
	sll %o2,1,%o0
	add %o0,%o2,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	ld [%o1+40],%o2
	st %g0,[%sp+96]
	st %g0,[%sp+100]
	ld [%i0+4],%o0
	st %o0,[%sp+92]
	ld [%i1+%lo(_sim_cycle)],%o5
	mov %o3,%o0
	mov 1,%o1
	and %o2,-4,%o2
	mov 0,%o3
	call _cache_access,0
	mov 4,%o4
	sethi %hi(_cache_dl1_lat),%o1
	ld [%o1+%lo(_cache_dl1_lat)],%o1
	cmp %o0,%o1
	bg,a L316
	or %l0,1,%l0
L316:
	sethi %hi(_dtlb),%o0
	ld [%o0+%lo(_dtlb)],%o3
	cmp %o3,0
	be L313
	ld [%l1+%lo(_LSQ_head)],%o2
	ld [%l3+%lo(_LSQ)],%o1
	sll %o2,1,%o0
	add %o0,%o2,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	ld [%o1+40],%o2
	st %g0,[%sp+96]
	st %g0,[%sp+100]
	ld [%i0+4],%o0
	st %o0,[%sp+92]
	ld [%i1+%lo(_sim_cycle)],%o5
	mov %o3,%o0
	mov 0,%o1
	and %o2,-4,%o2
	mov 0,%o3
	call _cache_access,0
	mov 4,%o4
	cmp %o0,1
	bg,a L313
	or %l0,2,%l0
L313:
	ld [%l1+%lo(_LSQ_head)],%o1
L326:
	ld [%l3+%lo(_LSQ)],%o2
	sll %o1,1,%o0
	add %o0,%o1,%o0
	sll %o0,5,%o0
	add %o2,%o0,%o2
	ld [%o2+44],%o0
	add %o0,1,%o0
	st %o0,[%o2+44]
	ld [%l5+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L329
	sethi %hi(LC302),%o1
	ld [%o2+52],%o0
	or %o1,%lo(LC302),%o1
	call ___ptrace_newstage,0
	mov %l0,%o2
	ld [%l5+%lo(_ptrace_active)],%o0
	cmp %o0,0
L329:
	be L322
	ld [%l1+%lo(_LSQ_head)],%o2
	ld [%l3+%lo(_LSQ)],%o1
	sll %o2,1,%o0
	add %o0,%o2,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	call ___ptrace_endinst,0
	ld [%o1+52],%o0
L322:
	ld [%l1+%lo(_LSQ_head)],%o0
	add %o0,1,%o0
	sethi %hi(_LSQ_size),%o1
	call .rem,0
	ld [%o1+%lo(_LSQ_size)],%o1
	st %o0,[%l1+%lo(_LSQ_head)]
	ld [%l6+%lo(_LSQ_num)],%o0
	add %o0,-1,%o0
	st %o0,[%l6+%lo(_LSQ_num)]
L309:
	ld [%l4+%lo(_RUU_head)],%o1
	ld [%l7+%lo(_RUU)],%o2
	sll %o1,1,%o0
	add %o0,%o1,%o0
	sll %o0,5,%o0
	add %o2,%o0,%o2
	ld [%o2+44],%o0
	add %o0,1,%o0
	st %o0,[%o2+44]
	ld [%l5+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L331
	sethi %hi(LC302),%o1
	ld [%o2+52],%o0
	or %o1,%lo(LC302),%o1
	call ___ptrace_newstage,0
	mov %l0,%o2
	ld [%l5+%lo(_ptrace_active)],%o0
	cmp %o0,0
L331:
	be L324
	add %l2,1,%l2
	ld [%l4+%lo(_RUU_head)],%o2
	ld [%l7+%lo(_RUU)],%o1
	sll %o2,1,%o0
	add %o0,%o2,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	call ___ptrace_endinst,0
	ld [%o1+52],%o0
L324:
	ld [%l4+%lo(_RUU_head)],%o0
	add %o0,1,%o0
	sethi %hi(_RUU_size),%o1
	call .rem,0
	ld [%o1+%lo(_RUU_size)],%o1
	st %o0,[%l4+%lo(_RUU_head)]
	sethi %hi(_RUU_num),%o1
	ld [%o1+%lo(_RUU_num)],%o0
	add %o0,-1,%o0
	cmp %o0,0
	ble L307
	st %o0,[%o1+%lo(_RUU_num)]
	sethi %hi(_ruu_commit_width),%o0
	ld [%o0+%lo(_ruu_commit_width)],%o0
	cmp %l2,%o0
	bl L327
	ld [%l4+%lo(_RUU_head)],%o1
L307:
	ret
	restore
	.align 8
LC303:
	.ascii "ruu_recover\0"
	.align 8
LC304:
	.ascii "empty RUU\0"
	.align 8
LC305:
	.ascii "RUU head and tail broken\0"
	.align 8
LC306:
	.ascii "RUU and LSQ out of sync\0"
	.align 4
	.proc	020
_ruu_recover:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov %i0,%i2
	sethi %hi(_RUU_tail),%o0
	sethi %hi(_LSQ_tail),%o1
	ld [%o0+%lo(_RUU_tail)],%l2
	ld [%o1+%lo(_LSQ_tail)],%l4
	add %l2,-1,%l0
	sethi %hi(_RUU_size),%o0
	ld [%o0+%lo(_RUU_size)],%o1
	add %l0,%o1,%l0
	call .rem,0
	mov %l0,%o0
	mov %o0,%l0
	add %l4,-1,%l1
	sethi %hi(_LSQ_size),%o0
	ld [%o0+%lo(_LSQ_size)],%o1
	add %l1,%o1,%l1
	call .rem,0
	mov %l1,%o0
	cmp %l0,%i2
	be L334
	mov %o0,%l1
	sethi %hi(_RUU_num),%l7
	sethi %hi(LC6),%i0
	sethi %hi(LC303),%i1
	sethi %hi(_RUU),%l6
	sethi %hi(_LSQ_num),%l5
	sethi %hi(_LSQ),%i3
	sethi %hi(_rslink_free_list),%l3
L357:
	ld [%l7+%lo(_RUU_num)],%o0
	cmp %o0,0
	bne L335
	sethi %hi(_RUU_head),%o0
	or %i0,%lo(LC6),%o0
	or %i1,%lo(LC303),%o1
	mov 2075,%o2
	sethi %hi(LC304),%o3
	call __panic,0
	or %o3,%lo(LC304),%o3
L335:
	ld [%o0+%lo(_RUU_head)],%o0
	cmp %l0,%o0
	bne L336
	ld [%l6+%lo(_RUU)],%o0
	or %i0,%lo(LC6),%o0
	or %i1,%lo(LC303),%o1
	mov 2079,%o2
	sethi %hi(LC305),%o3
	call __panic,0
	or %o3,%lo(LC305),%o3
L336:
	sll %l0,1,%o1
	add %o1,%l0,%o1
	sll %o1,5,%o1
	add %o0,%o1,%o0
	ld [%o0+28],%o0
	cmp %o0,0
	be L337
	ld [%l5+%lo(_LSQ_num)],%o0
	cmp %o0,0
	bne,a L338
	mov 0,%o3
	or %i0,%lo(LC6),%o0
	or %i1,%lo(LC303),%o1
	mov 2086,%o2
	sethi %hi(LC306),%o3
	call __panic,0
	or %o3,%lo(LC306),%o3
L338:
	ld [%i3+%lo(_LSQ)],%o0
	sll %l1,1,%o1
	add %o1,%l1,%o1
	sll %o1,5,%o1
	add %o0,%o1,%o5
	sll %l1,1,%o1
	add %o1,%l1,%o1
	sll %o1,5,%o1
	add %o0,%o1,%o4
L346:
	sll %o3,2,%o0
	add %o0,%o5,%o0
	ld [%o0+76],%o2
	cmp %o2,0
	be L362
	sll %o3,2,%o0
	ld [%o2],%o1
L363:
	st %g0,[%o2+4]
	st %g0,[%o2+8]
	ld [%l3+%lo(_rslink_free_list)],%o0
	st %o0,[%o2]
	st %o2,[%l3+%lo(_rslink_free_list)]
	orcc %o1,%g0,%o2
	bne,a L363
	ld [%o2],%o1
	sll %o3,2,%o0
L362:
	add %o0,%o4,%o0
	add %o3,1,%o3
	cmp %o3,1
	ble L346
	st %g0,[%o0+76]
	ld [%i3+%lo(_LSQ)],%o1
	sll %l1,1,%o0
	add %o0,%l1,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	ld [%o1+44],%o0
	add %o0,1,%o0
	st %o0,[%o1+44]
	sethi %hi(_ptrace_active),%o0
	ld [%o0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L347
	mov %l1,%l4
	call ___ptrace_endinst,0
	ld [%o1+52],%o0
L347:
	add %l4,-1,%l1
	sethi %hi(_LSQ_size),%o0
	ld [%o0+%lo(_LSQ_size)],%o1
	add %l1,%o1,%l1
	call .rem,0
	mov %l1,%o0
	mov %o0,%l1
	ld [%l5+%lo(_LSQ_num)],%o0
	add %o0,-1,%o0
	st %o0,[%l5+%lo(_LSQ_num)]
L337:
	mov 0,%o3
	ld [%l6+%lo(_RUU)],%o0
	sll %l0,1,%o1
	add %o1,%l0,%o1
	sll %o1,5,%o1
	add %o0,%o1,%o5
	sll %l0,1,%o1
	add %o1,%l0,%o1
	sll %o1,5,%o1
	add %o0,%o1,%o4
L355:
	sll %o3,2,%o0
	add %o0,%o5,%o0
	ld [%o0+76],%o2
	cmp %o2,0
	be L364
	sll %o3,2,%o0
	ld [%o2],%o1
L365:
	st %g0,[%o2+4]
	st %g0,[%o2+8]
	ld [%l3+%lo(_rslink_free_list)],%o0
	st %o0,[%o2]
	st %o2,[%l3+%lo(_rslink_free_list)]
	orcc %o1,%g0,%o2
	bne,a L365
	ld [%o2],%o1
	sll %o3,2,%o0
L364:
	add %o0,%o4,%o0
	add %o3,1,%o3
	cmp %o3,1
	ble L355
	st %g0,[%o0+76]
	ld [%l6+%lo(_RUU)],%o1
	sll %l0,1,%o0
	add %o0,%l0,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	ld [%o1+44],%o0
	add %o0,1,%o0
	st %o0,[%o1+44]
	sethi %hi(_ptrace_active),%o0
	ld [%o0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L356
	mov %l0,%l2
	call ___ptrace_endinst,0
	ld [%o1+52],%o0
L356:
	add %l2,-1,%l0
	sethi %hi(_RUU_size),%o0
	ld [%o0+%lo(_RUU_size)],%o1
	add %l0,%o1,%l0
	call .rem,0
	mov %l0,%o0
	mov %o0,%l0
	ld [%l7+%lo(_RUU_num)],%o0
	add %o0,-1,%o0
	cmp %l0,%i2
	bne L357
	st %o0,[%l7+%lo(_RUU_num)]
L334:
	sethi %hi(_RUU_tail),%o0
	st %l2,[%o0+%lo(_RUU_tail)]
	sethi %hi(_LSQ_tail),%o0
	st %l4,[%o0+%lo(_LSQ_tail)]
	mov 0,%o1
	sethi %hi(_use_spec_cv),%o0
	or %o0,%lo(_use_spec_cv),%o2
L361:
	sll %o1,2,%o0
	add %o1,1,%o1
	cmp %o1,2
	ble L361
	st %g0,[%o0+%o2]
	ret
	restore
	.align 8
LC307:
	.ascii "ruu_writeback\0"
	.align 8
LC308:
	.ascii "inst completed and !ready, !issued, or completed\0"
	.align 8
LC309:
	.ascii "mis-predicted load or store?!?!?\0"
	.align 8
LC310:
	.ascii "WB\0"
	.align 8
LC311:
	.ascii "output dependence already satisfied\0"
	.align 4
	.proc	020
_ruu_writeback:
	!#PROLOGUE# 0
	save %sp,-120,%sp
	!#PROLOGUE# 1
	sethi %hi(LC6),%l7
	sethi %hi(LC307),%i0
	sethi %hi(_spec_create_vector),%o0
	or %o0,%lo(_spec_create_vector),%l5
	sethi %hi(_CVLINK_NULL),%i5
	sethi %hi(_CVLINK_NULL),%o0
	or %o0,%lo(_CVLINK_NULL),%i4
L367:
	call _eventq_next_event,0
	nop
	orcc %o0,%g0,%l1
	be L368
	nop
	ld [%l1+84],%o0
	cmp %o0,0
	be L370
	or %i0,%lo(LC307),%o1
	ld [%l1+88],%o0
	cmp %o0,0
	be L394
	or %l7,%lo(LC6),%o0
	ld [%l1+92],%o0
	cmp %o0,0
	be L394
	or %l7,%lo(LC6),%o0
	ld [%l1+56],%o0
	cmp %o0,0
	bne L394
	or %l7,%lo(LC6),%o0
	ld [%l1+60],%o0
	cmp %o0,0
	be L394
	or %l7,%lo(LC6),%o0
	ld [%l1+64],%o0
	cmp %o0,0
	be L369
	mov 1,%o0
L370:
	or %l7,%lo(LC6),%o0
L394:
	mov 2164,%o2
	sethi %hi(LC308),%o3
	call __panic,0
	or %o3,%lo(LC308),%o3
L369:
	st %o0,[%l1+64]
	ld [%l1+32],%o0
	cmp %o0,0
	be L395
	sethi %hi(_ptrace_active),%o0
	ld [%l1+24],%o0
	cmp %o0,0
	be L372
	sethi %hi(_RUU),%o0
	or %l7,%lo(LC6),%o0
	or %i0,%lo(LC307),%o1
	mov 2173,%o2
	sethi %hi(LC309),%o3
	call __panic,0
	or %o3,%lo(LC309),%o3
L372:
	ld [%o0+%lo(_RUU)],%o0
	sub %l1,%o0,%o0
	call .div,0
	mov 96,%o1
	call _ruu_recover,0
	nop
	call _tracer_recover,0
	nop
	sethi %hi(_ruu_branch_penalty),%o0
	ld [%o0+%lo(_ruu_branch_penalty)],%o0
	sethi %hi(_ruu_fetch_issue_delay),%o1
	st %o0,[%o1+%lo(_ruu_fetch_issue_delay)]
	sethi %hi(_ptrace_active),%o0
L395:
	ld [%o0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L373
	mov 0,%l2
	ld [%l1+32],%o2
	subcc %g0,%o2,%g0
	subx %g0,0,%o2
	ld [%l1+52],%o0
	sethi %hi(LC310),%o1
	or %o1,%lo(LC310),%o1
	call ___ptrace_newstage,0
	and %o2,8,%o2
L373:
	sethi %hi(_spec_create_vector_rt),%o0
	or %o0,%lo(_spec_create_vector_rt),%i3
	sethi %hi(_sim_cycle),%l6
	sethi %hi(_create_vector),%o0
	or %o0,%lo(_create_vector),%l3
	sethi %hi(_create_vector_rt),%o0
	or %o0,%lo(_create_vector_rt),%i2
	sethi %hi(_ss_op2flags),%o0
	or %o0,%lo(_ss_op2flags),%i1
	sethi %hi(_rslink_free_list),%l4
	sll %l2,2,%o0
L401:
	add %o0,%l1,%o0
	ld [%o0+68],%o1
	cmp %o1,0
	be,a L396
	add %l2,1,%l2
	ld [%l1+36],%o0
	cmp %o0,0
	be L380
	sll %o1,3,%o0
	ld [%o0+%l5],%o1
	st %o1,[%fp-24]
	add %o0,%l5,%o0
	ld [%o0+4],%o0
	cmp %o1,0
	be L382
	st %o0,[%fp-20]
	cmp %o1,%l1
	bne,a L397
	sll %l2,2,%o0
	cmp %o0,%l2
	bne L397
	sll %l2,2,%o0
	sll %l2,2,%o2
	add %o2,%l1,%o2
	ld [%o2+68],%o0
	sll %o0,3,%o0
	ld [%i5+%lo(_CVLINK_NULL)],%o1
	st %o1,[%o0+%l5]
	add %o0,%l5,%o0
	ld [%i4+4],%o1
	st %o1,[%o0+4]
	ld [%o2+68],%o0
	sll %o0,3,%o0
	ldd [%l6+%lo(_sim_cycle)],%o2
	std %o2,[%o0+%i3]
	b L397
	sll %l2,2,%o0
L380:
	sll %l2,2,%o0
	add %o0,%l1,%o0
	ld [%o0+68],%o0
	sll %o0,3,%o0
	ld [%o0+%l3],%o1
	st %o1,[%fp-24]
	add %o0,%l3,%o0
	ld [%o0+4],%o0
	cmp %o1,0
	be L382
	st %o0,[%fp-20]
	cmp %o1,%l1
	bne,a L397
	sll %l2,2,%o0
	cmp %o0,%l2
	bne L397
	sll %l2,2,%o0
	sll %l2,2,%o2
	add %o2,%l1,%o2
	ld [%o2+68],%o0
	sll %o0,3,%o0
	ld [%i5+%lo(_CVLINK_NULL)],%o1
	st %o1,[%o0+%l3]
	add %o0,%l3,%o0
	ld [%i4+4],%o1
	st %o1,[%o0+4]
	ld [%o2+68],%o0
	sll %o0,3,%o0
	ldd [%l6+%lo(_sim_cycle)],%o2
	std %o2,[%o0+%i2]
L382:
	sll %l2,2,%o0
L397:
	add %o0,%l1,%o0
	ld [%o0+76],%l0
	cmp %l0,0
	be L398
	sll %l2,2,%o0
	ld [%l0+4],%o2
L400:
	ld [%l0+8],%o1
	ld [%o2+44],%o0
	cmp %o1,%o0
	bne,a L399
	ld [%l0],%o1
	ld [%l0+16],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	ld [%o0+84],%o0
	cmp %o0,0
	be,a L388
	ld [%l0+4],%o1
	or %l7,%lo(LC6),%o0
	or %i0,%lo(LC307),%o1
	mov 2237,%o2
	sethi %hi(LC311),%o3
	call __panic,0
	or %o3,%lo(LC311),%o3
L388:
	ld [%l0+16],%o0
	sll %o0,2,%o0
	add %o0,%o1,%o0
	mov 1,%o1
	st %o1,[%o0+84]
	ld [%l0+4],%o1
	ld [%o1+84],%o0
	cmp %o0,0
	be,a L399
	ld [%l0],%o1
	ld [%o1+88],%o0
	cmp %o0,0
	be,a L399
	ld [%l0],%o1
	ld [%o1+92],%o0
	cmp %o0,0
	be,a L399
	ld [%l0],%o1
	ld [%o1+24],%o0
	cmp %o0,0
	be L391
	nop
	ld [%o1+8],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
	and %o0,160,%o0
	cmp %o0,160
	bne,a L399
	ld [%l0],%o1
L391:
	call _readyq_enqueue,0
	ld [%l0+4],%o0
	ld [%l0],%o1
L399:
	st %g0,[%l0+4]
	st %g0,[%l0+8]
	ld [%l4+%lo(_rslink_free_list)],%o0
	st %o0,[%l0]
	st %l0,[%l4+%lo(_rslink_free_list)]
	orcc %o1,%g0,%l0
	bne,a L400
	ld [%l0+4],%o2
	sll %l2,2,%o0
L398:
	add %o0,%l1,%o0
	st %g0,[%o0+76]
	add %l2,1,%l2
L396:
	cmp %l2,1
	ble L401
	sll %l2,2,%o0
	b,a L367
L368:
	ret
	restore
	.align 8
LC312:
	.ascii "lsq_refresh\0"
	.align 8
LC313:
	.ascii "STD unknown array overflow, increase MAX_STD_UNKNOWNS\0"
	.align 4
	.proc	020
_lsq_refresh:
	!#PROLOGUE# 0
	save %sp,-368,%sp
	!#PROLOGUE# 1
	mov 0,%l3
	sethi %hi(_LSQ_head),%o0
	ld [%o0+%lo(_LSQ_head)],%l0
	sethi %hi(_LSQ_num),%o0
	ld [%o0+%lo(_LSQ_num)],%o0
	cmp %l3,%o0
	bge L404
	mov 0,%l1
	sethi %hi(_LSQ),%l4
	sethi %hi(_ss_op2flags),%o0
	or %o0,%lo(_ss_op2flags),%l5
	add %fp,-16,%l2
	ld [%l4+%lo(_LSQ)],%o1
L432:
	sll %l0,1,%o0
	add %o0,%l0,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	ld [%o1+8],%o0
	sll %o0,2,%o0
	ld [%o0+%l5],%o0
	and %o0,160,%o0
	cmp %o0,160
	bne,a L426
	ld [%l4+%lo(_LSQ)],%o1
	ld [%o1+88],%o0
	cmp %o0,0
	be L404
	nop
	ld [%o1+84],%o0
	cmp %o0,0
	be L427
	cmp %l1,64
	ld [%o1+92],%o0
	cmp %o0,0
	bne L409
	mov 0,%o3
	cmp %l1,64
L427:
	bne L411
	sll %l1,2,%o2
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC312),%o1
	or %o1,%lo(LC312),%o1
	mov 2314,%o2
	sethi %hi(LC313),%o3
	call __fatal,0
	or %o3,%lo(LC313),%o3
L411:
	add %o2,%l2,%o2
	ld [%l4+%lo(_LSQ)],%o1
	sll %l0,1,%o0
	add %o0,%l0,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	ld [%o1+40],%o0
	st %o0,[%o2-256]
	b L406
	add %l1,1,%l1
L409:
	cmp %o3,%l1
	bge L426
	ld [%l4+%lo(_LSQ)],%o1
	sll %l0,1,%o0
	add %o0,%l0,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o4
	sll %o3,2,%o0
L428:
	add %o0,%l2,%o2
	ld [%o2-256],%o1
	ld [%o4+40],%o0
	cmp %o1,%o0
	be,a L415
	st %g0,[%o2-256]
L415:
	add %o3,1,%o3
	cmp %o3,%l1
	bl L428
	sll %o3,2,%o0
L406:
	ld [%l4+%lo(_LSQ)],%o1
L426:
	sll %l0,1,%o0
	add %o0,%l0,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	ld [%o1+8],%o0
	sll %o0,2,%o0
	ld [%o0+%l5],%o0
	and %o0,96,%o0
	cmp %o0,96
	bne,a L429
	add %l3,1,%l3
	ld [%o1+56],%o0
	cmp %o0,0
	bne,a L429
	add %l3,1,%l3
	ld [%o1+60],%o0
	cmp %o0,0
	bne,a L429
	add %l3,1,%l3
	ld [%o1+64],%o0
	cmp %o0,0
	bne,a L429
	add %l3,1,%l3
	ld [%o1+84],%o0
	cmp %o0,0
	be,a L429
	add %l3,1,%l3
	ld [%o1+88],%o0
	cmp %o0,0
	be,a L429
	add %l3,1,%l3
	ld [%o1+92],%o0
	cmp %o0,0
	be L405
	mov 0,%o3
	cmp %o3,%l1
	bge L430
	sll %l0,1,%o0
	ld [%l4+%lo(_LSQ)],%o1
	add %o0,%l0,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	ld [%o1+40],%o1
	sll %o3,2,%o0
L431:
	add %o0,%l2,%o0
	ld [%o0-256],%o0
	cmp %o0,%o1
	be L430
	cmp %o3,%l1
	add %o3,1,%o3
	cmp %o3,%l1
	bl L431
	sll %o3,2,%o0
	cmp %o3,%l1
L430:
	bne,a L429
	add %l3,1,%l3
	sll %l0,1,%o0
	add %o0,%l0,%o0
	sll %o0,5,%o0
	ld [%l4+%lo(_LSQ)],%o1
	call _readyq_enqueue,0
	add %o0,%o1,%o0
L405:
	add %l3,1,%l3
L429:
	add %l0,1,%l0
	sethi %hi(_LSQ_size),%o1
	mov %l0,%o0
	call .rem,0
	ld [%o1+%lo(_LSQ_size)],%o1
	mov %o0,%l0
	sethi %hi(_LSQ_num),%o0
	ld [%o0+%lo(_LSQ_num)],%o0
	cmp %l3,%o0
	bl L432
	ld [%l4+%lo(_LSQ)],%o1
L404:
	ret
	restore
	.align 8
LC314:
	.ascii "ruu_issue\0"
	.align 8
LC315:
	.ascii "issued inst !ready, issued, or completed\0"
	.align 8
LC316:
	.ascii "store creates result\0"
	.align 8
LC317:
	.ascii "mis-predicted store\0"
	.align 8
LC318:
	.ascii "EX\0"
	.align 4
	.proc	020
_ruu_issue:
	!#PROLOGUE# 0
	save %sp,-128,%sp
	!#PROLOGUE# 1
	sethi %hi(_ready_queue),%o0
	ld [%o0+%lo(_ready_queue)],%l2
	st %g0,[%o0+%lo(_ready_queue)]
	cmp %l2,0
	be L482
	mov 0,%l5
	sethi %hi(_ruu_issue_width),%o0
	ld [%o0+%lo(_ruu_issue_width)],%o0
	cmp %l5,%o0
	bge L482
	cmp %l2,0
	sethi %hi(LC6),%i2
	sethi %hi(LC314),%i3
	sethi %hi(_ss_op2flags),%o0
	or %o0,%lo(_ss_op2flags),%i4
	mov 1,%i1
	sethi %hi(_ptrace_active),%i0
	sethi %hi(_LSQ_head),%i5
	sethi %hi(_sim_cycle),%l7
	ld [%l2+4],%o2
L490:
	ld [%l2+8],%o1
	ld [%o2+44],%o0
	cmp %o1,%o0
	bne L437
	ld [%l2],%l6
	mov %o2,%l0
	ld [%l0+84],%o0
	cmp %o0,0
	be L439
	or %i3,%lo(LC314),%o1
	ld [%l0+88],%o0
	cmp %o0,0
	be L483
	or %i2,%lo(LC6),%o0
	ld [%l0+92],%o0
	cmp %o0,0
	be L483
	or %i2,%lo(LC6),%o0
	ld [%l0+56],%o0
	cmp %o0,0
	be L483
	or %i2,%lo(LC6),%o0
	ld [%l0+60],%o0
	cmp %o0,0
	bne L483
	or %i2,%lo(LC6),%o0
	ld [%l0+64],%o0
	cmp %o0,0
	be,a L438
	st %g0,[%l0+56]
L439:
	or %i2,%lo(LC6),%o0
L483:
	mov 2398,%o2
	sethi %hi(LC315),%o3
	call __panic,0
	or %o3,%lo(LC315),%o3
L438:
	ld [%l0+24],%o0
	cmp %o0,0
	be,a L484
	ld [%l0+8],%o1
	ld [%l0+8],%o0
	sll %o0,2,%o0
	ld [%o0+%i4],%o0
	and %o0,160,%o0
	cmp %o0,160
	bne,a L484
	ld [%l0+8],%o1
	st %i1,[%l0+60]
	st %i1,[%l0+64]
	ld [%l0+68],%o0
	cmp %o0,0
	bne L442
	or %i3,%lo(LC314),%o1
	ld [%l0+72],%o0
	cmp %o0,0
	be,a L441
	ld [%l0+32],%o0
L442:
	or %i2,%lo(LC6),%o0
	mov 2414,%o2
	sethi %hi(LC316),%o3
	call __panic,0
	or %o3,%lo(LC316),%o3
L441:
	cmp %o0,0
	be L443
	ld [%i0+%lo(_ptrace_active)],%o0
	or %i2,%lo(LC6),%o0
	or %i3,%lo(LC314),%o1
	mov 2417,%o2
	sethi %hi(LC317),%o3
	call __panic,0
	or %o3,%lo(LC317),%o3
L443:
	cmp %o0,0
	be L471
	sethi %hi(LC310),%o1
	ld [%l0+52],%o0
	or %o1,%lo(LC310),%o1
	call ___ptrace_newstage,0
	mov 0,%o2
	b L437
	add %l5,1,%l5
L484:
	sethi %hi(_ss_op2fu),%o0
	or %o0,%lo(_ss_op2fu),%o0
	sll %o1,2,%o1
	ld [%o1+%o0],%o1
	cmp %o1,0
	be L446
	sethi %hi(_fu_pool),%o0
	call _res_get,0
	ld [%o0+%lo(_fu_pool)],%o0
	orcc %o0,%g0,%l3
	be L447
	nop
	st %i1,[%l0+60]
	ld [%l3+12],%o0
	ld [%o0+8],%o0
	cmp %o0,0
	be,a L448
	ld [%l3+12],%o0
	or %i2,%lo(LC6),%o0
	or %i3,%lo(LC314),%o1
	mov 2438,%o2
	sethi %hi(LC301),%o3
	call __panic,0
	or %o3,%lo(LC301),%o3
L448:
	ld [%l3+8],%o1
	st %o1,[%o0+8]
	ld [%l0+24],%o0
	cmp %o0,0
	be,a L485
	ld [%l3+4],%o0
	ld [%l0+8],%o0
	sll %o0,2,%o0
	ld [%o0+%i4],%o0
	and %o0,96,%o0
	cmp %o0,96
	bne,a L485
	ld [%l3+4],%o0
	mov 0,%l4
	mov 0,%l1
	sethi %hi(_LSQ),%g2
	ld [%g2+%lo(_LSQ)],%o0
	sub %l0,%o0,%o2
	mov %o2,%o0
	call .div,0
	mov 96,%o1
	b L454
	mov %o0,%o2
L451:
	sethi %hi(_LSQ_size),%g2
	ld [%g2+%lo(_LSQ_size)],%o1
	call .rem,0
	add %o0,%o1,%o0
	mov %o0,%o2
	sethi %hi(_LSQ),%g2
	ld [%g2+%lo(_LSQ)],%o1
	sll %o2,1,%o0
	add %o0,%o2,%o0
	sll %o0,5,%o0
	add %o1,%o0,%o1
	ld [%o1+8],%o0
	sll %o0,2,%o0
	ld [%o0+%i4],%o0
	andcc %o0,128,%g0
	be L486
	ld [%i5+%lo(_LSQ_head)],%o0
	ld [%o1+40],%o1
	ld [%l0+40],%o0
	cmp %o1,%o0
	be,a L450
	mov 1,%l1
L454:
	ld [%i5+%lo(_LSQ_head)],%o0
L486:
	cmp %o2,%o0
	bne L451
	add %o2,-1,%o0
L450:
	cmp %l1,0
	bne L487
	sethi %hi(_dtlb),%o0
	sethi %hi(_cache_dl1),%o0
	ld [%o0+%lo(_cache_dl1)],%o1
	cmp %o1,0
	be L457
	sethi %hi(_ld_data_base),%o0
	ld [%l0+40],%o2
	ld [%o0+%lo(_ld_data_base)],%o0
	cmp %o2,%o0
	blu L457
	sethi %hi(_ld_stack_base),%o0
	ld [%o0+%lo(_ld_stack_base)],%o0
	cmp %o2,%o0
	bgeu L457
	or %l7,%lo(_sim_cycle),%o0
	st %g0,[%sp+96]
	st %g0,[%sp+100]
	ld [%o0+4],%o0
	st %o0,[%sp+92]
	ld [%l7+%lo(_sim_cycle)],%o5
	mov %o1,%o0
	mov 0,%o1
	and %o2,-4,%o2
	mov 0,%o3
	call _cache_access,0
	mov 4,%o4
	mov %o0,%l1
	sethi %hi(_cache_dl1_lat),%o0
	ld [%o0+%lo(_cache_dl1_lat)],%o0
	cmp %l1,%o0
	bg,a L456
	or %l4,1,%l4
	b L487
	sethi %hi(_dtlb),%o0
L457:
	ld [%l3+4],%l1
L456:
	sethi %hi(_dtlb),%o0
L487:
	ld [%o0+%lo(_dtlb)],%o1
	cmp %o1,0
	be L488
	mov %l1,%o3
	sethi %hi(_ld_data_base),%o0
	ld [%l0+40],%o2
	ld [%o0+%lo(_ld_data_base)],%o0
	cmp %o2,%o0
	blu,a L488
	mov %l1,%o3
	sethi %hi(_ld_stack_base),%o0
	ld [%o0+%lo(_ld_stack_base)],%o0
	cmp %o2,%o0
	bgeu L460
	and %o2,-4,%o2
	or %l7,%lo(_sim_cycle),%o0
	st %g0,[%sp+96]
	st %g0,[%sp+100]
	ld [%o0+4],%o0
	st %o0,[%sp+92]
	ld [%l7+%lo(_sim_cycle)],%o5
	mov %o1,%o0
	mov 0,%o1
	mov 0,%o3
	call _cache_access,0
	mov 4,%o4
	cmp %o0,1
	bg,a L461
	or %l4,2,%l4
L461:
	cmp %o0,%l1
	bl,a L462
	mov %l1,%o0
L462:
	mov %o0,%l1
L460:
	mov %l1,%o3
L488:
	sra %l1,31,%o2
	ldd [%l7+%lo(_sim_cycle)],%o0
	addcc %o3,%o1,%o3
	addx %o2,%o0,%o2
	mov %o2,%o1
	mov %o3,%o2
	call _eventq_queue_event,0
	mov %l0,%o0
	ld [%i0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be,a L437
	add %l5,1,%l5
	ld [%l0+28],%o0
	cmp %o0,0
	be L464
	mov %l4,%o2
	or %o2,16,%o2
L464:
	ld [%l0+52],%o0
	sethi %hi(LC318),%o1
	call ___ptrace_newstage,0
	or %o1,%lo(LC318),%o1
	b L437
	add %l5,1,%l5
L485:
	mov %o0,%o3
	sra %o0,31,%o2
	ldd [%l7+%lo(_sim_cycle)],%o0
	addcc %o3,%o1,%o3
	addx %o2,%o0,%o2
	b,a L481
L447:
	call _readyq_enqueue,0
	mov %l0,%o0
	b L489
	st %g0,[%l2+4]
L446:
	st %i1,[%l0+60]
	ldd [%l7+%lo(_sim_cycle)],%o2
	addcc %o3,1,%o3
	addx %o2,0,%o2
L481:
	mov %o2,%o1
	mov %o3,%o2
	call _eventq_queue_event,0
	mov %l0,%o0
	ld [%i0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L471
	sethi %hi(LC318),%o1
	ld [%l0+28],%o2
	subcc %g0,%o2,%g0
	subx %g0,0,%o2
	ld [%l0+52],%o0
	or %o1,%lo(LC318),%o1
	call ___ptrace_newstage,0
	and %o2,16,%o2
L471:
	add %l5,1,%l5
L437:
	st %g0,[%l2+4]
L489:
	st %g0,[%l2+8]
	sethi %hi(_rslink_free_list),%o1
	ld [%o1+%lo(_rslink_free_list)],%o0
	st %o0,[%l2]
	st %l2,[%o1+%lo(_rslink_free_list)]
	orcc %l6,%g0,%l2
	be L482
	sethi %hi(_ruu_issue_width),%o0
	ld [%o0+%lo(_ruu_issue_width)],%o0
	cmp %l5,%o0
	bl,a L490
	ld [%l2+4],%o2
	cmp %l2,0
L482:
	be L476
	sethi %hi(_rslink_free_list),%l0
	ld [%l2+4],%o2
L491:
	ld [%l2+8],%o1
	ld [%o2+44],%o0
	cmp %o1,%o0
	bne L478
	ld [%l2],%l6
	st %g0,[%o2+56]
	call _readyq_enqueue,0
	mov %o2,%o0
L478:
	st %g0,[%l2+4]
	st %g0,[%l2+8]
	ld [%l0+%lo(_rslink_free_list)],%o0
	st %o0,[%l2]
	st %l2,[%l0+%lo(_rslink_free_list)]
	orcc %l6,%g0,%l2
	bne,a L491
	ld [%l2+4],%o2
L476:
	ret
	restore
	.align 8
LC319:
	.ascii "** speculative register contents **\12\0"
	.align 8
LC320:
	.ascii "spec_mode: %s\12\0"
	.align 8
LC321:
	.ascii "[%4s]: %12d/0x%08x\12\0"
	.align 8
LC322:
	.ascii "[%4s]: %12d/0x%08x/%f ([%4s] as double: %f)\12\12\0"
	.align 8
LC323:
	.ascii "[ $hi]: %12d/0x%08x\12\0"
	.align 8
LC324:
	.ascii "[ $lo]: %12d/0x%08x\12\0"
	.align 8
LC325:
	.ascii "[$fcc]: 0x%08x\12\0"
	.align 4
	.proc	020
_rspec_dump:
	!#PROLOGUE# 0
	save %sp,-128,%sp
	!#PROLOGUE# 1
	mov %i0,%o0
	sethi %hi(LC319),%o1
	call _fprintf,0
	or %o1,%lo(LC319),%o1
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be,a L493
	sethi %hi(LC204),%o0
	sethi %hi(LC203),%o0
	b L494
	or %o0,%lo(LC203),%o2
L493:
	or %o0,%lo(LC204),%o2
L494:
	mov %i0,%o0
	sethi %hi(LC320),%o1
	call _fprintf,0
	or %o1,%lo(LC320),%o1
	mov 0,%l0
	sethi %hi(_use_spec_R),%o0
	or %o0,%lo(_use_spec_R),%l4
	mov 1,%l3
	sethi %hi(_dep_names),%o0
	or %o0,%lo(_dep_names),%l2
	sethi %hi(_spec_regs_R),%o0
	or %o0,%lo(_spec_regs_R),%l1
	cmp %l0,0
L512:
	bge L499
	mov %l0,%o0
	add %l0,31,%o0
L499:
	sra %o0,5,%o0
	sll %o0,2,%o1
	cmp %l0,0
	bge L500
	mov %l0,%o0
	add %l0,31,%o0
L500:
	and %o0,-32,%o0
	sub %l0,%o0,%o0
	sll %l3,%o0,%o0
	ld [%l4+%o1],%o1
	andcc %o0,%o1,%g0
	be L497
	sll %l0,2,%o3
	mov %i0,%o0
	sethi %hi(LC321),%o1
	or %o1,%lo(LC321),%o1
	ld [%o3+%l2],%o2
	ld [%o3+%l1],%o3
	call _fprintf,0
	mov %o3,%o4
L497:
	add %l0,1,%l0
	cmp %l0,31
	ble L512
	cmp %l0,0
	mov 0,%l0
	sethi %hi(_use_spec_F),%o0
	or %o0,%lo(_use_spec_F),%l4
	mov 1,%l3
	sethi %hi(_dep_names+128),%o0
	or %o0,%lo(_dep_names+128),%l2
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%l1
	cmp %l0,0
L513:
	bge L506
	mov %l0,%o0
	add %l0,31,%o0
L506:
	sra %o0,5,%o0
	sll %o0,2,%o1
	cmp %l0,0
	bge L507
	mov %l0,%o0
	add %l0,31,%o0
L507:
	and %o0,-32,%o0
	sub %l0,%o0,%o0
	sll %l3,%o0,%o0
	ld [%l4+%o1],%o1
	andcc %o0,%o1,%g0
	be L504
	sll %l0,2,%o3
	ld [%o3+%l1],%f2
	fstod %f2,%f2
	ld [%o3+%l2],%o0
	st %o0,[%sp+96]
	sra %l0,1,%o0
	sll %o0,3,%o0
	ldd [%o0+%l1],%o0
	st %o0,[%sp+100]
	st %o1,[%sp+104]
	st %f3,[%sp+92]
	st %f2,[%fp-16]
	ld [%fp-16],%g2
	mov %g2,%o5
	mov %i0,%o0
	sethi %hi(LC322),%o1
	or %o1,%lo(LC322),%o1
	ld [%o3+%l2],%o2
	ld [%o3+%l1],%o3
	call _fprintf,0
	mov %o3,%o4
L504:
	add %l0,1,%l0
	cmp %l0,31
	ble L513
	cmp %l0,0
	sethi %hi(_use_spec_HI),%o0
	ld [%o0+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	be L509
	sethi %hi(_spec_regs_HI),%o2
	mov %i0,%o0
	sethi %hi(LC323),%o1
	or %o1,%lo(LC323),%o1
	ld [%o2+%lo(_spec_regs_HI)],%o2
	call _fprintf,0
	mov %o2,%o3
L509:
	sethi %hi(_use_spec_LO),%o0
	ld [%o0+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	be L510
	sethi %hi(_spec_regs_LO),%o2
	mov %i0,%o0
	sethi %hi(LC324),%o1
	or %o1,%lo(LC324),%o1
	ld [%o2+%lo(_spec_regs_LO)],%o2
	call _fprintf,0
	mov %o2,%o3
L510:
	sethi %hi(_use_spec_FCC),%o0
	ld [%o0+%lo(_use_spec_FCC)],%o0
	cmp %o0,0
	be L511
	sethi %hi(_spec_regs_FCC),%o2
	mov %i0,%o0
	sethi %hi(LC325),%o1
	or %o1,%lo(LC325),%o1
	call _fprintf,0
	ld [%o2+%lo(_spec_regs_FCC)],%o2
L511:
	ret
	restore
.data
	.align 4
_bucket_free_list:
	.word	0
.text
	.align 8
LC326:
	.ascii "tracer_recover\0"
	.align 8
LC327:
	.ascii "cannot recover unless in speculative mode\0"
	.align 4
	.proc	020
_tracer_recover:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L515
	sethi %hi(_spec_mode),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC326),%o1
	or %o1,%lo(LC326),%o1
	mov 2724,%o2
	sethi %hi(LC327),%o3
	call __panic,0
	or %o3,%lo(LC327),%o3
L515:
	st %g0,[%o0+%lo(_spec_mode)]
	mov 0,%o1
	sethi %hi(_use_spec_R),%o0
	or %o0,%lo(_use_spec_R),%o2
L519:
	sll %o1,2,%o0
	add %o1,1,%o1
	cmp %o1,0
	ble L519
	st %g0,[%o0+%o2]
	mov 0,%o1
	sethi %hi(_use_spec_F),%o0
	or %o0,%lo(_use_spec_F),%o2
L523:
	sll %o1,2,%o0
	add %o1,1,%o1
	cmp %o1,0
	ble L523
	st %g0,[%o0+%o2]
	sethi %hi(_use_spec_HI),%o0
	st %g0,[%o0+%lo(_use_spec_HI)]
	sethi %hi(_use_spec_LO),%o0
	st %g0,[%o0+%lo(_use_spec_LO)]
	sethi %hi(_use_spec_FCC),%o0
	st %g0,[%o0+%lo(_use_spec_FCC)]
	mov 0,%o3
	sethi %hi(_store_htable),%o0
	or %o0,%lo(_store_htable),%o5
	sethi %hi(_bucket_free_list),%o4
L531:
	sll %o3,2,%o0
	ld [%o0+%o5],%o2
	cmp %o2,0
	be,a L537
	add %o3,1,%o3
	ld [%o2],%o1
L538:
	ld [%o4+%lo(_bucket_free_list)],%o0
	st %o0,[%o2]
	st %o2,[%o4+%lo(_bucket_free_list)]
	orcc %o1,%g0,%o2
	bne,a L538
	ld [%o2],%o1
	sll %o3,2,%o0
	add %o3,1,%o3
L537:
	cmp %o3,31
	ble L531
	st %g0,[%o0+%o5]
	sethi %hi(_ptrace_active),%o0
	ld [%o0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L532
	sethi %hi(_fetch_num),%o0
	ld [%o0+%lo(_fetch_num)],%o0
	cmp %o0,0
	be L539
	sethi %hi(_fetch_num),%o0
	sethi %hi(_ptrace_active),%l4
	sethi %hi(_fetch_head),%l0
	sethi %hi(_fetch_data),%l3
	sethi %hi(_ruu_ifq_size),%l2
	sethi %hi(_fetch_num),%l1
L536:
	ld [%l4+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L535
	ld [%l0+%lo(_fetch_head)],%o2
	ld [%l3+%lo(_fetch_data)],%o1
	sll %o2,1,%o0
	add %o0,%o2,%o0
	sll %o0,3,%o0
	add %o1,%o0,%o1
	call ___ptrace_endinst,0
	ld [%o1+20],%o0
L535:
	ld [%l0+%lo(_fetch_head)],%o0
	add %o0,1,%o0
	ld [%l2+%lo(_ruu_ifq_size)],%o1
	add %o1,-1,%o1
	and %o0,%o1,%o0
	st %o0,[%l0+%lo(_fetch_head)]
	ld [%l1+%lo(_fetch_num)],%o0
	add %o0,-1,%o0
	cmp %o0,0
	bne L536
	st %o0,[%l1+%lo(_fetch_num)]
L532:
	sethi %hi(_fetch_num),%o0
L539:
	st %g0,[%o0+%lo(_fetch_num)]
	sethi %hi(_fetch_head),%o0
	st %g0,[%o0+%lo(_fetch_head)]
	sethi %hi(_fetch_tail),%o0
	st %g0,[%o0+%lo(_fetch_tail)]
	sethi %hi(_recover_PC),%o0
	ld [%o0+%lo(_recover_PC)],%o0
	sethi %hi(_fetch_regs_PC),%o1
	st %o0,[%o1+%lo(_fetch_regs_PC)]
	sethi %hi(_fetch_pred_PC),%o1
	st %o0,[%o1+%lo(_fetch_pred_PC)]
	ret
	restore
	.align 4
	.proc	020
_tracer_init:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_spec_mode),%g2
	st %g0,[%g2+%lo(_spec_mode)]
	mov 0,%g3
	sethi %hi(_use_spec_R),%g2
	or %g2,%lo(_use_spec_R),%i0
L544:
	sll %g3,2,%g2
	add %g3,1,%g3
	cmp %g3,0
	ble L544
	st %g0,[%g2+%i0]
	mov 0,%g3
	sethi %hi(_use_spec_F),%g2
	or %g2,%lo(_use_spec_F),%i0
L548:
	sll %g3,2,%g2
	add %g3,1,%g3
	cmp %g3,0
	ble L548
	st %g0,[%g2+%i0]
	sethi %hi(_use_spec_HI),%g2
	st %g0,[%g2+%lo(_use_spec_HI)]
	sethi %hi(_use_spec_LO),%g2
	st %g0,[%g2+%lo(_use_spec_LO)]
	sethi %hi(_use_spec_FCC),%g2
	st %g0,[%g2+%lo(_use_spec_FCC)]
	mov 0,%g3
	sethi %hi(_store_htable),%g2
	or %g2,%lo(_store_htable),%i0
L552:
	sll %g3,2,%g2
	add %g3,1,%g3
	cmp %g3,31
	ble L552
	st %g0,[%g2+%i0]
	ret
	restore
	.align 8
LC328:
	.ascii "spec_mem_access\0"
	.align 8
LC329:
	.ascii "access size not supported in mis-speculative mode\0"
	.align 4
	.proc	020
_spec_mem_access:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	add %i3,-1,%o0
	andcc %i3,%o0,%g0
	bne L553
	andcc %i1,%o0,%g0
	bne L553
	sethi %hi(_ld_text_base),%o0
	ld [%o0+%lo(_ld_text_base)],%o1
	cmp %i1,%o1
	blu L557
	sethi %hi(_ld_text_size),%o0
	ld [%o0+%lo(_ld_text_size)],%o0
	add %o1,%o0,%o0
	cmp %i1,%o0
	bgeu L557
	cmp %i0,0
	be L617
	srl %i1,24,%l0
L557:
	sethi %hi(_ld_data_base),%o0
	ld [%o0+%lo(_ld_data_base)],%o0
	cmp %i1,%o0
	blu L553
	sethi %hi(_ld_stack_base),%o0
	ld [%o0+%lo(_ld_stack_base)],%o0
	cmp %i1,%o0
	bgeu L553
	srl %i1,24,%l0
L617:
	srl %i1,16,%o0
	xor %l0,%o0,%l0
	srl %i1,8,%o0
	xor %l0,%o0,%l0
	xor %l0,%i1,%l0
	and %l0,31,%l0
	sethi %hi(_store_htable),%o0
	or %o0,%lo(_store_htable),%o0
	sll %l0,2,%o1
	ld [%o1+%o0],%o3
	cmp %o3,0
	be L618
	mov 0,%o2
	sethi %hi(_store_htable),%o0
	or %o0,%lo(_store_htable),%o4
	sll %l0,2,%o1
	ld [%o3+4],%o0
L619:
	cmp %o0,%i1
	bne,a L561
	mov %o3,%o2
	cmp %o2,0
	be L618
	cmp %o3,0
	ld [%o3],%o0
	st %o0,[%o2]
	ld [%o1+%o4],%o0
	st %o0,[%o3]
	b L618
	st %o3,[%o1+%o4]
L561:
	ld [%o3],%o3
	cmp %o3,0
	bne,a L619
	ld [%o3+4],%o0
	cmp %o3,0
L618:
	bne L620
	cmp %i3,2
	cmp %i0,1
	bne L620
	cmp %i3,2
	sethi %hi(_bucket_free_list),%l1
	ld [%l1+%lo(_bucket_free_list)],%o0
	cmp %o0,0
	bne L621
	sethi %hi(_bucket_free_list),%o1
	mov 1,%o0
	call _calloc,0
	mov 16,%o1
	cmp %o0,0
	bne L566
	st %o0,[%l1+%lo(_bucket_free_list)]
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC328),%o1
	or %o1,%lo(LC328),%o1
	mov 2860,%o2
	sethi %hi(LC197),%o3
	call __fatal,0
	or %o3,%lo(LC197),%o3
L566:
	sethi %hi(_bucket_free_list),%o1
L621:
	ld [%o1+%lo(_bucket_free_list)],%o3
	ld [%o3],%o0
	st %o0,[%o1+%lo(_bucket_free_list)]
	sethi %hi(_bugcompat_mode),%o0
	ld [%o0+%lo(_bugcompat_mode)],%o0
	cmp %o0,0
	bne L620
	cmp %i3,2
	sethi %hi(_store_htable),%o0
	or %o0,%lo(_store_htable),%o0
	sll %l0,2,%o2
	ld [%o2+%o0],%o1
	st %o1,[%o3]
	st %o3,[%o2+%o0]
	st %i1,[%o3+4]
	st %g0,[%o3+8]
	st %g0,[%o3+12]
L620:
	be L579
	cmp %i3,2
	bg L612
	cmp %i3,4
	cmp %i3,1
	be L570
	cmp %i0,0
	b L622
	sethi %hi(LC6),%o0
L612:
	be L588
	cmp %i3,8
	be L597
	cmp %i0,0
	b L622
	sethi %hi(LC6),%o0
L570:
	bne,a L571
	ldub [%i2],%o0
	cmp %o3,0
	be L572
	srl %i1,16,%o1
	ldub [%o3+8],%o0
L613:
	b L553
	stb %o0,[%i2]
L572:
	sethi %hi(32767),%o0
	or %o0,%lo(32767),%l0
	and %o1,%l0,%o1
	sethi %hi(_mem_table),%o0
	or %o0,%lo(_mem_table),%i0
	sll %o1,2,%o1
	ld [%o1+%i0],%o0
	cmp %o0,0
	be L574
	mov 0,%o0
	mov %i1,%o1
	mov 1,%o2
	call _mem_valid,0
	mov 1,%o3
	srl %i1,16,%o0
	and %o0,%l0,%o0
	sll %o0,2,%l0
	ld [%l0+%i0],%o0
	cmp %o0,0
	bne L623
	sll %i1,1,%o1
	call _mem_newblock,0
	nop
	st %o0,[%l0+%i0]
	sll %i1,1,%o1
L623:
	srl %o1,17,%o1
	sethi %hi(_mem_table),%o2
	or %o2,%lo(_mem_table),%o2
	sll %o1,2,%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %i1,%o0,%o0
	ld [%o1+%o2],%o1
	b L613
	ldub [%o1+%o0],%o0
L574:
	b L613
	mov 0,%o0
L571:
	b L553
	stb %o0,[%o3+8]
L579:
	cmp %i0,0
	bne,a L580
	lduh [%i2],%o0
	cmp %o3,0
	be L581
	srl %i1,16,%o1
	lduh [%o3+8],%o0
L614:
	b L553
	sth %o0,[%i2]
L581:
	sethi %hi(32767),%o0
	or %o0,%lo(32767),%l0
	and %o1,%l0,%o1
	sethi %hi(_mem_table),%o0
	or %o0,%lo(_mem_table),%i0
	sll %o1,2,%o1
	ld [%o1+%i0],%o0
	cmp %o0,0
	be L583
	mov 0,%o0
	mov %i1,%o1
	mov 2,%o2
	call _mem_valid,0
	mov 1,%o3
	srl %i1,16,%o0
	and %o0,%l0,%o0
	sll %o0,2,%l0
	ld [%l0+%i0],%o0
	cmp %o0,0
	bne L624
	sll %i1,1,%o1
	call _mem_newblock,0
	nop
	st %o0,[%l0+%i0]
	sll %i1,1,%o1
L624:
	srl %o1,17,%o1
	sethi %hi(_mem_table),%o2
	or %o2,%lo(_mem_table),%o2
	sll %o1,2,%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %i1,%o0,%o0
	ld [%o1+%o2],%o1
	b L614
	lduh [%o1+%o0],%o0
L583:
	b L614
	mov 0,%o0
L580:
	b L553
	sth %o0,[%o3+8]
L588:
	cmp %i0,0
	bne,a L589
	ld [%i2],%o0
	cmp %o3,0
	be L590
	srl %i1,16,%o1
	ld [%o3+8],%o0
L615:
	b L553
	st %o0,[%i2]
L590:
	sethi %hi(32767),%o0
	or %o0,%lo(32767),%l0
	and %o1,%l0,%o1
	sethi %hi(_mem_table),%o0
	or %o0,%lo(_mem_table),%i0
	sll %o1,2,%o1
	ld [%o1+%i0],%o0
	cmp %o0,0
	be L592
	mov 0,%o0
	mov %i1,%o1
	mov 4,%o2
	call _mem_valid,0
	mov 1,%o3
	srl %i1,16,%o0
	and %o0,%l0,%o0
	sll %o0,2,%l0
	ld [%l0+%i0],%o0
	cmp %o0,0
	bne L625
	sll %i1,1,%o1
	call _mem_newblock,0
	nop
	st %o0,[%l0+%i0]
	sll %i1,1,%o1
L625:
	srl %o1,17,%o1
	sethi %hi(_mem_table),%o2
	or %o2,%lo(_mem_table),%o2
	sll %o1,2,%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %i1,%o0,%o0
	ld [%o1+%o2],%o1
	b L615
	ld [%o1+%o0],%o0
L592:
	b L553
	st %o0,[%i2]
L589:
	b L553
	st %o0,[%o3+8]
L597:
	bne,a L598
	ld [%i2],%o0
	cmp %o3,0
	be L599
	srl %i1,16,%o1
	ld [%o3+8],%o0
	st %o0,[%i2]
	ld [%o3+12],%o0
L616:
	b L553
	st %o0,[%i2+4]
L599:
	sethi %hi(32767),%o0
	or %o0,%lo(32767),%l0
	and %o1,%l0,%o1
	sethi %hi(_mem_table),%o0
	or %o0,%lo(_mem_table),%i0
	sll %o1,2,%o1
	ld [%o1+%i0],%o0
	cmp %o0,0
	be L601
	mov 0,%o0
	mov %i1,%o1
	mov 4,%o2
	call _mem_valid,0
	mov 1,%o3
	srl %i1,16,%o0
	and %o0,%l0,%o0
	sll %o0,2,%l0
	ld [%l0+%i0],%o0
	cmp %o0,0
	bne L626
	sll %i1,1,%o1
	call _mem_newblock,0
	nop
	st %o0,[%l0+%i0]
	sll %i1,1,%o1
L626:
	srl %o1,17,%o1
	sethi %hi(_mem_table),%o2
	or %o2,%lo(_mem_table),%o2
	sll %o1,2,%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %i1,%o0,%o0
	ld [%o1+%o2],%o1
	ld [%o1+%o0],%o0
L601:
	st %o0,[%i2]
	add %i1,4,%o2
	sll %o2,1,%o0
	srl %o0,17,%o0
	sethi %hi(_mem_table),%o1
	or %o1,%lo(_mem_table),%i0
	sll %o0,2,%l0
	ld [%l0+%i0],%o0
	cmp %o0,0
	be L605
	mov 0,%o0
	mov %o2,%o1
	mov 4,%o2
	call _mem_valid,0
	mov 1,%o3
	ld [%l0+%i0],%o0
	cmp %o0,0
	bne L627
	add %i1,4,%o3
	call _mem_newblock,0
	nop
	st %o0,[%l0+%i0]
	add %i1,4,%o3
L627:
	sll %o3,1,%o1
	srl %o1,17,%o1
	sethi %hi(_mem_table),%o2
	or %o2,%lo(_mem_table),%o2
	sll %o1,2,%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %o3,%o0,%o3
	ld [%o1+%o2],%o0
	b L616
	ld [%o0+%o3],%o0
L605:
	b L553
	st %o0,[%i2+4]
L598:
	st %o0,[%o3+8]
	ld [%i2+4],%o0
	b L553
	st %o0,[%o3+12]
L622:
	or %o0,%lo(LC6),%o0
	sethi %hi(LC328),%o1
	or %o1,%lo(LC328),%o1
	mov 2969,%o2
	sethi %hi(LC329),%o3
	call __panic,0
	or %o3,%lo(LC329),%o3
L553:
	ret
	restore
	.align 8
LC330:
	.ascii "** speculative memory contents **\12\0"
	.align 8
LC331:
	.ascii "[0x%08x]: %12.0f/0x%08x:%08x\12\0"
	.align 4
	.proc	020
_mspec_dump:
	!#PROLOGUE# 0
	save %sp,-120,%sp
	!#PROLOGUE# 1
	mov %i0,%o0
	sethi %hi(LC330),%o1
	call _fprintf,0
	or %o1,%lo(LC330),%o1
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L629
	sethi %hi(LC203),%o0
	b L630
	or %o0,%lo(LC203),%o2
L629:
	sethi %hi(LC204),%o0
	or %o0,%lo(LC204),%o2
L630:
	mov %i0,%o0
	sethi %hi(LC320),%o1
	call _fprintf,0
	or %o1,%lo(LC320),%o1
	mov 0,%l1
	sethi %hi(_store_htable),%o0
	or %o0,%lo(_store_htable),%l3
	sethi %hi(LC331),%l2
	sll %l1,2,%o0
L641:
	ld [%o0+%l3],%l0
	cmp %l0,0
	be,a L639
	add %l1,1,%l1
	ld [%l0+12],%o0
L640:
	st %o0,[%sp+92]
	mov %i0,%o0
	or %l2,%lo(LC331),%o1
	ld [%l0+4],%o2
	ld [%l0+8],%o3
	ld [%l0+12],%o4
	call _fprintf,0
	ld [%l0+8],%o5
	ld [%l0],%l0
	cmp %l0,0
	bne,a L640
	ld [%l0+12],%o0
	add %l1,1,%l1
L639:
	cmp %l1,31
	ble L641
	sll %l1,2,%o0
	ret
	restore
	.align 8
LC332:
	.ascii "simoo_mem_obj\0"
	.align 8
LC333:
	.ascii "bogus access type\0"
	.align 4
	.proc	0102
_simoo_mem_obj:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	cmp %i0,0
	bne L643
	cmp %i0,1
	b L644
	mov 0,%i0
L643:
	bne L645
	sethi %hi(LC6),%o0
	b L644
	mov 1,%i0
L645:
	or %o0,%lo(LC6),%o0
	sethi %hi(LC332),%o1
	or %o1,%lo(LC332),%o1
	mov 3012,%o2
	sethi %hi(LC333),%o3
	call __panic,0
	or %o3,%lo(LC333),%o3
L644:
	mov %i0,%o0
	mov %i1,%o1
	mov %i3,%o2
	call _mem_valid,0
	mov 0,%o3
	cmp %o0,0
	be,a L647
	sethi %hi(_spec_mode),%o0
	b L650
	mov %o0,%i0
L647:
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L648
	mov %i0,%o0
	mov %i1,%o1
	mov %i2,%o2
	call _spec_mem_access,0
	mov %i3,%o3
	b L650
	mov 0,%i0
L648:
	mov %i1,%o1
	mov %i2,%o2
	call _mem_access,0
	mov %i3,%o3
	mov 0,%i0
L650:
	ret
	restore
	.align 8
LC334:
	.ascii "ruu_link_idep\0"
	.align 4
	.proc	020
_InstSRA:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov %i0,%i3
	lduh [%i3+4],%i0
	and %i0,255,%i2
	srl %i2,5,%i1
	sethi %hi(_use_spec_R),%g3
	or %g3,%lo(_use_spec_R),%g3
	sll %i1,2,%i1
	and %i0,31,%i0
	mov 1,%g2
	sll %g2,%i0,%g2
	ld [%i1+%g3],%g3
	andcc %g2,%g3,%g0
	be L667
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%g2
	sll %i2,2,%g3
	ld [%g3+%g2],%g2
	cmp %g2,0
	bl L697
	sethi %hi(_spec_mode),%g2
	b L698
	ld [%g2+%lo(_spec_mode)],%g2
L667:
	ldub [%i3+5],%g2
	sethi %hi(_regs_R),%g3
	or %g3,%lo(_regs_R),%g3
	sll %g2,2,%g2
	ld [%g2+%g3],%g2
	cmp %g2,0
	bge L666
	sethi %hi(_spec_mode),%g2
L697:
	ld [%g2+%lo(_spec_mode)],%g2
	cmp %g2,0
	be L669
	sethi %hi(_use_spec_R),%i2
	ld [%i3+4],%g2
	ldub [%i3+6],%g3
	srl %g3,5,%g3
	or %i2,%lo(_use_spec_R),%i2
	sll %g3,2,%g3
	srl %g2,8,%g2
	and %g2,31,%g2
	mov 1,%i1
	sll %i1,%g2,%g2
	ld [%g3+%i2],%i0
	or %g2,%i0,%g2
	st %g2,[%g3+%i2]
	ldub [%i3+6],%g3
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%i5
	sll %g3,2,%i4
	lduh [%i3+4],%g2
	and %g2,255,%i0
	srl %i0,5,%g3
	sll %g3,2,%g3
	and %g2,31,%g2
	sll %i1,%g2,%i1
	ld [%g3+%i2],%g2
	andcc %i1,%g2,%g0
	be L673
	sll %i0,2,%g2
	b L674
	ld [%g2+%i5],%g2
L669:
	ldub [%i3+6],%g3
	sethi %hi(_regs_R),%g2
	or %g2,%lo(_regs_R),%i5
	sll %g3,2,%i4
	lduh [%i3+4],%i0
	and %i0,255,%i2
	srl %i2,5,%i1
	sethi %hi(_use_spec_R),%g3
	or %g3,%lo(_use_spec_R),%g3
	sll %i1,2,%i1
	and %i0,31,%i0
	mov 1,%g2
	sll %g2,%i0,%g2
	ld [%i1+%g3],%g3
	andcc %g2,%g3,%g0
	be L673
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%g2
	b L692
	sll %i2,2,%g3
L673:
	ldub [%i3+5],%g3
	sethi %hi(_regs_R),%g2
	or %g2,%lo(_regs_R),%g2
	sll %g3,2,%g3
L692:
	ld [%g3+%g2],%g2
L674:
	st %g2,[%i5+%i4]
	ld [%i3+4],%g2
	mov %g2,%g3
	andcc %g2,0xff,%g0
	be L685
	mov 0,%i1
	sethi %hi(_spec_mode),%g2
	ld [%g2+%lo(_spec_mode)],%o7
	sethi %hi(_use_spec_R),%g2
	or %g2,%lo(_use_spec_R),%i4
	mov 1,%g4
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%g1
	sethi %hi(-2147483648),%i2
	sethi %hi(_regs_R),%g2
	or %g2,%lo(_regs_R),%i5
	cmp %o7,0
L699:
	be L678
	srl %g3,8,%g2
	srl %g2,3,%i0
	and %i0,28,%i0
	and %g2,31,%g2
	sll %g4,%g2,%g2
	ld [%i0+%i4],%g3
	or %g2,%g3,%g2
	st %g2,[%i0+%i4]
	ld [%i3+4],%g2
	srl %g2,8,%g2
	and %g2,255,%g3
	sll %g3,2,%i0
	srl %g3,5,%g3
	sll %g3,2,%g3
	and %g2,31,%g2
	sll %g4,%g2,%g2
	ld [%g3+%i4],%g3
	andcc %g2,%g3,%g0
	be,a L680
	ldub [%i3+6],%g2
	b L693
	ld [%i0+%g1],%g2
L680:
	sll %g2,2,%g2
	ld [%g2+%i5],%g2
L693:
	sra %g2,1,%g2
	or %g2,%i2,%g2
	b L677
	st %g2,[%g1+%i0]
L678:
	ld [%i3+4],%g2
	srl %g2,8,%g2
	and %g2,255,%g3
	sll %g3,2,%i0
	srl %g3,5,%g3
	sll %g3,2,%g3
	and %g2,31,%g2
	sll %g4,%g2,%g2
	ld [%g3+%i4],%g3
	andcc %g2,%g3,%g0
	be,a L682
	ldub [%i3+6],%g2
	b L694
	ld [%i0+%g1],%g2
L682:
	sll %g2,2,%g2
	ld [%g2+%i5],%g2
L694:
	sra %g2,1,%g2
	or %g2,%i2,%g2
	st %g2,[%i5+%i0]
L677:
	add %i1,1,%i1
	ld [%i3+4],%g3
	and %g3,255,%g2
	cmp %i1,%g2
	blu L699
	cmp %o7,0
	b,a L685
L666:
	ld [%g2+%lo(_spec_mode)],%g2
L698:
	cmp %g2,0
	be L686
	sethi %hi(_use_spec_R),%i2
	ld [%i3+4],%g2
	ldub [%i3+6],%g3
	srl %g3,5,%g3
	or %i2,%lo(_use_spec_R),%i2
	sll %g3,2,%g3
	srl %g2,8,%g2
	and %g2,31,%g2
	mov 1,%i1
	sll %i1,%g2,%g2
	ld [%g3+%i2],%i0
	or %g2,%i0,%g2
	st %g2,[%g3+%i2]
	ld [%i3+4],%g2
	ldub [%i3+6],%i0
	sethi %hi(_spec_regs_R),%g3
	or %g3,%lo(_spec_regs_R),%g1
	and %g2,255,%i5
	srl %g2,16,%g2
	and %g2,255,%i4
	srl %i4,5,%g3
	sll %g3,2,%g3
	and %g2,31,%g2
	sll %i1,%g2,%i1
	ld [%g3+%i2],%g2
	andcc %i1,%g2,%g0
	be L688
	sll %i0,2,%i0
	sll %i4,2,%g2
	b L695
	ld [%g2+%g1],%g2
L688:
	ldub [%i3+5],%g2
	sethi %hi(_regs_R),%g3
	or %g3,%lo(_regs_R),%g3
	sll %g2,2,%g2
	ld [%g2+%g3],%g2
L695:
	sra %g2,%i5,%g2
	b L685
	st %g2,[%g1+%i0]
L686:
	ld [%i3+4],%g3
	ldub [%i3+6],%i0
	sethi %hi(_regs_R),%g2
	or %g2,%lo(_regs_R),%o7
	sll %i0,2,%i5
	and %g3,255,%i4
	srl %g3,16,%g3
	and %g3,255,%i2
	srl %i2,5,%i1
	sethi %hi(_use_spec_R),%i0
	or %i0,%lo(_use_spec_R),%i0
	sll %i1,2,%i1
	and %g3,31,%g3
	mov 1,%g2
	sll %g2,%g3,%g2
	ld [%i1+%i0],%g3
	andcc %g2,%g3,%g0
	be L690
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%g2
	sll %i2,2,%g3
	b L696
	ld [%g3+%g2],%g2
L690:
	ldub [%i3+5],%g2
	sethi %hi(_regs_R),%g3
	or %g3,%lo(_regs_R),%g3
	sll %g2,2,%g2
	ld [%g2+%g3],%g2
L696:
	sra %g2,%i4,%g2
	st %g2,[%o7+%i5]
L685:
	ret
	restore
	.align 4
	.proc	020
_InstSRAV:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov %i0,%i3
	ld [%i3+4],%g3
	srl %g3,24,%i2
	srl %g3,29,%g3
	sethi %hi(_use_spec_R),%i0
	or %i0,%lo(_use_spec_R),%i0
	sll %g3,2,%g3
	and %i2,31,%i1
	mov 1,%g2
	sll %g2,%i1,%g2
	ld [%g3+%i0],%g3
	andcc %g2,%g3,%g0
	be L701
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%g2
	sll %i2,2,%g3
	b L729
	ld [%g3+%g2],%g2
L701:
	ldub [%i3+4],%g2
	sethi %hi(_regs_R),%g3
	or %g3,%lo(_regs_R),%g3
	sll %g2,2,%g2
	ld [%g2+%g3],%g2
L729:
	and %g2,31,%g4
	lduh [%i3+4],%i0
	and %i0,255,%i2
	srl %i2,5,%i1
	sethi %hi(_use_spec_R),%g3
	or %g3,%lo(_use_spec_R),%g3
	sll %i1,2,%i1
	and %i0,31,%i0
	mov 1,%g2
	sll %g2,%i0,%g2
	ld [%i1+%g3],%g3
	andcc %g2,%g3,%g0
	be L704
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%g2
	sll %i2,2,%g3
	ld [%g3+%g2],%g2
	cmp %g2,0
	bl L734
	sethi %hi(_spec_mode),%g2
	b L735
	ld [%g2+%lo(_spec_mode)],%g2
L704:
	ldub [%i3+5],%g2
	sethi %hi(_regs_R),%g3
	or %g3,%lo(_regs_R),%g3
	sll %g2,2,%g2
	ld [%g2+%g3],%g2
	cmp %g2,0
	bge L703
	sethi %hi(_spec_mode),%g2
L734:
	ld [%g2+%lo(_spec_mode)],%g2
	cmp %g2,0
	be L706
	sethi %hi(_use_spec_R),%i2
	ld [%i3+4],%g2
	ldub [%i3+6],%g3
	srl %g3,5,%g3
	or %i2,%lo(_use_spec_R),%i2
	sll %g3,2,%g3
	srl %g2,8,%g2
	and %g2,31,%g2
	mov 1,%i1
	sll %i1,%g2,%g2
	ld [%g3+%i2],%i0
	or %g2,%i0,%g2
	st %g2,[%g3+%i2]
	ldub [%i3+6],%g3
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%i5
	sll %g3,2,%i4
	lduh [%i3+4],%g2
	and %g2,255,%i0
	srl %i0,5,%g3
	sll %g3,2,%g3
	and %g2,31,%g2
	sll %i1,%g2,%i1
	ld [%g3+%i2],%g2
	andcc %i1,%g2,%g0
	be L710
	sll %i0,2,%g2
	b L711
	ld [%g2+%i5],%g2
L706:
	ldub [%i3+6],%g3
	sethi %hi(_regs_R),%g2
	or %g2,%lo(_regs_R),%i5
	sll %g3,2,%i4
	lduh [%i3+4],%i0
	and %i0,255,%i2
	srl %i2,5,%i1
	sethi %hi(_use_spec_R),%g3
	or %g3,%lo(_use_spec_R),%g3
	sll %i1,2,%i1
	and %i0,31,%i0
	mov 1,%g2
	sll %g2,%i0,%g2
	ld [%i1+%g3],%g3
	andcc %g2,%g3,%g0
	be L710
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%g2
	b L730
	sll %i2,2,%g3
L710:
	ldub [%i3+5],%g3
	sethi %hi(_regs_R),%g2
	or %g2,%lo(_regs_R),%g2
	sll %g3,2,%g3
L730:
	ld [%g3+%g2],%g2
L711:
	mov 0,%i1
	cmp %i1,%g4
	bgeu L722
	st %g2,[%i5+%i4]
	sethi %hi(_spec_mode),%g2
	ld [%g2+%lo(_spec_mode)],%o0
	sethi %hi(_use_spec_R),%g2
	or %g2,%lo(_use_spec_R),%i4
	mov 1,%o7
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%g1
	sethi %hi(-2147483648),%i2
	sethi %hi(_regs_R),%g2
	or %g2,%lo(_regs_R),%i5
	cmp %o0,0
L736:
	be,a L715
	ld [%i3+4],%g2
	ld [%i3+4],%g2
	srl %g2,8,%g2
	srl %g2,3,%i0
	and %i0,28,%i0
	and %g2,31,%g2
	sll %o7,%g2,%g2
	ld [%i0+%i4],%g3
	or %g2,%g3,%g2
	st %g2,[%i0+%i4]
	ld [%i3+4],%g2
	srl %g2,8,%g2
	and %g2,255,%g3
	sll %g3,2,%i0
	srl %g3,5,%g3
	sll %g3,2,%g3
	and %g2,31,%g2
	sll %o7,%g2,%g2
	ld [%g3+%i4],%g3
	andcc %g2,%g3,%g0
	be,a L717
	ldub [%i3+6],%g2
	b L731
	ld [%i0+%g1],%g2
L717:
	sll %g2,2,%g2
	ld [%g2+%i5],%g2
L731:
	sra %g2,1,%g2
	or %g2,%i2,%g2
	b L714
	st %g2,[%g1+%i0]
L715:
	srl %g2,8,%g2
	and %g2,255,%g3
	sll %g3,2,%i0
	srl %g3,5,%g3
	sll %g3,2,%g3
	and %g2,31,%g2
	sll %o7,%g2,%g2
	ld [%g3+%i4],%g3
	andcc %g2,%g3,%g0
	be,a L719
	ldub [%i3+6],%g2
	b L732
	ld [%i0+%g1],%g2
L719:
	sll %g2,2,%g2
	ld [%g2+%i5],%g2
L732:
	sra %g2,1,%g2
	or %g2,%i2,%g2
	st %g2,[%i5+%i0]
L714:
	add %i1,1,%i1
	cmp %i1,%g4
	blu L736
	cmp %o0,0
	b,a L722
L703:
	ld [%g2+%lo(_spec_mode)],%g2
L735:
	cmp %g2,0
	be L723
	sethi %hi(_use_spec_R),%i2
	ld [%i3+4],%g2
	ldub [%i3+6],%g3
	srl %g3,5,%g3
	or %i2,%lo(_use_spec_R),%i2
	sll %g3,2,%g3
	srl %g2,8,%g2
	and %g2,31,%g2
	mov 1,%i1
	sll %i1,%g2,%g2
	ld [%g3+%i2],%i0
	or %g2,%i0,%g2
	st %g2,[%g3+%i2]
	ldub [%i3+6],%g3
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%o7
	sll %g3,2,%i5
	lduh [%i3+4],%g2
	and %g2,255,%i0
	srl %i0,5,%g3
	sll %g3,2,%g3
	and %g2,31,%g2
	sll %i1,%g2,%i1
	ld [%g3+%i2],%g2
	andcc %i1,%g2,%g0
	be L727
	mov %g4,%i4
	sll %i0,2,%g2
	ld [%g2+%o7],%g2
	b L728
	sra %g2,%g4,%g2
L723:
	ldub [%i3+6],%g3
	sethi %hi(_regs_R),%g2
	or %g2,%lo(_regs_R),%o7
	sll %g3,2,%i5
	lduh [%i3+4],%i0
	and %i0,255,%i2
	srl %i2,5,%i1
	sethi %hi(_use_spec_R),%g3
	or %g3,%lo(_use_spec_R),%g3
	sll %i1,2,%i1
	and %i0,31,%i0
	mov 1,%g2
	sll %g2,%i0,%g2
	ld [%i1+%g3],%g3
	andcc %g2,%g3,%g0
	be L727
	mov %g4,%i4
	sethi %hi(_spec_regs_R),%g2
	or %g2,%lo(_spec_regs_R),%g2
	sll %i2,2,%g3
	b L733
	ld [%g3+%g2],%g2
L727:
	ldub [%i3+5],%g2
	sethi %hi(_regs_R),%g3
	or %g3,%lo(_regs_R),%g3
	sll %g2,2,%g2
	ld [%g2+%g3],%g2
L733:
	sra %g2,%i4,%g2
L728:
	st %g2,[%o7+%i5]
L722:
	ret
	restore
	.align 4
	.proc	020
_InstMULT:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	mov 0,%i5
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L738
	mov 0,%i4
	mov 1,%o0
	sethi %hi(_use_spec_HI),%o1
	st %o0,[%o1+%lo(_use_spec_HI)]
	sethi %hi(_spec_regs_HI),%o0
	b L739
	st %g0,[%o0+%lo(_spec_regs_HI)]
L738:
	sethi %hi(_regs_HI),%o0
	st %g0,[%o0+%lo(_regs_HI)]
L739:
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L740
	mov 1,%o0
	sethi %hi(_use_spec_LO),%o1
	st %o0,[%o1+%lo(_use_spec_LO)]
	sethi %hi(_spec_regs_LO),%o0
	b L741
	st %g0,[%o0+%lo(_spec_regs_LO)]
L740:
	sethi %hi(_regs_LO),%o0
	st %g0,[%o0+%lo(_regs_LO)]
L741:
	ld [%i0+4],%o1
	srl %o1,24,%o4
	srl %o1,29,%o1
	sethi %hi(_use_spec_R),%o2
	or %o2,%lo(_use_spec_R),%o2
	sll %o1,2,%o1
	and %o4,31,%o3
	mov 1,%o0
	sll %o0,%o3,%o0
	ld [%o1+%o2],%o1
	andcc %o0,%o1,%g0
	be L742
	sethi %hi(_spec_regs_R),%o0
	or %o0,%lo(_spec_regs_R),%o0
	b L821
	sll %o4,2,%o1
L742:
	ldub [%i0+4],%o1
	sethi %hi(_regs_R),%o0
	or %o0,%lo(_regs_R),%o0
	sll %o1,2,%o1
L821:
	ld [%o1+%o0],%l7
	lduh [%i0+4],%o2
	and %o2,255,%o4
	srl %o4,5,%o3
	sethi %hi(_use_spec_R),%o1
	or %o1,%lo(_use_spec_R),%o1
	sll %o3,2,%o3
	and %o2,31,%o2
	mov 1,%o0
	sll %o0,%o2,%o0
	ld [%o3+%o1],%o1
	andcc %o0,%o1,%g0
	be L744
	sethi %hi(_spec_regs_R),%o0
	or %o0,%lo(_spec_regs_R),%o0
	b L822
	sll %o4,2,%o1
L744:
	ldub [%i0+5],%o1
	sethi %hi(_regs_R),%o0
	or %o0,%lo(_regs_R),%o0
	sll %o1,2,%o1
L822:
	cmp %l7,0
	bge L746
	ld [%o1+%o0],%l3
	mov 1,%i4
	xnor %g0,%l7,%l7
	add %l7,1,%l7
L746:
	cmp %l3,0
	bge L840
	cmp %l7,0
	mov 1,%i5
	xnor %g0,%l3,%l3
	add %l3,1,%l3
L840:
	bge L841
	mov 0,%l6
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L749
	mov 1,%o0
	sethi %hi(_use_spec_LO),%o1
	st %o0,[%o1+%lo(_use_spec_LO)]
	sethi %hi(_spec_regs_LO),%o0
	b L841
	st %l3,[%o0+%lo(_spec_regs_LO)]
L749:
	sethi %hi(_regs_LO),%o0
	st %l3,[%o0+%lo(_regs_LO)]
	mov 0,%l6
L841:
	sethi %hi(_spec_mode),%i2
	sethi %hi(_use_spec_HI),%l5
	mov 1,%i1
	sethi %hi(_spec_regs_HI),%l4
	sethi %hi(_regs_HI),%l2
	sethi %hi(_use_spec_LO),%l1
	sethi %hi(_spec_regs_LO),%l0
	sethi %hi(_regs_LO),%i0
	mov %l3,%i3
	ld [%i2+%lo(_spec_mode)],%o0
L845:
	cmp %o0,0
	be L754
	ld [%l5+%lo(_use_spec_HI)],%o0
	st %i1,[%l5+%lo(_use_spec_HI)]
	ld [%l4+%lo(_spec_regs_HI)],%o0
	sll %o0,1,%o0
	b L755
	st %o0,[%l4+%lo(_spec_regs_HI)]
L754:
	cmp %o0,0
	bne L823
	ld [%l4+%lo(_spec_regs_HI)],%o0
	ld [%l2+%lo(_regs_HI)],%o0
L823:
	sll %o0,1,%o0
	st %o0,[%l2+%lo(_regs_HI)]
L755:
	ld [%i2+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L760
	ld [%l1+%lo(_use_spec_LO)],%o0
	st %i1,[%l5+%lo(_use_spec_HI)]
	ld [%l1+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	bne L763
	ld [%l0+%lo(_spec_regs_LO)],%o0
	ld [%i0+%lo(_regs_LO)],%o0
L763:
	mov 31,%o1
	call _extractl,0
	mov 1,%o2
	mov %o0,%o1
	ld [%l5+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	bne L824
	ld [%l4+%lo(_spec_regs_HI)],%o0
	ld [%l2+%lo(_regs_HI)],%o0
L824:
	add %o1,%o0,%o0
	b L761
	st %o0,[%l4+%lo(_spec_regs_HI)]
L760:
	cmp %o0,0
	bne L767
	ld [%l0+%lo(_spec_regs_LO)],%o0
	ld [%i0+%lo(_regs_LO)],%o0
L767:
	mov 31,%o1
	call _extractl,0
	mov 1,%o2
	mov %o0,%o1
	ld [%l5+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	bne L825
	ld [%l4+%lo(_spec_regs_HI)],%o0
	ld [%l2+%lo(_regs_HI)],%o0
L825:
	add %o1,%o0,%o0
	st %o0,[%l2+%lo(_regs_HI)]
L761:
	ld [%i2+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L770
	ld [%l1+%lo(_use_spec_LO)],%o0
	st %i1,[%l1+%lo(_use_spec_LO)]
	ld [%l1+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	bne L826
	ld [%l0+%lo(_spec_regs_LO)],%o0
	ld [%i0+%lo(_regs_LO)],%o0
L826:
	sll %o0,1,%o0
	b L771
	st %o0,[%l0+%lo(_spec_regs_LO)]
L770:
	cmp %o0,0
	bne L827
	ld [%l0+%lo(_spec_regs_LO)],%o0
	ld [%i0+%lo(_regs_LO)],%o0
L827:
	sll %o0,1,%o0
	st %o0,[%i0+%lo(_regs_LO)]
L771:
	mov 30,%o1
	mov %l7,%o0
	sub %o1,%l6,%o1
	call _extractl,0
	mov 1,%o2
	cmp %o0,1
	bne,a L842
	add %l6,1,%l6
	ld [%l1+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	be L778
	ld [%l0+%lo(_spec_regs_LO)],%o0
	xnor %g0,%o0,%o0
	cmp %o0,%i3
	blu L843
	ld [%i2+%lo(_spec_mode)],%o0
	b L844
	cmp %o0,0
L778:
	ld [%i0+%lo(_regs_LO)],%o0
	xnor %g0,%o0,%o0
	cmp %o0,%i3
	bgeu L777
	ld [%i2+%lo(_spec_mode)],%o0
L843:
	cmp %o0,0
	be L780
	ld [%l5+%lo(_use_spec_HI)],%o0
	st %i1,[%l5+%lo(_use_spec_HI)]
	ld [%l5+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	bne L828
	ld [%l4+%lo(_spec_regs_HI)],%o0
	ld [%l2+%lo(_regs_HI)],%o0
L828:
	add %o0,1,%o0
	b L777
	st %o0,[%l4+%lo(_spec_regs_HI)]
L780:
	cmp %o0,0
	bne L829
	ld [%l4+%lo(_spec_regs_HI)],%o0
	ld [%l2+%lo(_regs_HI)],%o0
L829:
	add %o0,1,%o0
	st %o0,[%l2+%lo(_regs_HI)]
L777:
	ld [%i2+%lo(_spec_mode)],%o0
	cmp %o0,0
L844:
	be L786
	ld [%l1+%lo(_use_spec_LO)],%o0
	st %i1,[%l1+%lo(_use_spec_LO)]
	ld [%l1+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	bne L830
	ld [%l0+%lo(_spec_regs_LO)],%o0
	ld [%i0+%lo(_regs_LO)],%o0
L830:
	add %l3,%o0,%o0
	b L753
	st %o0,[%l0+%lo(_spec_regs_LO)]
L786:
	cmp %o0,0
	bne L831
	ld [%l0+%lo(_spec_regs_LO)],%o0
	ld [%i0+%lo(_regs_LO)],%o0
L831:
	add %l3,%o0,%o0
	st %o0,[%i0+%lo(_regs_LO)]
L753:
	add %l6,1,%l6
L842:
	cmp %l6,30
	ble L845
	ld [%i2+%lo(_spec_mode)],%o0
	cmp %i4,%i5
	be L793
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L794
	mov 1,%o0
	sethi %hi(_use_spec_LO),%o1
	st %o0,[%o1+%lo(_use_spec_LO)]
	sethi %hi(_spec_regs_LO),%o0
	or %o0,%lo(_spec_regs_LO),%o1
	sethi %hi(_use_spec_LO),%o0
	ld [%o0+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	be L798
	sethi %hi(_spec_regs_LO),%o0
	b L833
	ld [%o0+%lo(_spec_regs_LO)],%o0
L794:
	sethi %hi(_regs_LO),%o0
	or %o0,%lo(_regs_LO),%o1
	sethi %hi(_use_spec_LO),%o0
	ld [%o0+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	be L798
	sethi %hi(_spec_regs_LO),%o0
	b L833
	ld [%o0+%lo(_spec_regs_LO)],%o0
L798:
	sethi %hi(_regs_LO),%o0
	ld [%o0+%lo(_regs_LO)],%o0
L833:
	xnor %g0,%o0,%o0
	st %o0,[%o1]
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L800
	mov 1,%o0
	sethi %hi(_use_spec_HI),%o1
	st %o0,[%o1+%lo(_use_spec_HI)]
	sethi %hi(_spec_regs_HI),%o0
	or %o0,%lo(_spec_regs_HI),%o1
	sethi %hi(_use_spec_HI),%o0
	ld [%o0+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	be L804
	sethi %hi(_spec_regs_HI),%o0
	b L835
	ld [%o0+%lo(_spec_regs_HI)],%o0
L800:
	sethi %hi(_regs_HI),%o0
	or %o0,%lo(_regs_HI),%o1
	sethi %hi(_use_spec_HI),%o0
	ld [%o0+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	be L804
	sethi %hi(_spec_regs_HI),%o0
	b L835
	ld [%o0+%lo(_spec_regs_HI)],%o0
L804:
	sethi %hi(_regs_HI),%o0
	ld [%o0+%lo(_regs_HI)],%o0
L835:
	xnor %g0,%o0,%o0
	st %o0,[%o1]
	sethi %hi(_use_spec_LO),%o0
	ld [%o0+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	be L807
	sethi %hi(_spec_regs_LO),%o0
	b L808
	ld [%o0+%lo(_spec_regs_LO)],%o0
L807:
	sethi %hi(_regs_LO),%o0
	ld [%o0+%lo(_regs_LO)],%o0
L808:
	cmp %o0,-1
	bne L846
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L809
	mov 1,%o0
	sethi %hi(_use_spec_HI),%o1
	st %o0,[%o1+%lo(_use_spec_HI)]
	sethi %hi(_spec_regs_HI),%o0
	or %o0,%lo(_spec_regs_HI),%o1
	sethi %hi(_use_spec_HI),%o0
	ld [%o0+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	be L813
	sethi %hi(_spec_regs_HI),%o0
	b L837
	ld [%o0+%lo(_spec_regs_HI)],%o0
L809:
	sethi %hi(_regs_HI),%o0
	or %o0,%lo(_regs_HI),%o1
	sethi %hi(_use_spec_HI),%o0
	ld [%o0+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	be L813
	sethi %hi(_spec_regs_HI),%o0
	b L837
	ld [%o0+%lo(_spec_regs_HI)],%o0
L813:
	sethi %hi(_regs_HI),%o0
	ld [%o0+%lo(_regs_HI)],%o0
L837:
	add %o0,1,%o0
	st %o0,[%o1]
	sethi %hi(_spec_mode),%o0
L846:
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L815
	mov 1,%o0
	sethi %hi(_use_spec_LO),%o1
	st %o0,[%o1+%lo(_use_spec_LO)]
	sethi %hi(_spec_regs_LO),%o0
	or %o0,%lo(_spec_regs_LO),%o1
	sethi %hi(_use_spec_LO),%o0
	ld [%o0+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	be L819
	sethi %hi(_spec_regs_LO),%o0
	b L839
	ld [%o0+%lo(_spec_regs_LO)],%o0
L815:
	sethi %hi(_regs_LO),%o0
	or %o0,%lo(_regs_LO),%o1
	sethi %hi(_use_spec_LO),%o0
	ld [%o0+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	be L819
	sethi %hi(_spec_regs_LO),%o0
	b L839
	ld [%o0+%lo(_spec_regs_LO)],%o0
L819:
	sethi %hi(_regs_LO),%o0
	ld [%o0+%lo(_regs_LO)],%o0
L839:
	add %o0,1,%o0
	st %o0,[%o1]
L793:
	ret
	restore
	.align 4
	.proc	020
_InstMULTU:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L848
	mov 1,%o0
	sethi %hi(_use_spec_HI),%o1
	st %o0,[%o1+%lo(_use_spec_HI)]
	sethi %hi(_spec_regs_HI),%o0
	b L849
	st %g0,[%o0+%lo(_spec_regs_HI)]
L848:
	sethi %hi(_regs_HI),%o0
	st %g0,[%o0+%lo(_regs_HI)]
L849:
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L850
	mov 1,%o0
	sethi %hi(_use_spec_LO),%o1
	st %o0,[%o1+%lo(_use_spec_LO)]
	sethi %hi(_spec_regs_LO),%o0
	b L851
	st %g0,[%o0+%lo(_spec_regs_LO)]
L850:
	sethi %hi(_regs_LO),%o0
	st %g0,[%o0+%lo(_regs_LO)]
L851:
	ld [%i0+4],%o1
	srl %o1,24,%o4
	srl %o1,29,%o1
	sethi %hi(_use_spec_R),%o2
	or %o2,%lo(_use_spec_R),%o2
	sll %o1,2,%o1
	and %o4,31,%o3
	mov 1,%o0
	sll %o0,%o3,%o0
	ld [%o1+%o2],%o1
	andcc %o0,%o1,%g0
	be L853
	sethi %hi(_spec_regs_R),%o0
	or %o0,%lo(_spec_regs_R),%o0
	sll %o4,2,%o1
	ld [%o1+%o0],%o0
	cmp %o0,0
	bl L922
	sethi %hi(_spec_mode),%o0
	b L923
	mov 0,%l7
L853:
	ldub [%i0+4],%o0
	sethi %hi(_regs_R),%o1
	or %o1,%lo(_regs_R),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o0
	cmp %o0,0
	bge L923
	mov 0,%l7
	sethi %hi(_spec_mode),%o0
L922:
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L855
	mov 1,%o3
	sethi %hi(_use_spec_LO),%o0
	st %o3,[%o0+%lo(_use_spec_LO)]
	sethi %hi(_spec_regs_LO),%o0
	or %o0,%lo(_spec_regs_LO),%o5
	lduh [%i0+4],%o1
	and %o1,255,%o4
	srl %o4,5,%o2
	sethi %hi(_use_spec_R),%o0
	or %o0,%lo(_use_spec_R),%o0
	sll %o2,2,%o2
	and %o1,31,%o1
	sll %o3,%o1,%o3
	ld [%o2+%o0],%o0
	andcc %o3,%o0,%g0
	be L859
	sethi %hi(_spec_regs_R),%o0
	or %o0,%lo(_spec_regs_R),%o0
	b L912
	sll %o4,2,%o1
L855:
	sethi %hi(_regs_LO),%o0
	or %o0,%lo(_regs_LO),%o5
	lduh [%i0+4],%o2
	and %o2,255,%o4
	srl %o4,5,%o3
	sethi %hi(_use_spec_R),%o1
	or %o1,%lo(_use_spec_R),%o1
	sll %o3,2,%o3
	and %o2,31,%o2
	mov 1,%o0
	sll %o0,%o2,%o0
	ld [%o3+%o1],%o1
	andcc %o0,%o1,%g0
	be L859
	sethi %hi(_spec_regs_R),%o0
	or %o0,%lo(_spec_regs_R),%o0
	b L912
	sll %o4,2,%o1
L859:
	ldub [%i0+5],%o1
	sethi %hi(_regs_R),%o0
	or %o0,%lo(_regs_R),%o0
	sll %o1,2,%o1
L912:
	ld [%o1+%o0],%o0
	st %o0,[%o5]
	mov 0,%l7
L923:
	sethi %hi(_spec_mode),%i1
	sethi %hi(_use_spec_HI),%l6
	mov 1,%l5
	sethi %hi(_spec_regs_HI),%l4
	sethi %hi(_regs_HI),%l3
	sethi %hi(_use_spec_LO),%l2
	sethi %hi(_spec_regs_LO),%l1
	sethi %hi(_regs_LO),%l0
	sethi %hi(_use_spec_R),%o0
	or %o0,%lo(_use_spec_R),%i4
	sethi %hi(_spec_regs_R),%o0
	or %o0,%lo(_spec_regs_R),%i3
	sethi %hi(_regs_R),%o0
	or %o0,%lo(_regs_R),%i2
	ld [%i1+%lo(_spec_mode)],%o0
L927:
	cmp %o0,0
	be L864
	ld [%l6+%lo(_use_spec_HI)],%o0
	st %l5,[%l6+%lo(_use_spec_HI)]
	ld [%l4+%lo(_spec_regs_HI)],%o0
	sll %o0,1,%o0
	b L865
	st %o0,[%l4+%lo(_spec_regs_HI)]
L864:
	cmp %o0,0
	bne L913
	ld [%l4+%lo(_spec_regs_HI)],%o0
	ld [%l3+%lo(_regs_HI)],%o0
L913:
	sll %o0,1,%o0
	st %o0,[%l3+%lo(_regs_HI)]
L865:
	ld [%i1+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L870
	ld [%l2+%lo(_use_spec_LO)],%o0
	st %l5,[%l6+%lo(_use_spec_HI)]
	ld [%l2+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	bne L873
	ld [%l1+%lo(_spec_regs_LO)],%o0
	ld [%l0+%lo(_regs_LO)],%o0
L873:
	mov 31,%o1
	call _extractl,0
	mov 1,%o2
	mov %o0,%o1
	ld [%l6+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	bne L914
	ld [%l4+%lo(_spec_regs_HI)],%o0
	ld [%l3+%lo(_regs_HI)],%o0
L914:
	add %o1,%o0,%o0
	b L871
	st %o0,[%l4+%lo(_spec_regs_HI)]
L870:
	cmp %o0,0
	bne L877
	ld [%l1+%lo(_spec_regs_LO)],%o0
	ld [%l0+%lo(_regs_LO)],%o0
L877:
	mov 31,%o1
	call _extractl,0
	mov 1,%o2
	mov %o0,%o1
	ld [%l6+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	bne L915
	ld [%l4+%lo(_spec_regs_HI)],%o0
	ld [%l3+%lo(_regs_HI)],%o0
L915:
	add %o1,%o0,%o0
	st %o0,[%l3+%lo(_regs_HI)]
L871:
	ld [%i1+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L880
	ld [%l2+%lo(_use_spec_LO)],%o0
	st %l5,[%l2+%lo(_use_spec_LO)]
	ld [%l2+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	bne L916
	ld [%l1+%lo(_spec_regs_LO)],%o0
	ld [%l0+%lo(_regs_LO)],%o0
L916:
	sll %o0,1,%o0
	b L881
	st %o0,[%l1+%lo(_spec_regs_LO)]
L880:
	cmp %o0,0
	bne L917
	ld [%l1+%lo(_spec_regs_LO)],%o0
	ld [%l0+%lo(_regs_LO)],%o0
L917:
	sll %o0,1,%o0
	st %o0,[%l0+%lo(_regs_LO)]
L881:
	ldub [%i0+4],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%i0+4],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%i4+%o0],%o0
	andcc %o1,%o0,%g0
	be,a L887
	ldub [%i0+4],%o0
	ldub [%i0+4],%o0
	sll %o0,2,%o0
	b L888
	ld [%i3+%o0],%o0
L887:
	sll %o0,2,%o0
	ld [%i2+%o0],%o0
L888:
	mov 30,%o1
	sub %o1,%l7,%o1
	call _extractl,0
	mov 1,%o2
	cmp %o0,1
	bne,a L924
	add %l7,1,%l7
	ldub [%i0+5],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%i0+5],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%i4+%o0],%o0
	andcc %o1,%o0,%g0
	be,a L890
	ldub [%i0+5],%o0
	ldub [%i0+5],%o0
	sll %o0,2,%o0
	b L891
	ld [%i3+%o0],%o1
L890:
	sll %o0,2,%o0
	ld [%i2+%o0],%o1
L891:
	ld [%l2+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	be L892
	ld [%l1+%lo(_spec_regs_LO)],%o0
	xnor %g0,%o0,%o0
	cmp %o0,%o1
	blu L925
	ld [%i1+%lo(_spec_mode)],%o0
	b L926
	cmp %o0,0
L892:
	ld [%l0+%lo(_regs_LO)],%o0
	xnor %g0,%o0,%o0
	cmp %o0,%o1
	bgeu L889
	ld [%i1+%lo(_spec_mode)],%o0
L925:
	cmp %o0,0
	be L894
	ld [%l6+%lo(_use_spec_HI)],%o0
	st %l5,[%l6+%lo(_use_spec_HI)]
	ld [%l6+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	bne L918
	ld [%l4+%lo(_spec_regs_HI)],%o0
	ld [%l3+%lo(_regs_HI)],%o0
L918:
	add %o0,1,%o0
	b L889
	st %o0,[%l4+%lo(_spec_regs_HI)]
L894:
	cmp %o0,0
	bne L919
	ld [%l4+%lo(_spec_regs_HI)],%o0
	ld [%l3+%lo(_regs_HI)],%o0
L919:
	add %o0,1,%o0
	st %o0,[%l3+%lo(_regs_HI)]
L889:
	ld [%i1+%lo(_spec_mode)],%o0
	cmp %o0,0
L926:
	be L900
	ld [%l2+%lo(_use_spec_LO)],%o0
	st %l5,[%l2+%lo(_use_spec_LO)]
	ld [%l2+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	bne L903
	ld [%l1+%lo(_spec_regs_LO)],%o2
	ld [%l0+%lo(_regs_LO)],%o2
L903:
	ldub [%i0+5],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%i0+5],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%i4+%o0],%o0
	andcc %o1,%o0,%g0
	be,a L904
	ldub [%i0+5],%o0
	ldub [%i0+5],%o0
	sll %o0,2,%o0
	b L920
	ld [%i3+%o0],%o0
L904:
	sll %o0,2,%o0
	ld [%i2+%o0],%o0
L920:
	add %o2,%o0,%o0
	b L863
	st %o0,[%l1+%lo(_spec_regs_LO)]
L900:
	cmp %o0,0
	bne L907
	ld [%l1+%lo(_spec_regs_LO)],%o2
	ld [%l0+%lo(_regs_LO)],%o2
L907:
	ldub [%i0+5],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%i0+5],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%i4+%o0],%o0
	andcc %o1,%o0,%g0
	be,a L908
	ldub [%i0+5],%o0
	ldub [%i0+5],%o0
	sll %o0,2,%o0
	b L921
	ld [%i3+%o0],%o0
L908:
	sll %o0,2,%o0
	ld [%i2+%o0],%o0
L921:
	add %o2,%o0,%o0
	st %o0,[%l0+%lo(_regs_LO)]
L863:
	add %l7,1,%l7
L924:
	cmp %l7,30
	ble L927
	ld [%i1+%lo(_spec_mode)],%o0
	ret
	restore
	.align 8
LC335:
	.ascii "register number out of range\0"
	.align 8
LC336:
	.ascii "simoo_reg_obj\0"
	.align 8
LC337:
	.ascii "bogus register bank\0"
	.align 4
	.proc	0102
_simoo_reg_obj:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	cmp %i2,31
	bgu L1005
	cmp %i0,1
	bgu L930
	cmp %i1,7
	bgu L1001
	sethi %hi(L1002),%o0
	or %o0,%lo(L1002),%o0
	sll %i1,2,%o1
	ld [%o1+%o0],%o0
	jmp %o0
	nop
L1002:
	.word	L932
	.word	L943
	.word	L954
	.word	L965
	.word	L977
	.word	L984
	.word	L991
	.word	L998
L932:
	cmp %i0,0
	bne L933
	sethi %hi(_spec_mode),%o0
	cmp %i2,0
	bge L936
	mov %i2,%o1
	add %i2,31,%o1
L936:
	sra %o1,5,%o1
	sethi %hi(_use_spec_R),%o0
	or %o0,%lo(_use_spec_R),%o3
	sll %o1,2,%o2
	cmp %i2,0
	bge L937
	mov %i2,%o0
	add %i2,31,%o0
L937:
	and %o0,-32,%o0
	sub %i2,%o0,%o0
	mov 1,%o1
	sll %o1,%o0,%o1
	ld [%o3+%o2],%o0
	andcc %o1,%o0,%g0
	be,a L934
	sethi %hi(_regs_R),%o0
	sethi %hi(_spec_regs_R),%o0
	b L1007
	or %o0,%lo(_spec_regs_R),%o0
L934:
	b L1007
	or %o0,%lo(_regs_R),%o0
L933:
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L939
	cmp %i2,0
	bge L941
	mov %i2,%o1
	add %i2,31,%o1
L941:
	sra %o1,5,%o1
	sethi %hi(_use_spec_R),%o0
	or %o0,%lo(_use_spec_R),%o4
	sll %o1,2,%o2
	mov %o4,%o5
	mov %o2,%o3
	cmp %i2,0
	bge L942
	mov %i2,%o1
	add %i2,31,%o1
L942:
	and %o1,-32,%o1
	sub %i2,%o1,%o1
	mov 1,%o0
	sll %o0,%o1,%o0
	ld [%o5+%o3],%o1
	or %o0,%o1,%o0
	st %o0,[%o4+%o2]
	sethi %hi(_spec_regs_R),%o0
	b L1008
	or %o0,%lo(_spec_regs_R),%o0
L939:
	sethi %hi(_regs_R),%o0
	b L1008
	or %o0,%lo(_regs_R),%o0
L943:
	cmp %i0,0
	bne L944
	sethi %hi(_spec_mode),%o0
	andcc %i2,-2,%o1
	bl,a L947
	add %o1,31,%o1
L947:
	sra %o1,5,%o1
	sethi %hi(_use_spec_F),%o0
	or %o0,%lo(_use_spec_F),%o3
	sll %o1,2,%o2
	and %i2,-2,%o1
	cmp %o1,0
	bge L948
	mov %o1,%o0
	add %o1,31,%o0
L948:
	and %o0,-32,%o0
	sub %o1,%o0,%o0
	mov 1,%o1
	sll %o1,%o0,%o1
	ld [%o3+%o2],%o0
	andcc %o1,%o0,%g0
	be L945
	sethi %hi(_spec_regs_F),%o0
	b L1007
	or %o0,%lo(_spec_regs_F),%o0
L945:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L1007:
	sll %i2,2,%o1
	ld [%o1+%o0],%o0
L1014:
	b L1003
	st %o0,[%i3]
L944:
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L950
	andcc %i2,-2,%o1
	bl,a L952
	add %o1,31,%o1
L952:
	sra %o1,5,%o1
	sethi %hi(_use_spec_F),%o0
	or %o0,%lo(_use_spec_F),%o4
	sll %o1,2,%o2
	mov %o4,%o5
	mov %o2,%o3
	and %i2,-2,%o0
	cmp %o0,0
	bge L953
	mov %o0,%o1
	add %o0,31,%o1
L953:
	and %o1,-32,%o1
	sub %o0,%o1,%o1
	mov 1,%o0
	sll %o0,%o1,%o0
	ld [%o5+%o3],%o1
	or %o0,%o1,%o0
	st %o0,[%o4+%o2]
	sethi %hi(_spec_regs_F),%o0
	b L1008
	or %o0,%lo(_spec_regs_F),%o0
L950:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L1008:
	sll %i2,2,%o2
	ld [%i3],%o1
	b L1003
	st %o1,[%o2+%o0]
L954:
	cmp %i0,0
	bne L955
	sethi %hi(_spec_mode),%o0
	andcc %i2,-2,%o1
	bl,a L958
	add %o1,31,%o1
L958:
	sra %o1,5,%o1
	sethi %hi(_use_spec_F),%o0
	or %o0,%lo(_use_spec_F),%o3
	sll %o1,2,%o2
	and %i2,-2,%o1
	cmp %o1,0
	bge L959
	mov %o1,%o0
	add %o1,31,%o0
L959:
	and %o0,-32,%o0
	sub %o1,%o0,%o0
	mov 1,%o1
	sll %o1,%o0,%o1
	ld [%o3+%o2],%o0
	andcc %o1,%o0,%g0
	be L956
	sethi %hi(_spec_regs_F),%o0
	b L1009
	or %o0,%lo(_spec_regs_F),%o0
L956:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L1009:
	sll %i2,2,%o1
	ld [%o1+%o0],%o0
	b L1003
	st %o0,[%i3]
L955:
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L961
	andcc %i2,-2,%o1
	bl,a L963
	add %o1,31,%o1
L963:
	sra %o1,5,%o1
	sethi %hi(_use_spec_F),%o0
	or %o0,%lo(_use_spec_F),%o4
	sll %o1,2,%o2
	mov %o4,%o5
	mov %o2,%o3
	and %i2,-2,%o0
	cmp %o0,0
	bge L964
	mov %o0,%o1
	add %o0,31,%o1
L964:
	and %o1,-32,%o1
	sub %o0,%o1,%o1
	mov 1,%o0
	sll %o0,%o1,%o0
	ld [%o5+%o3],%o1
	or %o0,%o1,%o0
	st %o0,[%o4+%o2]
	sethi %hi(_spec_regs_F),%o0
	b L1010
	or %o0,%lo(_spec_regs_F),%o0
L961:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L1010:
	sll %i2,2,%o2
	ld [%i3],%o1
	b L1003
	st %o1,[%o2+%o0]
L965:
	cmp %i2,15
	bleu L966
	cmp %i0,0
L1005:
	sethi %hi(LC335),%i0
	b L1004
	or %i0,%lo(LC335),%i0
L966:
	bne L967
	sethi %hi(_spec_mode),%o0
	addcc %i2,%i2,%o1
	bneg,a L970
	add %o1,31,%o1
L970:
	sra %o1,5,%o1
	sethi %hi(_use_spec_F),%o0
	or %o0,%lo(_use_spec_F),%o3
	sll %o1,2,%o2
	sll %i2,1,%o1
	cmp %o1,0
	bge L971
	mov %o1,%o0
	add %o1,31,%o0
L971:
	and %o0,-32,%o0
	sub %o1,%o0,%o0
	mov 1,%o1
	sll %o1,%o0,%o1
	ld [%o3+%o2],%o0
	andcc %o1,%o0,%g0
	be L968
	sethi %hi(_spec_regs_F),%o0
	b L1011
	or %o0,%lo(_spec_regs_F),%o0
L968:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L1011:
	sll %i2,3,%o1
	ldd [%o1+%o0],%f2
	fdtos %f2,%f2
	b L1003
	st %f2,[%i3]
L967:
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L973
	addcc %i2,%i2,%o1
	bneg,a L975
	add %o1,31,%o1
L975:
	sra %o1,5,%o1
	sethi %hi(_use_spec_F),%o0
	or %o0,%lo(_use_spec_F),%o4
	sll %o1,2,%o2
	mov %o4,%o5
	mov %o2,%o3
	sll %i2,1,%o0
	cmp %o0,0
	bge L976
	mov %o0,%o1
	add %o0,31,%o1
L976:
	and %o1,-32,%o1
	sub %o0,%o1,%o1
	mov 1,%o0
	sll %o0,%o1,%o0
	ld [%o5+%o3],%o1
	or %o0,%o1,%o0
	st %o0,[%o4+%o2]
	sethi %hi(_spec_regs_F),%o0
	b L1012
	or %o0,%lo(_spec_regs_F),%o0
L973:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L1012:
	sll %i2,3,%o1
	ld [%i3],%f2
	fstod %f2,%f2
	b L1003
	std %f2,[%o1+%o0]
L977:
	cmp %i0,0
	bne L978
	sethi %hi(_spec_mode),%o0
	sethi %hi(_use_spec_HI),%o0
	ld [%o0+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	be,a L979
	sethi %hi(_regs_HI),%o0
	sethi %hi(_spec_regs_HI),%o0
	b L1014
	ld [%o0+%lo(_spec_regs_HI)],%o0
L979:
	b L1014
	ld [%o0+%lo(_regs_HI)],%o0
L978:
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L982
	mov 1,%o0
	sethi %hi(_use_spec_HI),%o1
	st %o0,[%o1+%lo(_use_spec_HI)]
	ld [%i3],%o0
	sethi %hi(_spec_regs_HI),%o1
	b L1003
	st %o0,[%o1+%lo(_spec_regs_HI)]
L982:
	ld [%i3],%o0
	sethi %hi(_regs_HI),%o1
	b L1003
	st %o0,[%o1+%lo(_regs_HI)]
L984:
	cmp %i0,0
	bne L985
	sethi %hi(_spec_mode),%o0
	sethi %hi(_use_spec_LO),%o0
	ld [%o0+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	be,a L986
	sethi %hi(_regs_LO),%o0
	sethi %hi(_spec_regs_LO),%o0
	b L1014
	ld [%o0+%lo(_spec_regs_LO)],%o0
L986:
	b L1014
	ld [%o0+%lo(_regs_LO)],%o0
L985:
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L989
	mov 1,%o0
	sethi %hi(_use_spec_LO),%o1
	st %o0,[%o1+%lo(_use_spec_LO)]
	ld [%i3],%o0
	sethi %hi(_spec_regs_LO),%o1
	b L1003
	st %o0,[%o1+%lo(_spec_regs_LO)]
L989:
	ld [%i3],%o0
	sethi %hi(_regs_LO),%o1
	b L1003
	st %o0,[%o1+%lo(_regs_LO)]
L991:
	cmp %i0,0
	bne L992
	sethi %hi(_spec_mode),%o0
	sethi %hi(_use_spec_FCC),%o0
	ld [%o0+%lo(_use_spec_FCC)],%o0
	cmp %o0,0
	be,a L993
	sethi %hi(_regs_FCC),%o0
	sethi %hi(_spec_regs_FCC),%o0
	b L1014
	ld [%o0+%lo(_spec_regs_FCC)],%o0
L993:
	b L1014
	ld [%o0+%lo(_regs_FCC)],%o0
L992:
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L996
	mov 1,%o0
	sethi %hi(_use_spec_FCC),%o1
	st %o0,[%o1+%lo(_use_spec_FCC)]
	ld [%i3],%o0
	sethi %hi(_spec_regs_FCC),%o1
	b L1003
	st %o0,[%o1+%lo(_spec_regs_FCC)]
L996:
	ld [%i3],%o0
	sethi %hi(_regs_FCC),%o1
	b L1003
	st %o0,[%o1+%lo(_regs_FCC)]
L998:
	cmp %i0,0
	bne,a L999
	ld [%i3],%o0
	sethi %hi(_regs_PC),%o0
	b L1014
	ld [%o0+%lo(_regs_PC)],%o0
L999:
	sethi %hi(_regs_PC),%o1
	b L1003
	st %o0,[%o1+%lo(_regs_PC)]
L1001:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC336),%o1
	or %o1,%lo(LC336),%o1
	mov 3315,%o2
	sethi %hi(LC337),%o3
	call __panic,0
	or %o3,%lo(LC337),%o3
L930:
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC336),%o1
	or %o1,%lo(LC336),%o1
	mov 3319,%o2
	sethi %hi(LC333),%o3
	call __panic,0
	or %o3,%lo(LC333),%o3
L1003:
	mov 0,%i0
L1004:
	ret
	restore
.data
	.align 8
_last_op:
	.word	0
	.word	0
	.word	0
	.skip 12
.text
	.align 8
LC338:
	.ascii "ruu_dispatch\0"
	.align 8
LC339:
	.ascii "drained and speculative\0"
	.align 8
LC340:
	.ascii "ss.def\0"
	.align 8
LC341:
	.ascii "bad jump alignment\0"
	.align 8
LC342:
	.ascii "bad INT register alignment\0"
	.align 8
LC343:
	.ascii "bad FP register alignment\0"
	.align 8
LC344:
	.ascii "+ overflow\0"
	.align 8
LC345:
	.ascii "+ underflow\0"
	.align 8
LC346:
	.ascii "- overflow\0"
	.align 8
LC347:
	.ascii "- underflow\0"
	.align 8
LC348:
	.ascii "divide by 0\0"
	.align 8
LC351:
	.ascii "speculative syscall\0"
	.align 8
LC352:
	.ascii "internal ld/st\0"
	.align 8
LC353:
	.ascii "DA\0"
	.align 4
LC349:
	.word	0x0
.data
	.align 8
LC350:
	.word	0x0
	.word	0x0
.text
	.align 4
	.proc	020
_ruu_dispatch:
	!#PROLOGUE# 0
	save %sp,-208,%sp
	!#PROLOGUE# 1
	mov 0,%l0
	st %g0,[%fp-52]
	sethi %hi(_spec_mode),%i3
	sethi %hi(_spec_regs_R),%o0
	or %o0,%lo(_spec_regs_R),%i0
	sethi %hi(_regs_R),%o0
	or %o0,%lo(_regs_R),%i1
	sethi %hi(_use_spec_R),%o0
	or %o0,%lo(_use_spec_R),%l7
	mov 1,%l5
	sethi %hi(65280),%o1
	or %o1,%lo(65280),%o1
	b L1016
	st %o1,[%fp-100]
L3239:
	ld [%o0+%lo(_ruu_include_spec)],%o0
	cmp %o0,0
	bne L3655
	sethi %hi(_ruu_inorder_issue),%o0
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L1017
	sethi %hi(_ruu_inorder_issue),%o0
L3655:
	ld [%o0+%lo(_ruu_inorder_issue)],%o0
	cmp %o0,0
	be L1019
	sethi %hi(_last_op+4),%o0
	ld [%o0+%lo(_last_op+4)],%o2
	cmp %o2,0
	be L1019
	or %o0,%lo(_last_op+4),%o1
	ld [%o1+4],%o1
	ld [%o2+44],%o0
	cmp %o1,%o0
	bne L3656
	sethi %hi(_fetch_head),%o0
	ld [%o2+84],%o0
	cmp %o0,0
	be L3657
	cmp %l0,0
	ld [%o2+88],%o0
	cmp %o0,0
	be L3657
	cmp %l0,0
	ld [%o2+92],%o0
	cmp %o0,0
	be L3657
	cmp %l0,0
L1019:
	sethi %hi(_fetch_head),%o0
L3656:
	ld [%o0+%lo(_fetch_head)],%o2
	sethi %hi(_fetch_data),%o0
	ld [%o0+%lo(_fetch_data)],%o1
	sll %o2,1,%o0
	add %o0,%o2,%o0
	sll %o0,3,%o0
	ld [%o1+%o0],%o3
	st %o3,[%fp-24]
	add %o1,%o0,%o1
	ld [%o1+4],%o0
	st %o0,[%fp-20]
	ld [%o1+8],%o2
	sethi %hi(_regs_PC),%g3
	st %o2,[%g3+%lo(_regs_PC)]
	ld [%o1+12],%o0
	sethi %hi(_pred_PC),%o4
	st %o0,[%o4+%lo(_pred_PC)]
	ld [%o1+16],%g3
	st %g3,[%fp-76]
	ld [%o1+20],%o1
	st %o1,[%fp-84]
	and %o3,255,%o3
	st %o3,[%fp-60]
	add %o2,8,%o2
	st %o2,[%fp-68]
	sethi %hi(_ss_op2flags),%o0
	or %o0,%lo(_ss_op2flags),%o0
	sll %o3,2,%o1
	ld [%o1+%o0],%o0
	andcc %o0,2048,%g0
	be L1021
	sethi %hi(_RUU_num),%o0
	ld [%o0+%lo(_RUU_num)],%o0
	cmp %o0,0
	bne L1017
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3658
	sethi %hi(_regs_R),%g3
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 3400,%o2
	sethi %hi(LC339),%o3
	call __panic,0
	or %o3,%lo(LC339),%o3
L1021:
	sethi %hi(_regs_R),%g3
L3658:
	st %g0,[%g3+%lo(_regs_R)]
	sethi %hi(_spec_regs_R),%g3
	st %g0,[%g3+%lo(_spec_regs_R)]
	st %g0,[%fp-92]
	ld [%fp-60],%g3
	add %g3,-1,%o1
	cmp %o1,118
	bgu L3084
	mov 0,%l4
	sethi %hi(L3085),%o0
	or %o0,%lo(L3085),%o0
	sll %o1,2,%o1
	ld [%o1+%o0],%o0
	jmp %o0
	nop
L3085:
	.word	L3247
	.word	L1026
	.word	L1027
	.word	L1030
	.word	L1039
	.word	L1050
	.word	L1057
	.word	L1064
	.word	L1069
	.word	L1074
	.word	L1079
	.word	L1084
	.word	L1089
	.word	L1094
	.word	L1119
	.word	L1144
	.word	L1169
	.word	L1194
	.word	L1219
	.word	L1252
	.word	L1277
	.word	L1316
	.word	L1327
	.word	L1338
	.word	L1359
	.word	L1380
	.word	L1401
	.word	L1432
	.word	L1459
	.word	L1480
	.word	L1511
	.word	L1526
	.word	L1541
	.word	L1570
	.word	L1599
	.word	L1628
	.word	L1657
	.word	L1686
	.word	L1721
	.word	L1750
	.word	L1797
	.word	L1820
	.word	L1843
	.word	L1866
	.word	L1901
	.word	L1932
	.word	L1955
	.word	L1990
	.word	L2019
	.word	L2042
	.word	L2071
	.word	L2094
	.word	L2129
	.word	L2152
	.word	L2163
	.word	L2170
	.word	L2205
	.word	L2216
	.word	L2217
	.word	L2218
	.word	L2263
	.word	L2308
	.word	L2315
	.word	L2322
	.word	L2329
	.word	L2336
	.word	L2347
	.word	L2354
	.word	L2365
	.word	L2372
	.word	L2383
	.word	L2390
	.word	L2401
	.word	L2408
	.word	L2419
	.word	L2426
	.word	L2437
	.word	L2438
	.word	L2439
	.word	L2450
	.word	L2457
	.word	L2468
	.word	L2475
	.word	L2498
	.word	L2521
	.word	L2544
	.word	L2567
	.word	L2590
	.word	L2613
	.word	L2652
	.word	L2691
	.word	L2706
	.word	L2721
	.word	L2736
	.word	L2751
	.word	L2766
	.word	L2781
	.word	L2796
	.word	L2811
	.word	L2826
	.word	L2841
	.word	L2856
	.word	L2871
	.word	L2890
	.word	L2909
	.word	L2928
	.word	L2947
	.word	L2966
	.word	L2985
	.word	L3002
	.word	L3019
	.word	L3247
	.word	L3023
	.word	L3026
	.word	L3033
	.word	L3247
	.word	L3055
	.word	L3062
	.word	L3247
L1026:
	mov 0,%l3
	mov 0,%i5
	mov 0,%l6
	mov 0,%i2
	mov 0,%i4
	sethi %hi(_regs_PC),%g3
	ld [%g3+%lo(_regs_PC)],%o1
	sethi %hi(-268435456),%o0
	and %o1,%o0,%o1
	st %o1,[%fp-68]
	ld [%fp-20],%o1
	sethi %hi(-67108864),%o0
	andn %o1,%o0,%o0
	sll %o0,2,%o0
	ld [%fp-68],%g3
	or %g3,%o0,%g3
	b L1024
	st %g3,[%fp-68]
L1027:
	mov 31,%l3
	mov 0,%i5
	mov 0,%l6
	mov 0,%i2
	sethi %hi(_regs_PC),%g3
	ld [%g3+%lo(_regs_PC)],%o2
	sethi %hi(-268435456),%o0
	and %o2,%o0,%o0
	st %o0,[%fp-68]
	ld [%fp-20],%o1
	sethi %hi(-67108864),%o0
	andn %o1,%o0,%o0
	sll %o0,2,%o0
	ld [%fp-68],%g3
	or %g3,%o0,%g3
	st %g3,[%fp-68]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1028
	mov 0,%i4
	sethi %hi(_use_spec_R),%g3
	ld [%g3+%lo(_use_spec_R)],%o0
	sethi %hi(-2147483648),%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%lo(_use_spec_R)]
	add %o2,8,%o0
	b L1024
	st %o0,[%i0+124]
L1028:
	sethi %hi(_regs_PC),%g3
	ld [%g3+%lo(_regs_PC)],%o0
	add %o0,8,%o0
	b L1024
	st %o0,[%i1+124]
L1030:
	mov 0,%l3
	mov 0,%i5
	ld [%fp-20],%o0
	srl %o0,24,%l6
	mov 0,%i2
	srl %o0,29,%o0
	sll %o0,2,%o0
	and %l6,31,%o1
	sll %l5,%o1,%o1
	ld [%o0+%l7],%o0
	andcc %o1,%o0,%g0
	be L1033
	mov 0,%i4
	sll %l6,2,%o0
	ld [%o0+%i0],%o0
	andcc %o0,7,%g0
	bne L3659
	ld [%i3+%lo(_spec_mode)],%o0
	b L3660
	ld [%fp-20],%o0
L1033:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
	andcc %o0,7,%g0
	be L1032
	ld [%i3+%lo(_spec_mode)],%o0
L3659:
	cmp %o0,0
	bne L3660
	ld [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 235,%o2
	sethi %hi(LC341),%o3
	call __fatal,0
	or %o3,%lo(LC341),%o3
L1032:
	ld [%fp-20],%o0
L3660:
	srl %o0,24,%o2
	srl %o0,29,%o0
	sll %o0,2,%o0
	and %o2,31,%o1
	sll %l5,%o1,%o1
	ld [%o0+%l7],%o0
	andcc %o1,%o0,%g0
	bne L3661
	sll %o2,2,%o0
	b L3662
	ldub [%fp-20],%o0
L1039:
	ld [%fp-20],%o0
	ldub [%fp-18],%l3
	mov 0,%i5
	srl %o0,24,%l6
	mov 0,%i2
	srl %o0,29,%o0
	sll %o0,2,%o0
	and %l6,31,%o1
	sll %l5,%o1,%o1
	ld [%o0+%l7],%o0
	andcc %o1,%o0,%g0
	be L1042
	mov 0,%i4
	sll %l6,2,%o0
	ld [%o0+%i0],%o0
	andcc %o0,7,%g0
	bne L3663
	ld [%i3+%lo(_spec_mode)],%o0
	b L3664
	cmp %o0,0
L1042:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
	andcc %o0,7,%g0
	be L3665
	ld [%i3+%lo(_spec_mode)],%o0
L3663:
	cmp %o0,0
	bne L3665
	ld [%i3+%lo(_spec_mode)],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 240,%o2
	sethi %hi(LC341),%o3
	call __fatal,0
	or %o3,%lo(LC341),%o3
L3665:
	cmp %o0,0
L3664:
	be L1046
	ld [%fp-20],%o0
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	srl %o0,8,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o2
	or %o0,%o2,%o0
	st %o0,[%o1+%l7]
	ldub [%fp-18],%o1
	sll %o1,2,%o1
	sethi %hi(_regs_PC),%g3
	ld [%g3+%lo(_regs_PC)],%o0
	add %o0,8,%o0
	b L1047
	st %o0,[%o1+%i0]
L1046:
	ldub [%fp-18],%o1
	sll %o1,2,%o1
	sethi %hi(_regs_PC),%g3
	ld [%g3+%lo(_regs_PC)],%o0
	add %o0,8,%o0
	st %o0,[%o1+%i1]
L1047:
	ld [%fp-20],%o0
	srl %o0,24,%o2
	srl %o0,29,%o0
	sll %o0,2,%o0
	and %o2,31,%o1
	sll %l5,%o1,%o1
	ld [%o0+%l7],%o0
	andcc %o1,%o0,%g0
	be L1048
	sll %o2,2,%o0
L3661:
	ld [%o0+%i0],%o0
	b L1024
	st %o0,[%fp-68]
L1048:
	ldub [%fp-20],%o0
L3662:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
	b L1024
	st %o0,[%fp-68]
L1050:
	mov 0,%l3
	mov 0,%i5
	ld [%fp-20],%o0
	srl %o0,24,%l6
	srl %o0,16,%i2
	and %i2,255,%i2
	srl %o0,29,%o0
	sll %o0,2,%o0
	and %l6,31,%o1
	sll %l5,%o1,%o1
	ld [%o0+%l7],%o0
	andcc %o1,%o0,%g0
	be L1053
	mov 0,%i4
	sll %l6,2,%o0
	b L1054
	ld [%o0+%i0],%o3
L1053:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o3
L1054:
	lduh [%fp-20],%o0
	and %o0,255,%o2
	srl %o2,5,%o1
	sll %o1,2,%o1
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1055
	sll %o2,2,%o0
	ld [%o0+%i0],%o0
	cmp %o3,%o0
	be L3666
	ldsh [%fp-18],%o0
	b L3667
	sethi %hi(_ss_op2flags),%o0
L1055:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
	cmp %o3,%o0
	bne L3667
	sethi %hi(_ss_op2flags),%o0
	b L3666
	ldsh [%fp-18],%o0
L1057:
	mov 0,%l3
	mov 0,%i5
	ld [%fp-20],%o0
	srl %o0,24,%l6
	srl %o0,16,%i2
	and %i2,255,%i2
	srl %o0,29,%o0
	sll %o0,2,%o0
	and %l6,31,%o1
	sll %l5,%o1,%o1
	ld [%o0+%l7],%o0
	andcc %o1,%o0,%g0
	be L1060
	mov 0,%i4
	sll %l6,2,%o0
	b L1061
	ld [%o0+%i0],%o3
L1060:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o3
L1061:
	lduh [%fp-20],%o0
	and %o0,255,%o2
	srl %o2,5,%o1
	sll %o1,2,%o1
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1062
	sll %o2,2,%o0
	ld [%o0+%i0],%o0
	cmp %o3,%o0
	bne L3666
	ldsh [%fp-18],%o0
	b L3667
	sethi %hi(_ss_op2flags),%o0
L1062:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
	b L3633
	cmp %o3,%o0
L1064:
	mov 0,%l3
	mov 0,%i5
	ld [%fp-20],%o0
	srl %o0,24,%l6
	mov 0,%i2
	srl %o0,29,%o0
	sll %o0,2,%o0
	and %l6,31,%o1
	sll %l5,%o1,%o1
	ld [%o0+%l7],%o0
	andcc %o1,%o0,%g0
	be L1067
	mov 0,%i4
	sll %l6,2,%o0
	ld [%o0+%i0],%o0
	cmp %o0,0
	ble L3666
	ldsh [%fp-18],%o0
	b L3667
	sethi %hi(_ss_op2flags),%o0
L1067:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
	cmp %o0,0
	bg L3667
	sethi %hi(_ss_op2flags),%o0
	b L3666
	ldsh [%fp-18],%o0
L1069:
	mov 0,%l3
	mov 0,%i5
	ld [%fp-20],%o0
	srl %o0,24,%l6
	mov 0,%i2
	srl %o0,29,%o0
	sll %o0,2,%o0
	and %l6,31,%o1
	sll %l5,%o1,%o1
	ld [%o0+%l7],%o0
	andcc %o1,%o0,%g0
	be L1072
	mov 0,%i4
	sll %l6,2,%o0
	ld [%o0+%i0],%o0
	cmp %o0,0
	bg L3666
	ldsh [%fp-18],%o0
	b L3667
	sethi %hi(_ss_op2flags),%o0
L1072:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
	cmp %o0,0
	ble L3667
	sethi %hi(_ss_op2flags),%o0
	b L3666
	ldsh [%fp-18],%o0
L1074:
	mov 0,%l3
	mov 0,%i5
	ld [%fp-20],%o0
	srl %o0,24,%l6
	mov 0,%i2
	srl %o0,29,%o0
	sll %o0,2,%o0
	and %l6,31,%o1
	sll %l5,%o1,%o1
	ld [%o0+%l7],%o0
	andcc %o1,%o0,%g0
	be L1077
	mov 0,%i4
	sll %l6,2,%o0
	ld [%o0+%i0],%o0
	cmp %o0,0
	bl L3666
	ldsh [%fp-18],%o0
	b L3667
	sethi %hi(_ss_op2flags),%o0
L1077:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
	cmp %o0,0
	bge L3667
	sethi %hi(_ss_op2flags),%o0
	b L3666
	ldsh [%fp-18],%o0
L1079:
	mov 0,%l3
	mov 0,%i5
	ld [%fp-20],%o0
	srl %o0,24,%l6
	mov 0,%i2
	srl %o0,29,%o0
	sll %o0,2,%o0
	and %l6,31,%o1
	sll %l5,%o1,%o1
	ld [%o0+%l7],%o0
	andcc %o1,%o0,%g0
	be L1082
	mov 0,%i4
	sll %l6,2,%o0
	ld [%o0+%i0],%o0
	cmp %o0,0
	bge L3666
	ldsh [%fp-18],%o0
	b L3667
	sethi %hi(_ss_op2flags),%o0
L1082:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
	cmp %o0,0
	bl L3667
	sethi %hi(_ss_op2flags),%o0
	b L3666
	ldsh [%fp-18],%o0
L1084:
	mov 0,%l3
	mov 0,%i5
	mov 66,%l6
	mov 0,%i2
	sethi %hi(_use_spec_FCC),%o0
	ld [%o0+%lo(_use_spec_FCC)],%o0
	cmp %o0,0
	be L1087
	mov 0,%i4
	sethi %hi(_spec_regs_FCC),%o0
	b L3249
	ld [%o0+%lo(_spec_regs_FCC)],%o0
L1087:
	sethi %hi(_regs_FCC),%o0
	ld [%o0+%lo(_regs_FCC)],%o0
L3249:
	cmp %o0,0
	bne L3667
	sethi %hi(_ss_op2flags),%o0
	b L3666
	ldsh [%fp-18],%o0
L1089:
	mov 0,%l3
	mov 0,%i5
	mov 66,%l6
	mov 0,%i2
	sethi %hi(_use_spec_FCC),%o0
	ld [%o0+%lo(_use_spec_FCC)],%o0
	cmp %o0,0
	be L1092
	mov 0,%i4
	sethi %hi(_spec_regs_FCC),%o0
	ld [%o0+%lo(_spec_regs_FCC)],%o0
	cmp %o0,0
	bne L3666
	ldsh [%fp-18],%o0
	b L3667
	sethi %hi(_ss_op2flags),%o0
L1092:
	sethi %hi(_regs_FCC),%o0
	ld [%o0+%lo(_regs_FCC)],%o0
	cmp %o0,0
L3633:
	be L1024
	ldsh [%fp-18],%o0
L3666:
	sll %o0,2,%o0
	add %o0,8,%o0
	sethi %hi(_regs_PC),%g3
	ld [%g3+%lo(_regs_PC)],%o1
	add %o0,%o1,%o0
	b L1024
	st %o0,[%fp-68]
L1094:
	ld [%fp-20],%o1
	ldub [%fp-19],%l3
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1095
	mov 0,%i5
	srl %o1,24,%i5
L1095:
	mov 0,%l6
	ld [%fp-20],%o2
	srl %o2,24,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3893
	mov 0,%i4
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %i2,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L1099
	ldub [%fp-20],%o0
	b L3250
	ld [%o4+%i0],%o0
L1099:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3250:
	add %o1,%o0,%o0
	b L1098
	st %o0,[%i0+%o4]
L3893:
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L1101
	ldub [%fp-20],%o0
	b L3251
	ld [%o4+%i0],%o0
L1101:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3251:
	add %o1,%o0,%o0
	st %o0,[%i1+%o4]
L1098:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1103
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	lduh [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o2
	or %o0,%o2,%o0
	st %o0,[%o1+%l7]
	ld [%fp-20],%o1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	srl %o1,24,%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o3,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1105
	ldsh [%fp-18],%o2
	sll %o3,2,%o0
	b L3252
	ld [%o0+%i0],%o0
L1105:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3252:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1107
	mov 0,%o0
	mov %l4,%o1
	add %fp,-25,%o2
	call _spec_mem_access,0
	mov 1,%o3
	b L3668
	ldsb [%fp-25],%o0
L1107:
	mov %l4,%o1
	add %fp,-25,%o2
	call _mem_access,0
	mov 1,%o3
	ldsb [%fp-25],%o0
L3668:
	b L1104
	st %o0,[%i0+%l0]
L1103:
	ld [%fp-20],%o1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	srl %o1,24,%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o3,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1109
	ldsh [%fp-18],%o2
	sll %o3,2,%o0
	b L3253
	ld [%o0+%i0],%o0
L1109:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3253:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1111
	mov 0,%o0
	mov %l4,%o1
	add %fp,-25,%o2
	call _spec_mem_access,0
	mov 1,%o3
	b L3669
	ldsb [%fp-25],%o0
L1111:
	mov %l4,%o1
	add %fp,-25,%o2
	call _mem_access,0
	mov 1,%o3
	ldsb [%fp-25],%o0
L3669:
	st %o0,[%i1+%l0]
L1104:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1113
	ld [%fp-20],%o0
	srl %o0,29,%o2
	sll %o2,2,%o2
	srl %o0,24,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L3670
	ldub [%fp-20],%o0
	b L3255
	ld [%o4+%i0],%o0
L1113:
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L3671
	ldub [%fp-20],%o0
	b L3257
	ld [%o4+%i0],%o0
L1119:
	ld [%fp-20],%o1
	ldub [%fp-19],%l3
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1120
	mov 0,%i5
	srl %o1,24,%i5
L1120:
	mov 0,%l6
	ld [%fp-20],%o2
	srl %o2,24,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3894
	mov 0,%i4
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %i2,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L1124
	ldub [%fp-20],%o0
	b L3258
	ld [%o4+%i0],%o0
L1124:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3258:
	add %o1,%o0,%o0
	b L1123
	st %o0,[%i0+%o4]
L3894:
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L1126
	ldub [%fp-20],%o0
	b L3259
	ld [%o4+%i0],%o0
L1126:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3259:
	add %o1,%o0,%o0
	st %o0,[%i1+%o4]
L1123:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1128
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	lduh [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o2
	or %o0,%o2,%o0
	st %o0,[%o1+%l7]
	ld [%fp-20],%o1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	srl %o1,24,%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o3,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1130
	ldsh [%fp-18],%o2
	sll %o3,2,%o0
	b L3260
	ld [%o0+%i0],%o0
L1130:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3260:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1132
	mov 0,%o0
	mov %l4,%o1
	add %fp,-26,%o2
	call _spec_mem_access,0
	mov 1,%o3
	b L3672
	ldub [%fp-26],%o0
L1132:
	mov %l4,%o1
	add %fp,-26,%o2
	call _mem_access,0
	mov 1,%o3
	ldub [%fp-26],%o0
L3672:
	b L1129
	st %o0,[%i0+%l0]
L1128:
	ld [%fp-20],%o1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	srl %o1,24,%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o3,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1134
	ldsh [%fp-18],%o2
	sll %o3,2,%o0
	b L3261
	ld [%o0+%i0],%o0
L1134:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3261:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1136
	mov 0,%o0
	mov %l4,%o1
	add %fp,-26,%o2
	call _spec_mem_access,0
	mov 1,%o3
	b L3673
	ldub [%fp-26],%o0
L1136:
	mov %l4,%o1
	add %fp,-26,%o2
	call _mem_access,0
	mov 1,%o3
	ldub [%fp-26],%o0
L3673:
	st %o0,[%i1+%l0]
L1129:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1138
	ld [%fp-20],%o0
	srl %o0,29,%o2
	sll %o2,2,%o2
	srl %o0,24,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L3670
	ldub [%fp-20],%o0
	b L3255
	ld [%o4+%i0],%o0
L1138:
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L3671
	ldub [%fp-20],%o0
	b L3257
	ld [%o4+%i0],%o0
L1144:
	ld [%fp-20],%o1
	ldub [%fp-19],%l3
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1145
	mov 0,%i5
	srl %o1,24,%i5
L1145:
	mov 0,%l6
	ld [%fp-20],%o2
	srl %o2,24,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3895
	mov 0,%i4
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %i2,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L1149
	ldub [%fp-20],%o0
	b L3264
	ld [%o4+%i0],%o0
L1149:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3264:
	add %o1,%o0,%o0
	b L1148
	st %o0,[%i0+%o4]
L3895:
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L1151
	ldub [%fp-20],%o0
	b L3265
	ld [%o4+%i0],%o0
L1151:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3265:
	add %o1,%o0,%o0
	st %o0,[%i1+%o4]
L1148:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1153
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	lduh [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o2
	or %o0,%o2,%o0
	st %o0,[%o1+%l7]
	ld [%fp-20],%o1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	srl %o1,24,%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o3,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1155
	ldsh [%fp-18],%o2
	sll %o3,2,%o0
	b L3266
	ld [%o0+%i0],%o0
L1155:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3266:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1157
	mov 0,%o0
	mov %l4,%o1
	add %fp,-28,%o2
	call _spec_mem_access,0
	mov 2,%o3
	b L3674
	ldsh [%fp-28],%o0
L1157:
	mov %l4,%o1
	add %fp,-28,%o2
	call _mem_access,0
	mov 2,%o3
	ldsh [%fp-28],%o0
L3674:
	b L1154
	st %o0,[%i0+%l0]
L1153:
	ld [%fp-20],%o1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	srl %o1,24,%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o3,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1159
	ldsh [%fp-18],%o2
	sll %o3,2,%o0
	b L3267
	ld [%o0+%i0],%o0
L1159:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3267:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1161
	mov 0,%o0
	mov %l4,%o1
	add %fp,-28,%o2
	call _spec_mem_access,0
	mov 2,%o3
	b L3675
	ldsh [%fp-28],%o0
L1161:
	mov %l4,%o1
	add %fp,-28,%o2
	call _mem_access,0
	mov 2,%o3
	ldsh [%fp-28],%o0
L3675:
	st %o0,[%i1+%l0]
L1154:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1163
	ld [%fp-20],%o0
	srl %o0,29,%o2
	sll %o2,2,%o2
	srl %o0,24,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L3670
	ldub [%fp-20],%o0
	b L3255
	ld [%o4+%i0],%o0
L1163:
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L3671
	ldub [%fp-20],%o0
	b L3257
	ld [%o4+%i0],%o0
L1169:
	ld [%fp-20],%o1
	ldub [%fp-19],%l3
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1170
	mov 0,%i5
	srl %o1,24,%i5
L1170:
	mov 0,%l6
	ld [%fp-20],%o2
	srl %o2,24,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3896
	mov 0,%i4
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %i2,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L1174
	ldub [%fp-20],%o0
	b L3270
	ld [%o4+%i0],%o0
L1174:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3270:
	add %o1,%o0,%o0
	b L1173
	st %o0,[%i0+%o4]
L3896:
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L1176
	ldub [%fp-20],%o0
	b L3271
	ld [%o4+%i0],%o0
L1176:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3271:
	add %o1,%o0,%o0
	st %o0,[%i1+%o4]
L1173:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1178
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	lduh [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o2
	or %o0,%o2,%o0
	st %o0,[%o1+%l7]
	ld [%fp-20],%o1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	srl %o1,24,%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o3,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1180
	ldsh [%fp-18],%o2
	sll %o3,2,%o0
	b L3272
	ld [%o0+%i0],%o0
L1180:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3272:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1182
	mov 0,%o0
	mov %l4,%o1
	add %fp,-30,%o2
	call _spec_mem_access,0
	mov 2,%o3
	b L3676
	lduh [%fp-30],%o0
L1182:
	mov %l4,%o1
	add %fp,-30,%o2
	call _mem_access,0
	mov 2,%o3
	lduh [%fp-30],%o0
L3676:
	b L1179
	st %o0,[%i0+%l0]
L1178:
	ld [%fp-20],%o1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	srl %o1,24,%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o3,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1184
	ldsh [%fp-18],%o2
	sll %o3,2,%o0
	b L3273
	ld [%o0+%i0],%o0
L1184:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3273:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1186
	mov 0,%o0
	mov %l4,%o1
	add %fp,-30,%o2
	call _spec_mem_access,0
	mov 2,%o3
	b L3677
	lduh [%fp-30],%o0
L1186:
	mov %l4,%o1
	add %fp,-30,%o2
	call _mem_access,0
	mov 2,%o3
	lduh [%fp-30],%o0
L3677:
	st %o0,[%i1+%l0]
L1179:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1188
	ld [%fp-20],%o0
	srl %o0,29,%o2
	sll %o2,2,%o2
	srl %o0,24,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L3670
	ldub [%fp-20],%o0
	b L3255
	ld [%o4+%i0],%o0
L3670:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3255:
	add %o1,%o0,%o0
	b L1024
	st %o0,[%i0+%o4]
L1188:
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L3671
	ldub [%fp-20],%o0
	b L3257
	ld [%o4+%i0],%o0
L3671:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3257:
	add %o1,%o0,%o0
	b L1024
	st %o0,[%i1+%o4]
L1194:
	ld [%fp-20],%o1
	ldub [%fp-19],%l3
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1195
	mov 0,%i5
	srl %o1,24,%i5
L1195:
	mov 0,%l6
	ld [%fp-20],%o2
	srl %o2,24,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1197
	mov 0,%i4
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %i2,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ld [%fp-20],%o1
	srl %o1,24,%o2
	sll %o2,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%o0+%g3],%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o2,31,%o2
	sll %l5,%o2,%o2
	ld [%o1+%l7],%o0
	andcc %o2,%o0,%g0
	be L1199
	ldub [%fp-20],%o0
	b L3274
	ld [%o4+%i0],%o0
L1199:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3274:
	add %o3,%o0,%o0
	b L1198
	st %o0,[%i0+%o4]
L1197:
	ld [%fp-20],%o1
	srl %o1,24,%o2
	sll %o2,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%o0+%g3],%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o2,31,%o2
	sll %l5,%o2,%o2
	ld [%o1+%l7],%o0
	andcc %o2,%o0,%g0
	be L1201
	ldub [%fp-20],%o0
	b L3275
	ld [%o4+%i0],%o0
L1201:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3275:
	add %o3,%o0,%o0
	st %o0,[%i1+%o4]
L1198:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1203
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	lduh [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o2
	or %o0,%o2,%o0
	st %o0,[%o1+%l7]
	ld [%fp-20],%o1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	srl %o1,24,%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o3,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1205
	ldsh [%fp-18],%o2
	sll %o3,2,%o0
	b L3276
	ld [%o0+%i0],%o0
L1205:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3276:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1207
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3678
	ld [%fp-36],%o0
L1207:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3678:
	b L1204
	st %o0,[%i0+%l0]
L1203:
	ld [%fp-20],%o1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	srl %o1,24,%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o3,31,%o0
	sll %l5,%o0,%o0
	ld [%o1+%l7],%o1
	andcc %o0,%o1,%g0
	be L1209
	ldsh [%fp-18],%o2
	sll %o3,2,%o0
	b L3277
	ld [%o0+%i0],%o0
L1209:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3277:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1211
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3679
	ld [%fp-36],%o0
L1211:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3679:
	st %o0,[%i1+%l0]
L1204:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1213
	ld [%fp-20],%o0
	srl %o0,29,%o2
	sll %o2,2,%o2
	srl %o0,24,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ld [%fp-20],%o1
	srl %o1,24,%o2
	sll %o2,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%o0+%g3],%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o2,31,%o2
	sll %l5,%o2,%o2
	ld [%o1+%l7],%o0
	andcc %o2,%o0,%g0
	be L1215
	ldub [%fp-20],%o0
	b L3278
	ld [%o4+%i0],%o0
L1215:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3278:
	add %o3,%o0,%o0
	b L1024
	st %o0,[%i0+%o4]
L1213:
	ld [%fp-20],%o1
	srl %o1,24,%o2
	sll %o2,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%o0+%g3],%o3
	srl %o1,29,%o1
	sll %o1,2,%o1
	and %o2,31,%o2
	sll %l5,%o2,%o2
	ld [%o1+%l7],%o0
	andcc %o2,%o0,%g0
	be L1217
	ldub [%fp-20],%o0
	b L3279
	ld [%o4+%i0],%o0
L1217:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3279:
	add %o3,%o0,%o0
	b L1024
	st %o0,[%i1+%o4]
L1219:
	ld [%fp-20],%o1
	srl %o1,16,%l3
	and %l3,254,%l3
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1220
	mov 0,%i5
	srl %o1,24,%i5
L1220:
	mov 0,%l6
	ld [%fp-20],%o2
	srl %o2,24,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3897
	mov 0,%i4
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %i2,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ld [%fp-20],%o2
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L1224
	ldub [%fp-20],%o0
	b L3280
	ld [%o4+%i0],%o0
L1224:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3280:
	add %o1,%o0,%o0
	b L1223
	st %o0,[%i0+%o4]
L3897:
	srl %o2,24,%o3
	sll %o3,2,%o4
	ld [%fp-24],%o0
	sethi %hi(65280),%g3
	or %g3,%lo(65280),%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	sll %o0,2,%o0
	ld [%o0+%o1],%o1
	srl %o2,29,%o2
	sll %o2,2,%o2
	and %o3,31,%o3
	sll %l5,%o3,%o3
	ld [%o2+%l7],%o0
	andcc %o3,%o0,%g0
	be L1226
	ldub [%fp-20],%o0
	b L3281
	ld [%o4+%i0],%o0
L1226:
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L3281:
	add %o1,%o0,%o0
	st %o0,[%i1+%o4]
L1223:
	lduh [%fp-20],%o0
	andcc %o0,1,%g0
	be L1229
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3680
	ld [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 323,%o2
	sethi %hi(LC342),%o3
	call __fatal,0
	or %o3,%lo(LC342),%o3
L1229:
	ld [%fp-20],%o0
L3680:
	srl %o0,24,%o2
	srl %o0,29,%o0
	sll %o0,2,%o0
	and %o2,31,%o1
	sll %l5,%o1,%o1
	ld [%o0+%l7],%o0
	andcc %o1,%o0,%g0
	be L1232
	sethi %hi(_temp_bs),%o3
	sll %o2,2,%o0
	b L1233
	ld [%o0+%i0],%o0
L1232:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o0+%i1],%o0
L1233:
	st %o0,[%o3+%lo(_temp_bs)]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1234
	ldub [%fp-19],%o2
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o3
	xor %o2,%o3,%o2
	srl %o2,5,%o2
	sll %o2,2,%o2
	ldub [%fp-19],%o0
	xor %o0,%o3,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%o2+%l7],%o1
	or %o0,%o1,%o0
	st %o0,[%o2+%l7]
	ldub [%fp-19],%l0
	xor %l0,%o3,%l0
	sll %l0,2,%l0
	sethi %hi(_temp_bs),%o0
	ldsh [%fp-18],%o2
	ld [%o0+%lo(_temp_bs)],%o1
	mov 0,%o0
	add %o2,%o1,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
	b L1235
	st %o0,[%i0+%l0]
L1234:
	ldub [%fp-19],%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o1,%o0,%o1
	sll %o1,2,%l0
	sethi %hi(_temp_bs),%o0
	ldsh [%fp-18],%o1
	ld [%o0+%lo(_temp_bs)],%o0
	add %o1,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1238
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3681
	ld [%fp-36],%o0
L1238:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3681:
	st %o0,[%i1+%l0]
L1235:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1240
	ldub [%fp-19],%o2
	add %o2,1,%o2
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o2,%o0,%o2
	srl %o2,5,%o2
	sll %o2,2,%o3
	sll %o2,2,%o2
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o2],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o3]
	ldub [%fp-19],%o1
	add %o1,1,%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o1,%o0,%o1
	sll %o1,2,%l0
	sethi %hi(_temp_bs),%o0
	ldsh [%fp-18],%o1
	ld [%o0+%lo(_temp_bs)],%o0
	add %o1,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1242
	add %l4,4,%l4
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3682
	ld [%fp-36],%o0
L1242:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3682:
	b L1241
	st %o0,[%i0+%l0]
L1240:
	ldub [%fp-19],%o1
	add %o1,1,%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o1,%o0,%o1
	sll %o1,2,%l0
	sethi %hi(_temp_bs),%o0
	ldsh [%fp-18],%o1
	ld [%o0+%lo(_temp_bs)],%o0
	add %o1,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1244
	add %l4,4,%l4
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3683
	ld [%fp-36],%o0
L1244:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3683:
	st %o0,[%i1+%l0]
L1241:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1246
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1246:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1252:
	ldub [%fp-19],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1253
	mov 0,%i5
	ldub [%fp-20],%i5
L1253:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1255
	mov 0,%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1257
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3286
	ld [%i0+%o0],%o0
L1257:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3286:
	add %o2,%o0,%o0
	b L1256
	st %o0,[%i0+%o3]
L1255:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1259
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3287
	ld [%i0+%o0],%o0
L1259:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3287:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1256:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1261
	lduh [%fp-20],%o1
	and %o1,254,%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	lduh [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%l1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1263
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3288
	ld [%i0+%o0],%o0
L1263:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3288:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3684
	mov 0,%o0
	b L3685
	mov %l4,%o1
L1261:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%l1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1267
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3289
	ld [%i0+%o0],%o0
L1267:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3289:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1269
	mov 0,%o0
L3684:
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3686
	ld [%fp-36],%o0
L1269:
	mov %l4,%o1
L3685:
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3686:
	st %o0,[%l1+%l0]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1271
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1271:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1277:
	ldub [%fp-19],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1278
	mov 0,%i5
	ldub [%fp-20],%i5
L1278:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1280
	mov 0,%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1282
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3292
	ld [%i0+%o0],%o0
L1282:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3292:
	add %o2,%o0,%o0
	b L1281
	st %o0,[%i0+%o3]
L1280:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1284
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3293
	ld [%i0+%o0],%o0
L1284:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3293:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1281:
	lduh [%fp-20],%o0
	andcc %o0,1,%g0
	be L1287
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3687
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 336,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L1287:
	cmp %o0,0
L3687:
	be L1290
	ldub [%fp-19],%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o1,%o0,%o1
	srl %o1,5,%o1
	sll %o1,2,%o3
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	sethi %hi(_sim_swap_words),%o2
	ld [%o2+%lo(_sim_swap_words)],%o2
	xor %o0,%o2,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o3]
	ldub [%fp-19],%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o2
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%l1
	xor %o1,%o2,%o1
	sll %o1,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1292
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3294
	ld [%i0+%o0],%o0
L1292:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3294:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3688
	mov 0,%o0
	b L3689
	mov %l4,%o1
L1290:
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o2
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%l1
	xor %o1,%o2,%o1
	sll %o1,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1296
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3295
	ld [%i0+%o0],%o0
L1296:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3295:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1298
	mov 0,%o0
L3688:
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3690
	ld [%fp-36],%o0
L1298:
	mov %l4,%o1
L3689:
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3690:
	st %o0,[%l1+%l0]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1300
	ldub [%fp-19],%o1
	add %o1,1,%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o1,%o0,%o1
	srl %o1,5,%o1
	sll %o1,2,%o3
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o2
	ld [%o2+%lo(_sim_swap_words)],%o2
	xor %o0,%o2,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o3]
	ldub [%fp-19],%o1
	add %o1,1,%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o2
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%l1
	xor %o1,%o2,%o1
	sll %o1,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1302
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3296
	ld [%i0+%o0],%o0
L1302:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3296:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3636
	add %l4,4,%l4
	b L3691
	mov 0,%o0
L1300:
	add %o1,1,%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o2
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%l1
	xor %o1,%o2,%o1
	sll %o1,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1306
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3297
	ld [%i0+%o0],%o0
L1306:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3297:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1308
	add %l4,4,%l4
L3636:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3692
	ld [%fp-36],%o0
L1308:
	mov 0,%o0
L3691:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3692:
	st %o0,[%l1+%l0]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1310
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1310:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1316:
	ldub [%fp-19],%l3
	mov 0,%i5
	mov 0,%l6
	ldub [%fp-20],%i2
	mov 0,%i4
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1317
	sethi %hi(_temp_bs),%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1318
	ld [%i0+%o0],%o0
L1317:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L1318:
	st %o0,[%o2+%lo(_temp_bs)]
	sethi %hi(_ss_lr_temp),%l0
	sethi %hi(_temp_bs),%o0
	ldsh [%fp-18],%o1
	ld [%o0+%lo(_temp_bs)],%o0
	add %o1,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1319
	and %l4,-4,%l4
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3693
	ld [%fp-36],%o0
L1319:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3693:
	st %o0,[%l0+%lo(_ss_lr_temp)]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1321
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%o4
	sethi %hi(_temp_bs),%o1
	ldsh [%fp-18],%o0
	ld [%o1+%lo(_temp_bs)],%o1
	add %o0,%o1,%o0
	sethi %hi(_ss_lr_masks),%o1
	or %o1,%lo(_ss_lr_masks),%o1
	and %o0,3,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o3
	sethi %hi(_ss_lr_temp),%o2
	sethi %hi(_temp_bs),%o1
	ldsh [%fp-18],%o0
	ld [%o1+%lo(_temp_bs)],%o1
	add %o0,%o1,%o0
	sethi %hi(_ss_lr_masks),%o1
	or %o1,%lo(_ss_lr_masks),%o1
	and %o0,3,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o1
	ld [%o2+%lo(_ss_lr_temp)],%o0
	andn %o0,%o1,%o2
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1334
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3301
	ld [%i0+%o0],%o0
L1321:
	ldub [%fp-19],%o0
	sll %o0,2,%o4
	sethi %hi(_temp_bs),%o1
	ldsh [%fp-18],%o0
	ld [%o1+%lo(_temp_bs)],%o1
	add %o0,%o1,%o0
	sethi %hi(_ss_lr_masks),%o1
	or %o1,%lo(_ss_lr_masks),%o1
	and %o0,3,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o3
	sethi %hi(_ss_lr_temp),%o2
	sethi %hi(_temp_bs),%o1
	ldsh [%fp-18],%o0
	ld [%o1+%lo(_temp_bs)],%o1
	add %o0,%o1,%o0
	sethi %hi(_ss_lr_masks),%o1
	or %o1,%lo(_ss_lr_masks),%o1
	and %o0,3,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o1
	ld [%o2+%lo(_ss_lr_temp)],%o0
	andn %o0,%o1,%o2
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1336
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3303
	ld [%i0+%o0],%o0
L1327:
	ldub [%fp-19],%l3
	mov 0,%i5
	mov 0,%l6
	ldub [%fp-20],%i2
	mov 0,%i4
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1328
	sethi %hi(_temp_bs),%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1329
	ld [%i0+%o0],%o0
L1328:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L1329:
	st %o0,[%o2+%lo(_temp_bs)]
	sethi %hi(_ss_lr_temp),%l0
	sethi %hi(_temp_bs),%o0
	ldsh [%fp-18],%o1
	ld [%o0+%lo(_temp_bs)],%o0
	add %o1,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1330
	and %l4,-4,%l4
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3694
	ld [%fp-36],%o0
L1330:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3694:
	st %o0,[%l0+%lo(_ss_lr_temp)]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1332
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%o4
	sethi %hi(_temp_bs),%o1
	ldsh [%fp-18],%o0
	ld [%o1+%lo(_temp_bs)],%o1
	add %o0,%o1,%o0
	sethi %hi(_ss_lr_masks+4),%o1
	or %o1,%lo(_ss_lr_masks+4),%o1
	and %o0,3,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	xnor %g0,%o0,%o3
	sethi %hi(_ss_lr_temp),%o2
	sethi %hi(_temp_bs),%o1
	ldsh [%fp-18],%o0
	ld [%o1+%lo(_temp_bs)],%o1
	add %o0,%o1,%o0
	sethi %hi(_ss_lr_masks+4),%o1
	or %o1,%lo(_ss_lr_masks+4),%o1
	and %o0,3,%o0
	sll %o0,2,%o0
	ld [%o2+%lo(_ss_lr_temp)],%o2
	ld [%o1+%o0],%o0
	and %o2,%o0,%o2
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1334
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3301
	ld [%i0+%o0],%o0
L1334:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3301:
	and %o3,%o0,%o0
	or %o0,%o2,%o0
	b L1024
	st %o0,[%i0+%o4]
L1332:
	ldub [%fp-19],%o0
	sll %o0,2,%o4
	sethi %hi(_temp_bs),%o1
	ldsh [%fp-18],%o0
	ld [%o1+%lo(_temp_bs)],%o1
	add %o0,%o1,%o0
	sethi %hi(_ss_lr_masks+4),%o1
	or %o1,%lo(_ss_lr_masks+4),%o1
	and %o0,3,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	xnor %g0,%o0,%o3
	sethi %hi(_ss_lr_temp),%o2
	sethi %hi(_temp_bs),%o1
	ldsh [%fp-18],%o0
	ld [%o1+%lo(_temp_bs)],%o1
	add %o0,%o1,%o0
	sethi %hi(_ss_lr_masks+4),%o1
	or %o1,%lo(_ss_lr_masks+4),%o1
	and %o0,3,%o0
	sll %o0,2,%o0
	ld [%o2+%lo(_ss_lr_temp)],%o2
	ld [%o1+%o0],%o0
	and %o2,%o0,%o2
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1336
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3303
	ld [%i0+%o0],%o0
L1336:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3303:
	and %o3,%o0,%o0
	or %o0,%o2,%o0
	b L1024
	st %o0,[%i1+%o4]
L1338:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1339
	mov 0,%l3
	ldub [%fp-20],%l3
L1339:
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1341
	mov 0,%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1343
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3304
	ld [%i0+%o0],%o0
L1343:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3304:
	add %o2,%o0,%o0
	b L1342
	st %o0,[%i0+%o3]
L1341:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1345
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3305
	ld [%i0+%o0],%o0
L1345:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3305:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1342:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1347
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3306
	ld [%i0+%o0],%o0
L1347:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3306:
	add %o2,%o0,%l4
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1349
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3307
	add %i0,%o0,%o0
L1349:
	sll %o0,2,%o0
	add %i1,%o0,%o0
L3307:
	ldub [%o0+3],%o0
	stb %o0,[%fp-26]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1351
	mov 1,%o0
	mov %l4,%o1
	add %fp,-26,%o2
	call _spec_mem_access,0
	mov 1,%o3
	b L3695
	ld [%i3+%lo(_spec_mode)],%o0
L1351:
	mov %l4,%o1
	add %fp,-26,%o2
	call _mem_access,0
	mov 1,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3695:
	cmp %o0,0
	be L1353
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1353:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1359:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1360
	mov 0,%l3
	ldub [%fp-20],%l3
L1360:
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1362
	mov 0,%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1364
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3310
	ld [%i0+%o0],%o0
L1364:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3310:
	add %o2,%o0,%o0
	b L1363
	st %o0,[%i0+%o3]
L1362:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1366
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3311
	ld [%i0+%o0],%o0
L1366:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3311:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1363:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1368
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3312
	ld [%i0+%o0],%o0
L1368:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3312:
	add %o2,%o0,%l4
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1370
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3313
	add %i0,%o0,%o0
L1370:
	sll %o0,2,%o0
	add %i1,%o0,%o0
L3313:
	lduh [%o0+2],%o0
	sth %o0,[%fp-30]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1372
	mov 1,%o0
	mov %l4,%o1
	add %fp,-30,%o2
	call _spec_mem_access,0
	mov 2,%o3
	b L3696
	ld [%i3+%lo(_spec_mode)],%o0
L1372:
	mov %l4,%o1
	add %fp,-30,%o2
	call _mem_access,0
	mov 2,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3696:
	cmp %o0,0
	be L1374
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1374:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1380:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1381
	mov 0,%l3
	ldub [%fp-20],%l3
L1381:
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1383
	mov 0,%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1385
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3316
	ld [%i0+%o0],%o0
L1385:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3316:
	add %o2,%o0,%o0
	b L1384
	st %o0,[%i0+%o3]
L1383:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1387
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3317
	ld [%i0+%o0],%o0
L1387:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3317:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1384:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1389
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3318
	ld [%i0+%o0],%o0
L1389:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3318:
	add %o2,%o0,%l4
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1391
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L1392
	ld [%i0+%o0],%o0
L1391:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L1392:
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1393
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3697
	ld [%i3+%lo(_spec_mode)],%o0
L1393:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3697:
	cmp %o0,0
	be L1395
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1395:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1401:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1402
	mov 0,%l3
	ldub [%fp-20],%l3
L1402:
	mov 0,%i5
	lduh [%fp-20],%l6
	and %l6,254,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1404
	mov 0,%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1406
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3321
	ld [%i0+%o0],%o0
L1406:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3321:
	add %o2,%o0,%o0
	b L1405
	st %o0,[%i0+%o3]
L1404:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1408
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3322
	ld [%i0+%o0],%o0
L1408:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3322:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1405:
	lduh [%fp-20],%o0
	andcc %o0,1,%g0
	be L1411
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3698
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 378,%o2
	sethi %hi(LC342),%o3
	call __fatal,0
	or %o3,%lo(LC342),%o3
L1411:
	ldub [%fp-20],%o0
L3698:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1414
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3323
	ld [%i0+%o0],%o0
L1414:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3323:
	add %o2,%o0,%l4
	ldub [%fp-19],%o2
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o2,%o0,%o2
	srl %o2,5,%o2
	sll %o2,2,%o2
	ldub [%fp-19],%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o2],%o1
	andcc %o0,%o1,%g0
	be L1416
	ldub [%fp-19],%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	sll %o0,2,%o0
	b L1417
	ld [%i0+%o0],%o0
L1416:
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L1417:
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1418
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3699
	ldub [%fp-20],%o0
L1418:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ldub [%fp-20],%o0
L3699:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1420
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3324
	ld [%i0+%o0],%o0
L1420:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3324:
	add %o2,%o0,%l4
	ldub [%fp-19],%o2
	add %o2,1,%o2
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o2,%o0,%o2
	srl %o2,5,%o2
	sll %o2,2,%o2
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o2],%o1
	andcc %o0,%o1,%g0
	be L1422
	add %l4,4,%l4
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	sll %o0,2,%o0
	b L1423
	ld [%i0+%o0],%o0
L1422:
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L1423:
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1424
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3700
	ld [%i3+%lo(_spec_mode)],%o0
L1424:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3700:
	cmp %o0,0
	be L1426
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1426:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1432:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1433
	mov 0,%l3
	ldub [%fp-20],%l3
L1433:
	mov 0,%i5
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1435
	mov 0,%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1437
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3327
	ld [%i0+%o0],%o0
L1437:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3327:
	add %o2,%o0,%o0
	b L1436
	st %o0,[%i0+%o3]
L1435:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1439
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3328
	ld [%i0+%o0],%o0
L1439:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3328:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1436:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1441
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3329
	ld [%i0+%o0],%o0
L1441:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3329:
	add %o2,%o0,%l4
	sethi %hi(_use_spec_R),%g3
	ld [%g3+%lo(_use_spec_R)],%o0
	andcc %o0,1,%g0
	be L1443
	sethi %hi(_spec_regs_R),%g3
	b L1444
	ld [%g3+%lo(_spec_regs_R)],%o0
L1443:
	sethi %hi(_regs_R),%g3
	ld [%g3+%lo(_regs_R)],%o0
L1444:
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1445
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3701
	ldub [%fp-20],%o0
L1445:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ldub [%fp-20],%o0
L3701:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1447
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3330
	ld [%i0+%o0],%o0
L1447:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3330:
	add %o2,%o0,%l4
	sethi %hi(_use_spec_R),%g3
	ld [%g3+%lo(_use_spec_R)],%o0
	andcc %o0,1,%g0
	be L1449
	add %l4,4,%l4
	sethi %hi(_spec_regs_R),%g3
	b L1450
	ld [%g3+%lo(_spec_regs_R)],%o0
L1449:
	sethi %hi(_regs_R),%g3
	ld [%g3+%lo(_regs_R)],%o0
L1450:
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1451
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3702
	ld [%i3+%lo(_spec_mode)],%o0
L1451:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3702:
	cmp %o0,0
	be L1453
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1453:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1459:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1460
	mov 0,%l3
	ldub [%fp-20],%l3
L1460:
	mov 0,%i5
	ldub [%fp-19],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1462
	mov 0,%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1464
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3333
	ld [%i0+%o0],%o0
L1464:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3333:
	add %o2,%o0,%o0
	b L1463
	st %o0,[%i0+%o3]
L1462:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1466
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3334
	ld [%i0+%o0],%o0
L1466:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3334:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1463:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1468
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3335
	ld [%i0+%o0],%o0
L1468:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3335:
	add %o2,%o0,%l4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L1470
	sethi %hi(_spec_regs_F),%o1
	b L3336
	or %o1,%lo(_spec_regs_F),%o1
L1470:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3336:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1472
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3703
	ld [%i3+%lo(_spec_mode)],%o0
L1472:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3703:
	cmp %o0,0
	be L1474
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1474:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1480:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1481
	mov 0,%l3
	ldub [%fp-20],%l3
L1481:
	mov 0,%i5
	ldub [%fp-19],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1483
	mov 0,%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1485
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3339
	ld [%i0+%o0],%o0
L1485:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3339:
	add %o2,%o0,%o0
	b L1484
	st %o0,[%i0+%o3]
L1483:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1487
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3340
	ld [%i0+%o0],%o0
L1487:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3340:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1484:
	lduh [%fp-20],%o0
	andcc %o0,1,%g0
	be L1490
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3704
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 398,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L1490:
	ldub [%fp-20],%o0
L3704:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1493
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3341
	ld [%i0+%o0],%o0
L1493:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3341:
	add %o2,%o0,%l4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L1495
	sethi %hi(_spec_regs_F),%o1
	b L3342
	or %o1,%lo(_spec_regs_F),%o1
L1495:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3342:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1497
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3705
	ldub [%fp-20],%o0
L1497:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ldub [%fp-20],%o0
L3705:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1499
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3343
	ld [%i0+%o0],%o0
L1499:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3343:
	add %o2,%o0,%l4
	ldub [%fp-19],%o0
	add %o0,1,%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	add %o1,1,%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L1501
	add %l4,4,%l4
	sethi %hi(_spec_regs_F+4),%o1
	b L3344
	or %o1,%lo(_spec_regs_F+4),%o1
L1501:
	sethi %hi(_regs_F+4),%o1
	or %o1,%lo(_regs_F+4),%o1
L3344:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1503
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3706
	ld [%i3+%lo(_spec_mode)],%o0
L1503:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3706:
	cmp %o0,0
	be L1505
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1505:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1511:
	mov 0,%l3
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	mov 0,%i4
	sethi %hi(_ss_lr_temp),%l0
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1512
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3347
	ld [%i0+%o0],%o0
L1512:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3347:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1514
	and %l4,-4,%l4
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3707
	ld [%fp-36],%o0
L1514:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3707:
	st %o0,[%l0+%lo(_ss_lr_temp)]
	sethi %hi(_ss_lr_temp),%g2
	sethi %hi(_ss_lr_masks),%o0
	or %o0,%lo(_ss_lr_masks),%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1516
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3348
	ld [%i0+%o0],%o0
L1516:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3348:
	add %o2,%o0,%o0
	and %o0,3,%o0
	sll %o0,2,%o0
	add %o3,%o0,%o0
	ld [%o0],%o0
	xnor %g0,%o0,%o5
	sethi %hi(_ss_lr_temp),%o4
	sethi %hi(_ss_lr_masks),%o0
	or %o0,%lo(_ss_lr_masks),%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1518
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3349
	ld [%i0+%o0],%o0
L1518:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3349:
	add %o2,%o0,%o0
	and %o0,3,%o0
	sll %o0,2,%o0
	add %o3,%o0,%o0
	ld [%o4+%lo(_ss_lr_temp)],%o1
	ld [%o0],%o0
	and %o1,%o0,%o2
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1520
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3350
	ld [%i0+%o0],%o0
L1520:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3350:
	and %o5,%o0,%o0
	or %o0,%o2,%o0
	st %o0,[%g2+%lo(_ss_lr_temp)]
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1522
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3351
	ld [%i0+%o0],%o0
L1522:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3351:
	add %o2,%o0,%l4
	sethi %hi(_ss_lr_temp),%o0
	ld [%o0+%lo(_ss_lr_temp)],%o0
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3352
	and %l4,-4,%l4
	b L3708
	mov 1,%o0
L1526:
	mov 0,%l3
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	mov 0,%i4
	sethi %hi(_ss_lr_temp),%l0
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1527
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3353
	ld [%i0+%o0],%o0
L1527:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3353:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1529
	and %l4,-4,%l4
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3709
	ld [%fp-36],%o0
L1529:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3709:
	st %o0,[%l0+%lo(_ss_lr_temp)]
	sethi %hi(_ss_lr_temp),%g2
	sethi %hi(_ss_lr_masks),%o0
	or %o0,%lo(_ss_lr_masks),%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1531
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3354
	ld [%i0+%o0],%o0
L1531:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3354:
	add %o2,%o0,%o0
	and %o0,3,%o0
	add %o0,1,%o0
	sll %o0,2,%o0
	add %o3,%o0,%o0
	ld [%o0],%o5
	sethi %hi(_ss_lr_temp),%o4
	sethi %hi(_ss_lr_masks),%o0
	or %o0,%lo(_ss_lr_masks),%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1533
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3355
	ld [%i0+%o0],%o0
L1533:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3355:
	add %o2,%o0,%o0
	and %o0,3,%o0
	add %o0,1,%o0
	sll %o0,2,%o0
	add %o3,%o0,%o0
	ld [%o0],%o1
	ld [%o4+%lo(_ss_lr_temp)],%o0
	andn %o0,%o1,%o2
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1535
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3356
	ld [%i0+%o0],%o0
L1535:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3356:
	and %o5,%o0,%o0
	or %o0,%o2,%o0
	st %o0,[%g2+%lo(_ss_lr_temp)]
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1537
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3357
	ld [%i0+%o0],%o0
L1537:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3357:
	add %o2,%o0,%l4
	sethi %hi(_ss_lr_temp),%o0
	ld [%o0+%lo(_ss_lr_temp)],%o0
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1539
	and %l4,-4,%l4
L3352:
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3667
	sethi %hi(_ss_op2flags),%o0
L1539:
	mov 1,%o0
L3708:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	b L3667
	sethi %hi(_ss_op2flags),%o0
L1541:
	ldub [%fp-19],%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1542
	mov 0,%i5
	ldub [%fp-20],%i5
L1542:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1544
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1546
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3358
	ld [%i0+%o0],%o0
L1546:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3358:
	add %o2,%o0,%o0
	b L1545
	st %o0,[%i0+%o3]
L1544:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1548
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3359
	ld [%i0+%o0],%o0
L1548:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3359:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1545:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1550
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1552
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1553
	ld [%i0+%o0],%o2
L1552:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1553:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1554
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3360
	ld [%i0+%o0],%o0
L1554:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3360:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1556
	mov 0,%o0
	mov %l4,%o1
	add %fp,-25,%o2
	call _spec_mem_access,0
	mov 1,%o3
	b L3710
	ldsb [%fp-25],%o0
L1556:
	mov %l4,%o1
	add %fp,-25,%o2
	call _mem_access,0
	mov 1,%o3
	ldsb [%fp-25],%o0
L3710:
	b L1551
	st %o0,[%i0+%l0]
L1550:
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1558
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1559
	ld [%i0+%o0],%o2
L1558:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1559:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1560
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3361
	ld [%i0+%o0],%o0
L1560:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3361:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1562
	mov 0,%o0
	mov %l4,%o1
	add %fp,-25,%o2
	call _spec_mem_access,0
	mov 1,%o3
	b L3711
	ldsb [%fp-25],%o0
L1562:
	mov %l4,%o1
	add %fp,-25,%o2
	call _mem_access,0
	mov 1,%o3
	ldsb [%fp-25],%o0
L3711:
	st %o0,[%i1+%l0]
L1551:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1564
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1564:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1570:
	ldub [%fp-19],%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1571
	mov 0,%i5
	ldub [%fp-20],%i5
L1571:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1573
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1575
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3364
	ld [%i0+%o0],%o0
L1575:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3364:
	add %o2,%o0,%o0
	b L1574
	st %o0,[%i0+%o3]
L1573:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1577
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3365
	ld [%i0+%o0],%o0
L1577:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3365:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1574:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1579
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1581
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1582
	ld [%i0+%o0],%o2
L1581:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1582:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1583
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3366
	ld [%i0+%o0],%o0
L1583:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3366:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1585
	mov 0,%o0
	mov %l4,%o1
	add %fp,-26,%o2
	call _spec_mem_access,0
	mov 1,%o3
	b L3712
	ldub [%fp-26],%o0
L1585:
	mov %l4,%o1
	add %fp,-26,%o2
	call _mem_access,0
	mov 1,%o3
	ldub [%fp-26],%o0
L3712:
	b L1580
	st %o0,[%i0+%l0]
L1579:
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1587
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1588
	ld [%i0+%o0],%o2
L1587:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1588:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1589
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3367
	ld [%i0+%o0],%o0
L1589:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3367:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1591
	mov 0,%o0
	mov %l4,%o1
	add %fp,-26,%o2
	call _spec_mem_access,0
	mov 1,%o3
	b L3713
	ldub [%fp-26],%o0
L1591:
	mov %l4,%o1
	add %fp,-26,%o2
	call _mem_access,0
	mov 1,%o3
	ldub [%fp-26],%o0
L3713:
	st %o0,[%i1+%l0]
L1580:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1593
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1593:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1599:
	ldub [%fp-19],%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1600
	mov 0,%i5
	ldub [%fp-20],%i5
L1600:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1602
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1604
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3370
	ld [%i0+%o0],%o0
L1604:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3370:
	add %o2,%o0,%o0
	b L1603
	st %o0,[%i0+%o3]
L1602:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1606
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3371
	ld [%i0+%o0],%o0
L1606:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3371:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1603:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1608
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1610
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1611
	ld [%i0+%o0],%o2
L1610:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1611:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1612
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3372
	ld [%i0+%o0],%o0
L1612:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3372:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1614
	mov 0,%o0
	mov %l4,%o1
	add %fp,-28,%o2
	call _spec_mem_access,0
	mov 2,%o3
	b L3714
	ldsh [%fp-28],%o0
L1614:
	mov %l4,%o1
	add %fp,-28,%o2
	call _mem_access,0
	mov 2,%o3
	ldsh [%fp-28],%o0
L3714:
	b L1609
	st %o0,[%i0+%l0]
L1608:
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1616
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1617
	ld [%i0+%o0],%o2
L1616:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1617:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1618
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3373
	ld [%i0+%o0],%o0
L1618:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3373:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1620
	mov 0,%o0
	mov %l4,%o1
	add %fp,-28,%o2
	call _spec_mem_access,0
	mov 2,%o3
	b L3715
	ldsh [%fp-28],%o0
L1620:
	mov %l4,%o1
	add %fp,-28,%o2
	call _mem_access,0
	mov 2,%o3
	ldsh [%fp-28],%o0
L3715:
	st %o0,[%i1+%l0]
L1609:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1622
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1622:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1628:
	ldub [%fp-19],%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1629
	mov 0,%i5
	ldub [%fp-20],%i5
L1629:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1631
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1633
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3376
	ld [%i0+%o0],%o0
L1633:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3376:
	add %o2,%o0,%o0
	b L1632
	st %o0,[%i0+%o3]
L1631:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1635
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3377
	ld [%i0+%o0],%o0
L1635:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3377:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1632:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1637
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1639
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1640
	ld [%i0+%o0],%o2
L1639:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1640:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1641
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3378
	ld [%i0+%o0],%o0
L1641:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3378:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1643
	mov 0,%o0
	mov %l4,%o1
	add %fp,-30,%o2
	call _spec_mem_access,0
	mov 2,%o3
	b L3716
	lduh [%fp-30],%o0
L1643:
	mov %l4,%o1
	add %fp,-30,%o2
	call _mem_access,0
	mov 2,%o3
	lduh [%fp-30],%o0
L3716:
	b L1638
	st %o0,[%i0+%l0]
L1637:
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1645
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1646
	ld [%i0+%o0],%o2
L1645:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1646:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1647
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3379
	ld [%i0+%o0],%o0
L1647:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3379:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1649
	mov 0,%o0
	mov %l4,%o1
	add %fp,-30,%o2
	call _spec_mem_access,0
	mov 2,%o3
	b L3717
	lduh [%fp-30],%o0
L1649:
	mov %l4,%o1
	add %fp,-30,%o2
	call _mem_access,0
	mov 2,%o3
	lduh [%fp-30],%o0
L3717:
	st %o0,[%i1+%l0]
L1638:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1651
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1651:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1657:
	ldub [%fp-19],%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1658
	mov 0,%i5
	ldub [%fp-20],%i5
L1658:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1660
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1662
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3382
	ld [%i0+%o0],%o0
L1662:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3382:
	add %o2,%o0,%o0
	b L1661
	st %o0,[%i0+%o3]
L1660:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1664
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3383
	ld [%i0+%o0],%o0
L1664:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3383:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1661:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1666
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1668
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1669
	ld [%i0+%o0],%o2
L1668:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1669:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1670
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3384
	ld [%i0+%o0],%o0
L1670:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3384:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1672
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3718
	ld [%fp-36],%o0
L1672:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3718:
	b L1667
	st %o0,[%i0+%l0]
L1666:
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1674
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1675
	ld [%i0+%o0],%o2
L1674:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1675:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1676
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3385
	ld [%i0+%o0],%o0
L1676:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3385:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1678
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3719
	ld [%fp-36],%o0
L1678:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3719:
	st %o0,[%i1+%l0]
L1667:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1680
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1680:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1686:
	lduh [%fp-20],%l3
	and %l3,254,%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1687
	mov 0,%i5
	ldub [%fp-20],%i5
L1687:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1689
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1691
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3388
	ld [%i0+%o0],%o0
L1691:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3388:
	add %o2,%o0,%o0
	b L1690
	st %o0,[%i0+%o3]
L1689:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1693
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3389
	ld [%i0+%o0],%o0
L1693:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3389:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1690:
	lduh [%fp-20],%o0
	andcc %o0,1,%g0
	be L1696
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3720
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 454,%o2
	sethi %hi(LC342),%o3
	call __fatal,0
	or %o3,%lo(LC342),%o3
L1696:
	ldub [%fp-20],%o0
L3720:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1699
	sethi %hi(_temp_bs),%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1700
	ld [%i0+%o0],%o0
L1699:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L1700:
	st %o0,[%o2+%lo(_temp_bs)]
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1701
	sethi %hi(_temp_rd),%o2
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L1702
	ld [%i0+%o0],%o0
L1701:
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L1702:
	st %o0,[%o2+%lo(_temp_rd)]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1703
	ldub [%fp-19],%o2
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o2,%o0,%o2
	srl %o2,5,%o2
	sll %o2,2,%o3
	sll %o2,2,%o2
	ldub [%fp-19],%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o2],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o3]
	ldub [%fp-19],%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o1,%o0,%o1
	sll %o1,2,%l0
	sethi %hi(_temp_bs),%o0
	sethi %hi(_temp_rd),%o1
	ld [%o0+%lo(_temp_bs)],%o2
	ld [%o1+%lo(_temp_rd)],%o0
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1705
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3721
	ld [%fp-36],%o0
L1705:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3721:
	b L1704
	st %o0,[%i0+%l0]
L1703:
	ldub [%fp-19],%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o1,%o0,%o1
	sll %o1,2,%l0
	sethi %hi(_temp_bs),%o0
	sethi %hi(_temp_rd),%o1
	ld [%o0+%lo(_temp_bs)],%o2
	ld [%o1+%lo(_temp_rd)],%o0
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1707
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3722
	ld [%fp-36],%o0
L1707:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3722:
	st %o0,[%i1+%l0]
L1704:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1709
	ldub [%fp-19],%o2
	add %o2,1,%o2
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o2,%o0,%o2
	srl %o2,5,%o2
	sll %o2,2,%o3
	sll %o2,2,%o2
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o2],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o3]
	ldub [%fp-19],%o1
	add %o1,1,%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o1,%o0,%o1
	sll %o1,2,%l0
	sethi %hi(_temp_bs),%o0
	sethi %hi(_temp_rd),%o1
	ld [%o0+%lo(_temp_bs)],%o2
	ld [%o1+%lo(_temp_rd)],%o0
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1711
	add %l4,4,%l4
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3723
	ld [%fp-36],%o0
L1711:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3723:
	b L1710
	st %o0,[%i0+%l0]
L1709:
	ldub [%fp-19],%o1
	add %o1,1,%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o1,%o0,%o1
	sll %o1,2,%l0
	sethi %hi(_temp_bs),%o0
	sethi %hi(_temp_rd),%o1
	ld [%o0+%lo(_temp_bs)],%o2
	ld [%o1+%lo(_temp_rd)],%o0
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1713
	add %l4,4,%l4
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3724
	ld [%fp-36],%o0
L1713:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3724:
	st %o0,[%i1+%l0]
L1710:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1715
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1715:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1721:
	ldub [%fp-19],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1722
	mov 0,%i5
	ldub [%fp-20],%i5
L1722:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1724
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1726
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3392
	ld [%i0+%o0],%o0
L1726:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3392:
	add %o2,%o0,%o0
	b L1725
	st %o0,[%i0+%o3]
L1724:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1728
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3393
	ld [%i0+%o0],%o0
L1728:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3393:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1725:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1730
	lduh [%fp-20],%o1
	and %o1,254,%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	lduh [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%l1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1732
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1733
	ld [%i0+%o0],%o2
L1732:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1733:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1734
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3394
	ld [%i0+%o0],%o0
L1734:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3394:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3725
	mov 0,%o0
	b L3726
	mov %l4,%o1
L1730:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%l1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1738
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1739
	ld [%i0+%o0],%o2
L1738:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1739:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1740
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3395
	ld [%i0+%o0],%o0
L1740:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3395:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1742
	mov 0,%o0
L3725:
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3727
	ld [%fp-36],%o0
L1742:
	mov %l4,%o1
L3726:
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3727:
	st %o0,[%l1+%l0]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1744
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1744:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1750:
	ldub [%fp-19],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1751
	mov 0,%i5
	ldub [%fp-20],%i5
L1751:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1753
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1755
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3398
	ld [%i0+%o0],%o0
L1755:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3398:
	add %o2,%o0,%o0
	b L1754
	st %o0,[%i0+%o3]
L1753:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1757
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3399
	ld [%i0+%o0],%o0
L1757:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3399:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1754:
	lduh [%fp-20],%o0
	andcc %o0,1,%g0
	be L1760
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3728
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 469,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L1760:
	cmp %o0,0
L3728:
	be L1763
	ldub [%fp-19],%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o1,%o0,%o1
	srl %o1,5,%o1
	sll %o1,2,%o3
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	sethi %hi(_sim_swap_words),%o2
	ld [%o2+%lo(_sim_swap_words)],%o2
	xor %o0,%o2,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o3]
	ldub [%fp-19],%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o2
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%l1
	xor %o1,%o2,%o1
	sll %o1,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1765
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1766
	ld [%i0+%o0],%o2
L1765:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1766:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1767
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3400
	ld [%i0+%o0],%o0
L1767:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3400:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3729
	mov 0,%o0
	b L3730
	mov %l4,%o1
L1763:
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o2
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%l1
	xor %o1,%o2,%o1
	sll %o1,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1771
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1772
	ld [%i0+%o0],%o2
L1771:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1772:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1773
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3401
	ld [%i0+%o0],%o0
L1773:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3401:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1775
	mov 0,%o0
L3729:
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3731
	ld [%fp-36],%o0
L1775:
	mov %l4,%o1
L3730:
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3731:
	st %o0,[%l1+%l0]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1777
	ldub [%fp-19],%o1
	add %o1,1,%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o1,%o0,%o1
	srl %o1,5,%o1
	sll %o1,2,%o3
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o2
	ld [%o2+%lo(_sim_swap_words)],%o2
	xor %o0,%o2,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o3]
	ldub [%fp-19],%o1
	add %o1,1,%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o2
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%l1
	xor %o1,%o2,%o1
	sll %o1,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1779
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1780
	ld [%i0+%o0],%o2
L1779:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1780:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1781
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3402
	ld [%i0+%o0],%o0
L1781:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3402:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3639
	add %l4,4,%l4
	b L3732
	mov 0,%o0
L1777:
	add %o1,1,%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o2
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%l1
	xor %o1,%o2,%o1
	sll %o1,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1785
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1786
	ld [%i0+%o0],%o2
L1785:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1786:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1787
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3403
	ld [%i0+%o0],%o0
L1787:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3403:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1789
	add %l4,4,%l4
L3639:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3733
	ld [%fp-36],%o0
L1789:
	mov 0,%o0
L3732:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3733:
	st %o0,[%l1+%l0]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1791
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1791:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1797:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1798
	mov 0,%l3
	ldub [%fp-20],%l3
L1798:
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1800
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1802
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3406
	ld [%i0+%o0],%o0
L1802:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3406:
	add %o2,%o0,%o0
	b L1801
	st %o0,[%i0+%o3]
L1800:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab),%o1
	or %o1,%lo(_ss_fore_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1804
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3407
	ld [%i0+%o0],%o0
L1804:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3407:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1801:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1806
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1807
	ld [%i0+%o0],%o2
L1806:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1807:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1808
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3408
	ld [%i0+%o0],%o0
L1808:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3408:
	add %o2,%o0,%l4
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1810
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3409
	add %i0,%o0,%o0
L1810:
	sll %o0,2,%o0
	add %i1,%o0,%o0
L3409:
	ldub [%o0+3],%o0
	stb %o0,[%fp-26]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1812
	mov 1,%o0
	mov %l4,%o1
	add %fp,-26,%o2
	call _spec_mem_access,0
	mov 1,%o3
	b L3734
	ld [%i3+%lo(_spec_mode)],%o0
L1812:
	mov %l4,%o1
	add %fp,-26,%o2
	call _mem_access,0
	mov 1,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3734:
	cmp %o0,0
	be L1814
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1814:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab),%o1
	or %o1,%lo(_ss_aft_tab),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1820:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1821
	mov 0,%l3
	ldub [%fp-20],%l3
L1821:
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1823
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1825
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3412
	ld [%i0+%o0],%o0
L1825:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3412:
	add %o2,%o0,%o0
	b L1824
	st %o0,[%i0+%o3]
L1823:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+20),%o1
	or %o1,%lo(_ss_fore_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1827
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3413
	ld [%i0+%o0],%o0
L1827:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3413:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1824:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1829
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1830
	ld [%i0+%o0],%o2
L1829:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1830:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1831
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3414
	ld [%i0+%o0],%o0
L1831:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3414:
	add %o2,%o0,%l4
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1833
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3415
	add %i0,%o0,%o0
L1833:
	sll %o0,2,%o0
	add %i1,%o0,%o0
L3415:
	lduh [%o0+2],%o0
	sth %o0,[%fp-30]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1835
	mov 1,%o0
	mov %l4,%o1
	add %fp,-30,%o2
	call _spec_mem_access,0
	mov 2,%o3
	b L3735
	ld [%i3+%lo(_spec_mode)],%o0
L1835:
	mov %l4,%o1
	add %fp,-30,%o2
	call _mem_access,0
	mov 2,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3735:
	cmp %o0,0
	be L1837
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1837:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+20),%o1
	or %o1,%lo(_ss_aft_tab+20),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1843:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1844
	mov 0,%l3
	ldub [%fp-20],%l3
L1844:
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1846
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1848
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3418
	ld [%i0+%o0],%o0
L1848:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3418:
	add %o2,%o0,%o0
	b L1847
	st %o0,[%i0+%o3]
L1846:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1850
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3419
	ld [%i0+%o0],%o0
L1850:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3419:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1847:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1852
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1853
	ld [%i0+%o0],%o2
L1852:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1853:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1854
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3420
	ld [%i0+%o0],%o0
L1854:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3420:
	add %o2,%o0,%l4
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1856
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L1857
	ld [%i0+%o0],%o0
L1856:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L1857:
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1858
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3736
	ld [%i3+%lo(_spec_mode)],%o0
L1858:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3736:
	cmp %o0,0
	be L1860
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1860:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1866:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1867
	mov 0,%l3
	ldub [%fp-20],%l3
L1867:
	mov 0,%i5
	lduh [%fp-20],%l6
	and %l6,254,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1869
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1871
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3423
	ld [%i0+%o0],%o0
L1871:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3423:
	add %o2,%o0,%o0
	b L1870
	st %o0,[%i0+%o3]
L1869:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1873
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3424
	ld [%i0+%o0],%o0
L1873:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3424:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1870:
	lduh [%fp-20],%o0
	andcc %o0,1,%g0
	be L1876
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3737
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 493,%o2
	sethi %hi(LC342),%o3
	call __fatal,0
	or %o3,%lo(LC342),%o3
L1876:
	ldub [%fp-20],%o0
L3737:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1879
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1880
	ld [%i0+%o0],%o2
L1879:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1880:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1881
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3425
	ld [%i0+%o0],%o0
L1881:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3425:
	add %o2,%o0,%l4
	ldub [%fp-19],%o2
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o2,%o0,%o2
	srl %o2,5,%o2
	sll %o2,2,%o2
	ldub [%fp-19],%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o2],%o1
	andcc %o0,%o1,%g0
	be L1883
	ldub [%fp-19],%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	sll %o0,2,%o0
	b L1884
	ld [%i0+%o0],%o0
L1883:
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L1884:
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1885
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3738
	ldub [%fp-20],%o0
L1885:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ldub [%fp-20],%o0
L3738:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1887
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1888
	ld [%i0+%o0],%o2
L1887:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1888:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1889
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3426
	ld [%i0+%o0],%o0
L1889:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3426:
	add %o2,%o0,%l4
	ldub [%fp-19],%o2
	add %o2,1,%o2
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o2,%o0,%o2
	srl %o2,5,%o2
	sll %o2,2,%o2
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o2],%o1
	andcc %o0,%o1,%g0
	be L1891
	add %l4,4,%l4
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	sll %o0,2,%o0
	b L1892
	ld [%i0+%o0],%o0
L1891:
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L1892:
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1893
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3739
	ld [%i3+%lo(_spec_mode)],%o0
L1893:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3739:
	cmp %o0,0
	be L1895
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1895:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1901:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1902
	mov 0,%l3
	ldub [%fp-20],%l3
L1902:
	mov 0,%i5
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1904
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1906
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3429
	ld [%i0+%o0],%o0
L1906:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3429:
	add %o2,%o0,%o0
	b L1905
	st %o0,[%i0+%o3]
L1904:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1908
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3430
	ld [%i0+%o0],%o0
L1908:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3430:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1905:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1910
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1911
	ld [%i0+%o0],%o2
L1910:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1911:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1912
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3431
	ld [%i0+%o0],%o0
L1912:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3431:
	add %o2,%o0,%l4
	sethi %hi(_use_spec_R),%g3
	ld [%g3+%lo(_use_spec_R)],%o0
	andcc %o0,1,%g0
	be L1914
	sethi %hi(_spec_regs_R),%g3
	b L1915
	ld [%g3+%lo(_spec_regs_R)],%o0
L1914:
	sethi %hi(_regs_R),%g3
	ld [%g3+%lo(_regs_R)],%o0
L1915:
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1916
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3740
	ldub [%fp-20],%o0
L1916:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ldub [%fp-20],%o0
L3740:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1918
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1919
	ld [%i0+%o0],%o2
L1918:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1919:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1920
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3432
	ld [%i0+%o0],%o0
L1920:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3432:
	add %o2,%o0,%l4
	sethi %hi(_use_spec_R),%g3
	ld [%g3+%lo(_use_spec_R)],%o0
	andcc %o0,1,%g0
	be L1922
	add %l4,4,%l4
	sethi %hi(_spec_regs_R),%g3
	b L1923
	ld [%g3+%lo(_spec_regs_R)],%o0
L1922:
	sethi %hi(_regs_R),%g3
	ld [%g3+%lo(_regs_R)],%o0
L1923:
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1924
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3741
	ld [%i3+%lo(_spec_mode)],%o0
L1924:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3741:
	cmp %o0,0
	be L1926
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1926:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1932:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1933
	mov 0,%l3
	ldub [%fp-20],%l3
L1933:
	mov 0,%i5
	ldub [%fp-19],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1935
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1937
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3435
	ld [%i0+%o0],%o0
L1937:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3435:
	add %o2,%o0,%o0
	b L1936
	st %o0,[%i0+%o3]
L1935:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1939
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3436
	ld [%i0+%o0],%o0
L1939:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3436:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1936:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1941
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1942
	ld [%i0+%o0],%o2
L1941:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1942:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1943
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3437
	ld [%i0+%o0],%o0
L1943:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3437:
	add %o2,%o0,%l4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L1945
	sethi %hi(_spec_regs_F),%o1
	b L3438
	or %o1,%lo(_spec_regs_F),%o1
L1945:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3438:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1947
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3742
	ld [%i3+%lo(_spec_mode)],%o0
L1947:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3742:
	cmp %o0,0
	be L1949
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1949:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1955:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1956
	mov 0,%l3
	ldub [%fp-20],%l3
L1956:
	mov 0,%i5
	ldub [%fp-19],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1958
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1960
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3441
	ld [%i0+%o0],%o0
L1960:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3441:
	add %o2,%o0,%o0
	b L1959
	st %o0,[%i0+%o3]
L1958:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_fore_tab+140),%o1
	or %o1,%lo(_ss_fore_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1962
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3442
	ld [%i0+%o0],%o0
L1962:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3442:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1959:
	lduh [%fp-20],%o0
	andcc %o0,1,%g0
	be L1965
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3743
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 514,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L1965:
	ldub [%fp-20],%o0
L3743:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1968
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1969
	ld [%i0+%o0],%o2
L1968:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1969:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1970
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3443
	ld [%i0+%o0],%o0
L1970:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3443:
	add %o2,%o0,%l4
	ldub [%fp-19],%o2
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o2,%o0,%o2
	srl %o2,5,%o2
	sll %o2,2,%o2
	ldub [%fp-19],%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o2],%o1
	andcc %o0,%o1,%g0
	be L1972
	ldub [%fp-19],%o1
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o2
	sethi %hi(_spec_regs_F),%o0
	b L3444
	or %o0,%lo(_spec_regs_F),%o0
L1972:
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o2
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3444:
	xor %o1,%o2,%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%o0
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1974
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3744
	ldub [%fp-20],%o0
L1974:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ldub [%fp-20],%o0
L3744:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1976
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L1977
	ld [%i0+%o0],%o2
L1976:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L1977:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L1978
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3445
	ld [%i0+%o0],%o0
L1978:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3445:
	add %o2,%o0,%l4
	ldub [%fp-19],%o2
	add %o2,1,%o2
	sethi %hi(_sim_swap_words),%o0
	ld [%o0+%lo(_sim_swap_words)],%o0
	xor %o2,%o0,%o2
	srl %o2,5,%o2
	sll %o2,2,%o2
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o1
	xor %o0,%o1,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o2],%o1
	andcc %o0,%o1,%g0
	be L1980
	add %l4,4,%l4
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o2
	sethi %hi(_spec_regs_F),%o1
	b L3446
	or %o1,%lo(_spec_regs_F),%o1
L1980:
	ldub [%fp-19],%o0
	add %o0,1,%o0
	sethi %hi(_sim_swap_words),%o1
	ld [%o1+%lo(_sim_swap_words)],%o2
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3446:
	xor %o0,%o2,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1982
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3745
	ld [%i3+%lo(_spec_mode)],%o0
L1982:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3745:
	cmp %o0,0
	be L1984
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L1984:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	sethi %hi(_ss_aft_tab+140),%o1
	or %o1,%lo(_ss_aft_tab+140),%o1
	srl %o0,8,%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L1990:
	ldub [%fp-19],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L1991
	mov 0,%i5
	ldub [%fp-20],%i5
L1991:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1993
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1995
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3449
	ld [%i0+%o0],%o0
L1995:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3449:
	add %o2,%o0,%o0
	b L1994
	st %o0,[%i0+%o3]
L1993:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L1997
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3450
	ld [%i0+%o0],%o0
L1997:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3450:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L1994:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L1999
	lduh [%fp-20],%o1
	and %o1,254,%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	lduh [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%l1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2001
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2002
	ld [%i0+%o0],%o2
L2001:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2002:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2003
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3451
	ld [%i0+%o0],%o0
L2003:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3451:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3640
	add %l4,4,%l4
	b L3746
	mov 0,%o0
L1999:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%l1
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2007
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2008
	ld [%i0+%o0],%o2
L2007:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2008:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2009
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3452
	ld [%i0+%o0],%o0
L2009:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3452:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2011
	add %l4,4,%l4
L3640:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3747
	ld [%fp-36],%o0
L2011:
	mov 0,%o0
L3746:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3747:
	st %o0,[%l1+%l0]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2013
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L2013:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L2019:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L2020
	mov 0,%l3
	ldub [%fp-20],%l3
L2020:
	mov 0,%i5
	ldub [%fp-19],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2022
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2024
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3455
	ld [%i0+%o0],%o0
L2024:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3455:
	add %o2,%o0,%o0
	b L2023
	st %o0,[%i0+%o3]
L2022:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2026
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3456
	ld [%i0+%o0],%o0
L2026:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3456:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L2023:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2028
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2029
	ld [%i0+%o0],%o2
L2028:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2029:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2030
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3457
	ld [%i0+%o0],%o0
L2030:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3457:
	add %o2,%o0,%l4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2032
	add %l4,4,%l4
	sethi %hi(_spec_regs_F),%o1
	b L3458
	or %o1,%lo(_spec_regs_F),%o1
L2032:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3458:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2034
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3748
	ld [%i3+%lo(_spec_mode)],%o0
L2034:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3748:
	cmp %o0,0
	be L2036
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L2036:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L2042:
	ldub [%fp-19],%l3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L2043
	mov 0,%i5
	ldub [%fp-20],%i5
L2043:
	mov 0,%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2045
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2047
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3461
	ld [%i0+%o0],%o0
L2047:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3461:
	add %o2,%o0,%o0
	b L2046
	st %o0,[%i0+%o3]
L2045:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2049
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3462
	ld [%i0+%o0],%o0
L2049:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3462:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L2046:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2051
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2053
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2054
	ld [%i0+%o0],%o2
L2053:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2054:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2055
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3463
	ld [%i0+%o0],%o0
L2055:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3463:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2057
	add %l4,4,%l4
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3749
	ld [%fp-36],%o0
L2057:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3749:
	b L2052
	st %o0,[%i0+%l0]
L2051:
	ldub [%fp-19],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2059
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2060
	ld [%i0+%o0],%o2
L2059:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2060:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2061
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3464
	ld [%i0+%o0],%o0
L2061:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3464:
	add %o2,%o0,%l4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2063
	add %l4,4,%l4
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3750
	ld [%fp-36],%o0
L2063:
	mov 0,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%fp-36],%o0
L3750:
	st %o0,[%i1+%l0]
L2052:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2065
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L2065:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L2071:
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	cmp %o0,0
	be L2072
	mov 0,%l3
	ldub [%fp-20],%l3
L2072:
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2074
	ldub [%fp-18],%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2076
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3467
	ld [%i0+%o0],%o0
L2076:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3467:
	add %o2,%o0,%o0
	b L2075
	st %o0,[%i0+%o3]
L2074:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_fore_tab+60),%g3
	or %g3,%lo(_ss_fore_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2078
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3468
	ld [%i0+%o0],%o0
L2078:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3468:
	add %o2,%o0,%o0
	st %o0,[%i1+%o3]
L2075:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2080
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2081
	ld [%i0+%o0],%o2
L2080:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2081:
	ldub [%fp-18],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-18],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2082
	ldub [%fp-18],%o0
	sll %o0,2,%o0
	b L3469
	ld [%i0+%o0],%o0
L2082:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3469:
	add %o2,%o0,%l4
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2084
	add %l4,4,%l4
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L2085
	ld [%i0+%o0],%o0
L2084:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L2085:
	st %o0,[%fp-36]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2086
	mov 1,%o0
	mov %l4,%o1
	add %fp,-36,%o2
	call _spec_mem_access,0
	mov 4,%o3
	b L3751
	ld [%i3+%lo(_spec_mode)],%o0
L2086:
	mov %l4,%o1
	add %fp,-36,%o2
	call _mem_access,0
	mov 4,%o3
	ld [%i3+%lo(_spec_mode)],%o0
L3751:
	cmp %o0,0
	be L2088
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L2088:
	ldub [%fp-20],%o0
	sll %o0,2,%o3
	ld [%fp-24],%o0
	ld [%fp-100],%g3
	and %o0,%g3,%o0
	srl %o0,8,%o0
	sll %o0,2,%o0
	sethi %hi(_ss_aft_tab+60),%g3
	or %g3,%lo(_ss_aft_tab+60),%g3
	ld [%g3+%o0],%o2
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L2094:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	ldub [%fp-19],%i2
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2097
	mov 0,%i4
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bg L3752
	ldub [%fp-19],%o0
	b L3753
	ldub [%fp-20],%o0
L2097:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	ble L2096
	ldub [%fp-19],%o0
L3752:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2099
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bg L3754
	ldub [%fp-20],%o0
	b L3755
	srl %o0,5,%o0
L2099:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	ble L2096
	ldub [%fp-20],%o0
L3754:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2101
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	sethi %hi(2147483647),%o1
	or %o1,%lo(2147483647),%o1
	b L3472
	ld [%i0+%o0],%o0
L2101:
	sll %o0,2,%o0
	sethi %hi(2147483647),%o1
	or %o1,%lo(2147483647),%o1
	ld [%i1+%o0],%o0
L3472:
	sub %o1,%o0,%o2
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2103
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o2,%o0
	bl L3756
	ld [%i3+%lo(_spec_mode)],%o0
	b L3753
	ldub [%fp-20],%o0
L2103:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o2,%o0
	bge L3753
	ldub [%fp-20],%o0
	ld [%i3+%lo(_spec_mode)],%o0
L3756:
	cmp %o0,0
	bne L3753
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 553,%o2
	sethi %hi(LC344),%o3
	call __fatal,0
	or %o3,%lo(LC344),%o3
L2096:
	ldub [%fp-20],%o0
L3753:
	srl %o0,5,%o0
L3755:
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2109
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bl L3757
	ldub [%fp-19],%o0
	b L3758
	ld [%i3+%lo(_spec_mode)],%o0
L2109:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	bge L3758
	ld [%i3+%lo(_spec_mode)],%o0
	ldub [%fp-19],%o0
L3757:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2111
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bl L3759
	ldub [%fp-20],%o0
	b L3758
	ld [%i3+%lo(_spec_mode)],%o0
L2111:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	bge L3758
	ld [%i3+%lo(_spec_mode)],%o0
	ldub [%fp-20],%o0
L3759:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2113
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	sethi %hi(-2147483647),%o1
	or %o1,%lo(-2147483647),%o1
	b L3473
	ld [%i0+%o0],%o0
L2113:
	sll %o0,2,%o0
	sethi %hi(-2147483647),%o1
	or %o1,%lo(-2147483647),%o1
	ld [%i1+%o0],%o0
L3473:
	sub %o1,%o0,%o2
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2115
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o2,%o0
	bg L3760
	ld [%i3+%lo(_spec_mode)],%o0
	b L3761
	cmp %o0,0
L2115:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o2,%o0
	ble L3758
	ld [%i3+%lo(_spec_mode)],%o0
L3760:
	cmp %o0,0
	bne L3758
	ld [%i3+%lo(_spec_mode)],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 553,%o2
	sethi %hi(LC345),%o3
	call __fatal,0
	or %o3,%lo(LC345),%o3
L3758:
	cmp %o0,0
L3761:
	be L2119
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2121
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2122
	ld [%i0+%o0],%o2
L2121:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2122:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2123
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L2123:
	b L3898
	sll %o0,2,%o0
L2119:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2125
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2126
	ld [%i0+%o0],%o2
L2125:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2126:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2127
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L2127:
	b L3899
	sll %o0,2,%o0
L2129:
	ldub [%fp-19],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	mov 0,%i2
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2132
	mov 0,%i4
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bg L3762
	ldsh [%fp-18],%o0
	b L3763
	ldub [%fp-20],%o0
L2132:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	ble L2131
	ldsh [%fp-18],%o0
L3762:
	cmp %o0,0
	ble L2131
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2134
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	sethi %hi(2147483647),%o1
	or %o1,%lo(2147483647),%o1
	ld [%i0+%o0],%o0
	sub %o1,%o0,%o1
	cmp %o1,%o2
	bl L3764
	ld [%i3+%lo(_spec_mode)],%o0
	b L3763
	ldub [%fp-20],%o0
L2134:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	sethi %hi(2147483647),%o1
	or %o1,%lo(2147483647),%o1
	ld [%i1+%o0],%o0
	sub %o1,%o0,%o1
	cmp %o1,%o2
	bge L3763
	ldub [%fp-20],%o0
	ld [%i3+%lo(_spec_mode)],%o0
L3764:
	cmp %o0,0
	bne L3763
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 558,%o2
	sethi %hi(LC344),%o3
	call __fatal,0
	or %o3,%lo(LC344),%o3
L2131:
	ldub [%fp-20],%o0
L3763:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2140
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bl L3765
	ldsh [%fp-18],%o0
	b L3766
	ld [%i3+%lo(_spec_mode)],%o0
L2140:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	bge L3766
	ld [%i3+%lo(_spec_mode)],%o0
	ldsh [%fp-18],%o0
L3765:
	cmp %o0,0
	bge L3766
	ld [%i3+%lo(_spec_mode)],%o0
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2142
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	sethi %hi(-2147483647),%o1
	or %o1,%lo(-2147483647),%o1
	ld [%i0+%o0],%o0
	sub %o1,%o0,%o1
	cmp %o1,%o2
	bg L3767
	ld [%i3+%lo(_spec_mode)],%o0
	b L3768
	cmp %o0,0
L2142:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	sethi %hi(-2147483647),%o1
	or %o1,%lo(-2147483647),%o1
	ld [%i1+%o0],%o0
	sub %o1,%o0,%o1
	cmp %o1,%o2
	ble L3766
	ld [%i3+%lo(_spec_mode)],%o0
L3767:
	cmp %o0,0
	bne L3766
	ld [%i3+%lo(_spec_mode)],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 558,%o2
	sethi %hi(LC345),%o3
	call __fatal,0
	or %o3,%lo(LC345),%o3
L3766:
	cmp %o0,0
L3768:
	be L2146
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L2146:
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L2152:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	ldub [%fp-19],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2153
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2155
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2156
	ld [%i0+%o0],%o2
L2155:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2156:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2157
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L2157:
	b L3898
	sll %o0,2,%o0
L2153:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2159
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2160
	ld [%i0+%o0],%o2
L2159:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2160:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2161
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L2161:
	b L3899
	sll %o0,2,%o0
L2163:
	ldub [%fp-19],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2164
	mov 0,%i4
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2166
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3283
	ld [%i0+%o0],%o0
L2166:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
L3898:
	ld [%i1+%o0],%o0
L3283:
	add %o2,%o0,%o0
	b L1024
	st %o0,[%i0+%o3]
L2164:
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2168
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3285
	ld [%i0+%o0],%o0
L2168:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
L3899:
	ld [%i1+%o0],%o0
L3285:
	add %o2,%o0,%o0
	b L1024
	st %o0,[%i1+%o3]
L2170:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	ldub [%fp-19],%i2
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2173
	mov 0,%i4
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bg L3769
	ldub [%fp-19],%o0
	b L3770
	ldub [%fp-20],%o0
L2173:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	ble L2172
	ldub [%fp-19],%o0
L3769:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2175
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bl L3771
	ldub [%fp-19],%o0
	b L3770
	ldub [%fp-20],%o0
L2175:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	bge L3770
	ldub [%fp-20],%o0
	ldub [%fp-19],%o0
L3771:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2177
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3480
	ld [%i0+%o0],%o1
L2177:
	sll %o0,2,%o0
	ld [%i1+%o0],%o1
L3480:
	sethi %hi(2147483647),%o0
	or %o0,%lo(2147483647),%o0
	add %o1,%o0,%o2
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2179
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o2,%o0
	bl L3772
	ld [%i3+%lo(_spec_mode)],%o0
	b L3770
	ldub [%fp-20],%o0
L2179:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o2,%o0
	bge L3770
	ldub [%fp-20],%o0
	ld [%i3+%lo(_spec_mode)],%o0
L3772:
	cmp %o0,0
	bne L3770
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 574,%o2
	sethi %hi(LC346),%o3
	call __fatal,0
	or %o3,%lo(LC346),%o3
L2172:
	ldub [%fp-20],%o0
L3770:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2185
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bl L3773
	ldub [%fp-19],%o0
	b L3774
	ld [%i3+%lo(_spec_mode)],%o0
L2185:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	bge L3774
	ld [%i3+%lo(_spec_mode)],%o0
	ldub [%fp-19],%o0
L3773:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2187
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bg L3775
	ldub [%fp-19],%o0
	b L3774
	ld [%i3+%lo(_spec_mode)],%o0
L2187:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	ble L2184
	ldub [%fp-19],%o0
L3775:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2189
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3481
	ld [%i0+%o0],%o1
L2189:
	sll %o0,2,%o0
	ld [%i1+%o0],%o1
L3481:
	sethi %hi(-2147483647),%o0
	or %o0,%lo(-2147483647),%o0
	add %o1,%o0,%o2
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2191
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o2,%o0
	bg L3776
	ld [%i3+%lo(_spec_mode)],%o0
	b L3777
	cmp %o0,0
L2191:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o2,%o0
	ble L2184
	ld [%i3+%lo(_spec_mode)],%o0
L3776:
	cmp %o0,0
	bne L3774
	ld [%i3+%lo(_spec_mode)],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 574,%o2
	sethi %hi(LC347),%o3
	call __fatal,0
	or %o3,%lo(LC347),%o3
L2184:
	ld [%i3+%lo(_spec_mode)],%o0
L3774:
	cmp %o0,0
L3777:
	be L2195
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2197
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2198
	ld [%i0+%o0],%o2
L2197:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2198:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2210
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3483
	ld [%i0+%o0],%o0
L2195:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2201
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2202
	ld [%i0+%o0],%o2
L2201:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2202:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2214
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3485
	ld [%i0+%o0],%o0
L2205:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	ldub [%fp-19],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2206
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2208
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2209
	ld [%i0+%o0],%o2
L2208:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2209:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2210
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3483
	ld [%i0+%o0],%o0
L2210:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3483:
	sub %o2,%o0,%o0
	b L1024
	st %o0,[%i0+%o3]
L2206:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2212
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2213
	ld [%i0+%o0],%o2
L2212:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2213:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2214
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3485
	ld [%i0+%o0],%o0
L2214:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3485:
	sub %o2,%o0,%o0
	b L1024
	st %o0,[%i1+%o3]
L2216:
	mov 64,%l3
	mov 65,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	mov 0,%i4
	ld [%fp-24],%o0
	st %o0,[%fp-48]
	ld [%fp-20],%o0
	st %o0,[%fp-44]
	call _InstMULT,0
	add %fp,-48,%o0
	b L3667
	sethi %hi(_ss_op2flags),%o0
L2217:
	mov 64,%l3
	mov 65,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	mov 0,%i4
	ld [%fp-24],%o0
	st %o0,[%fp-48]
	ld [%fp-20],%o0
	st %o0,[%fp-44]
	call _InstMULTU,0
	add %fp,-48,%o0
	b L3667
	sethi %hi(_ss_op2flags),%o0
L2218:
	mov 64,%l3
	mov 65,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3779
	mov 0,%i4
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2223
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3486
	ld [%i0+%o0],%o0
L2223:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3486:
	cmp %o0,0
	bne L3778
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3779
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 596,%o2
	sethi %hi(LC348),%o3
	call __fatal,0
	or %o3,%lo(LC348),%o3
L3778:
	cmp %o0,0
L3779:
	be L2227
	sethi %hi(_use_spec_LO),%o0
	st %l5,[%o0+%lo(_use_spec_LO)]
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2231
	sethi %hi(_spec_regs_LO),%l0
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bne L3780
	ldub [%fp-20],%o0
	b L3781
	mov 0,%o0
L2231:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	be L2229
	ldub [%fp-20],%o0
L3780:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2233
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2234
	ld [%i0+%o0],%o2
L2233:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2234:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2235
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	mov %o2,%o0
	call .div,0
	ld [%i0+%o1],%o1
	b L2228
	st %o0,[%l0+%lo(_spec_regs_LO)]
L2235:
	sll %o1,2,%o1
	mov %o2,%o0
	call .div,0
	ld [%i1+%o1],%o1
	b L2228
	st %o0,[%l0+%lo(_spec_regs_LO)]
L2229:
	mov 0,%o0
L3781:
	b L2228
	st %o0,[%l0+%lo(_spec_regs_LO)]
L2227:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2239
	sethi %hi(_regs_LO),%l0
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bne L3782
	ldub [%fp-20],%o0
	b L2238
	mov 0,%o0
L2239:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	be L2237
	ldub [%fp-20],%o0
L3782:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2241
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2242
	ld [%i0+%o0],%o2
L2241:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2242:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2243
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	mov %o2,%o0
	call .div,0
	ld [%i0+%o1],%o1
	b L2228
	st %o0,[%l0+%lo(_regs_LO)]
L2243:
	sll %o1,2,%o1
	mov %o2,%o0
	call .div,0
	ld [%i1+%o1],%o1
	b L2228
	st %o0,[%l0+%lo(_regs_LO)]
L2237:
	mov 0,%o0
L2238:
	st %o0,[%l0+%lo(_regs_LO)]
L2228:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2245
	sethi %hi(_use_spec_HI),%o0
	st %l5,[%o0+%lo(_use_spec_HI)]
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2249
	sethi %hi(_spec_regs_HI),%l0
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bne L3783
	ldub [%fp-20],%o0
	b L3784
	mov 0,%o0
L2249:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	be L2292
	ldub [%fp-20],%o0
L3783:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2251
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2252
	ld [%i0+%o0],%o2
L2251:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2252:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2253
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	mov %o2,%o0
	call .rem,0
	ld [%i0+%o1],%o1
	b L1024
	st %o0,[%l0+%lo(_spec_regs_HI)]
L2253:
	sll %o1,2,%o1
	mov %o2,%o0
	call .rem,0
	ld [%i1+%o1],%o1
	b L1024
	st %o0,[%l0+%lo(_spec_regs_HI)]
L2245:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2257
	sethi %hi(_regs_HI),%l0
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bne L3785
	ldub [%fp-20],%o0
	b L3786
	mov 0,%o0
L2257:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	be L2300
	ldub [%fp-20],%o0
L3785:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2259
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2260
	ld [%i0+%o0],%o2
L2259:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2260:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2261
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	mov %o2,%o0
	call .rem,0
	ld [%i0+%o1],%o1
	b L1024
	st %o0,[%l0+%lo(_regs_HI)]
L2261:
	sll %o1,2,%o1
	mov %o2,%o0
	call .rem,0
	ld [%i1+%o1],%o1
	b L1024
	st %o0,[%l0+%lo(_regs_HI)]
L2263:
	mov 64,%l3
	mov 65,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3788
	mov 0,%i4
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2268
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3487
	ld [%i0+%o0],%o0
L2268:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3487:
	cmp %o0,0
	bne L3787
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3788
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 603,%o2
	sethi %hi(LC348),%o3
	call __fatal,0
	or %o3,%lo(LC348),%o3
L3787:
	cmp %o0,0
L3788:
	be L2272
	sethi %hi(_use_spec_LO),%o0
	st %l5,[%o0+%lo(_use_spec_LO)]
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2276
	sethi %hi(_spec_regs_LO),%l0
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bne L3789
	ldub [%fp-20],%o0
	b L3790
	mov 0,%o0
L2276:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	be L2274
	ldub [%fp-20],%o0
L3789:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2278
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2279
	ld [%i0+%o0],%o2
L2278:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2279:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2280
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	mov %o2,%o0
	call .udiv,0
	ld [%i0+%o1],%o1
	b L2273
	st %o0,[%l0+%lo(_spec_regs_LO)]
L2280:
	sll %o1,2,%o1
	mov %o2,%o0
	call .udiv,0
	ld [%i1+%o1],%o1
	b L2273
	st %o0,[%l0+%lo(_spec_regs_LO)]
L2274:
	mov 0,%o0
L3790:
	b L2273
	st %o0,[%l0+%lo(_spec_regs_LO)]
L2272:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2284
	sethi %hi(_regs_LO),%l0
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bne L3791
	ldub [%fp-20],%o0
	b L2283
	mov 0,%o0
L2284:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	be L2282
	ldub [%fp-20],%o0
L3791:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2286
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2287
	ld [%i0+%o0],%o2
L2286:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2287:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2288
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	mov %o2,%o0
	call .udiv,0
	ld [%i0+%o1],%o1
	b L2273
	st %o0,[%l0+%lo(_regs_LO)]
L2288:
	sll %o1,2,%o1
	mov %o2,%o0
	call .udiv,0
	ld [%i1+%o1],%o1
	b L2273
	st %o0,[%l0+%lo(_regs_LO)]
L2282:
	mov 0,%o0
L2283:
	st %o0,[%l0+%lo(_regs_LO)]
L2273:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2290
	sethi %hi(_use_spec_HI),%o0
	st %l5,[%o0+%lo(_use_spec_HI)]
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2294
	sethi %hi(_spec_regs_HI),%l0
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bne L3792
	ldub [%fp-20],%o0
	b L3784
	mov 0,%o0
L2294:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	be L2292
	ldub [%fp-20],%o0
L3792:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2296
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2297
	ld [%i0+%o0],%o2
L2296:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2297:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2298
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	mov %o2,%o0
	call .urem,0
	ld [%i0+%o1],%o1
	b L1024
	st %o0,[%l0+%lo(_spec_regs_HI)]
L2298:
	sll %o1,2,%o1
	mov %o2,%o0
	call .urem,0
	ld [%i1+%o1],%o1
	b L1024
	st %o0,[%l0+%lo(_spec_regs_HI)]
L2292:
	mov 0,%o0
L3784:
	b L1024
	st %o0,[%l0+%lo(_spec_regs_HI)]
L2290:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2302
	sethi %hi(_regs_HI),%l0
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i0+%o0],%o0
	cmp %o0,0
	bne L3793
	ldub [%fp-20],%o0
	b L3786
	mov 0,%o0
L2302:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
	cmp %o0,0
	be L2300
	ldub [%fp-20],%o0
L3793:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2304
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2305
	ld [%i0+%o0],%o2
L2304:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2305:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2306
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	mov %o2,%o0
	call .urem,0
	ld [%i0+%o1],%o1
	b L1024
	st %o0,[%l0+%lo(_regs_HI)]
L2306:
	sll %o1,2,%o1
	mov %o2,%o0
	call .urem,0
	ld [%i1+%o1],%o1
	b L1024
	st %o0,[%l0+%lo(_regs_HI)]
L2300:
	mov 0,%o0
L3786:
	b L1024
	st %o0,[%l0+%lo(_regs_HI)]
L2308:
	ldub [%fp-18],%l3
	mov 0,%i5
	mov 64,%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2309
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o1
	sethi %hi(_use_spec_HI),%o0
	ld [%o0+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	be,a L2311
	sethi %hi(_regs_HI),%o0
	sethi %hi(_spec_regs_HI),%o0
	b L2326
	ld [%o0+%lo(_spec_regs_HI)],%o0
L2311:
	b L2326
	ld [%o0+%lo(_regs_HI)],%o0
L2309:
	ldub [%fp-18],%o0
	sll %o0,2,%o1
	sethi %hi(_use_spec_HI),%o0
	ld [%o0+%lo(_use_spec_HI)],%o0
	cmp %o0,0
	be,a L2313
	sethi %hi(_regs_HI),%o0
	sethi %hi(_spec_regs_HI),%o0
	b L2328
	ld [%o0+%lo(_spec_regs_HI)],%o0
L2313:
	b L2328
	ld [%o0+%lo(_regs_HI)],%o0
L2315:
	mov 64,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2316
	mov 0,%i4
	sethi %hi(_use_spec_HI),%o0
	st %l5,[%o0+%lo(_use_spec_HI)]
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2318
	sethi %hi(_spec_regs_HI),%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2319
	ld [%i0+%o0],%o0
L2318:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L2319:
	b L1024
	st %o0,[%o2+%lo(_spec_regs_HI)]
L2316:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2320
	sethi %hi(_regs_HI),%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2321
	ld [%i0+%o0],%o0
L2320:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L2321:
	b L1024
	st %o0,[%o2+%lo(_regs_HI)]
L2322:
	ldub [%fp-18],%l3
	mov 0,%i5
	mov 65,%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2323
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o1
	sethi %hi(_use_spec_LO),%o0
	ld [%o0+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	be L2325
	sethi %hi(_spec_regs_LO),%o0
	b L2326
	ld [%o0+%lo(_spec_regs_LO)],%o0
L2325:
	sethi %hi(_regs_LO),%o0
	ld [%o0+%lo(_regs_LO)],%o0
L2326:
	b L1024
	st %o0,[%i0+%o1]
L2323:
	ldub [%fp-18],%o0
	sll %o0,2,%o1
	sethi %hi(_use_spec_LO),%o0
	ld [%o0+%lo(_use_spec_LO)],%o0
	cmp %o0,0
	be L2327
	sethi %hi(_spec_regs_LO),%o0
	b L2328
	ld [%o0+%lo(_spec_regs_LO)],%o0
L2327:
	sethi %hi(_regs_LO),%o0
	ld [%o0+%lo(_regs_LO)],%o0
L2328:
	b L1024
	st %o0,[%i1+%o1]
L2329:
	mov 65,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2330
	mov 0,%i4
	sethi %hi(_use_spec_LO),%o0
	st %l5,[%o0+%lo(_use_spec_LO)]
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2332
	sethi %hi(_spec_regs_LO),%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2333
	ld [%i0+%o0],%o0
L2332:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L2333:
	b L1024
	st %o0,[%o2+%lo(_spec_regs_LO)]
L2330:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2334
	sethi %hi(_regs_LO),%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2335
	ld [%i0+%o0],%o0
L2334:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L2335:
	b L1024
	st %o0,[%o2+%lo(_regs_LO)]
L2336:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	ldub [%fp-19],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2337
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2339
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2340
	ld [%i0+%o0],%o2
L2339:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2340:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2341
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3488
	ld [%i0+%o0],%o0
L2341:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3488:
	and %o2,%o0,%o0
	b L1024
	st %o0,[%i0+%o3]
L2337:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2343
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2344
	ld [%i0+%o0],%o2
L2343:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2344:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2345
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3489
	ld [%i0+%o0],%o0
L2345:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3489:
	and %o2,%o0,%o0
	b L1024
	st %o0,[%i1+%o3]
L2347:
	ldub [%fp-19],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2348
	mov 0,%i4
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ld [%fp-20],%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %o1,%o0,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2350
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3490
	ld [%i0+%o0],%o0
L2350:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3490:
	and %o2,%o0,%o1
	b L1024
	st %o1,[%i0+%o3]
L2348:
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ld [%fp-20],%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %o1,%o0,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2352
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3491
	ld [%i0+%o0],%o0
L2352:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3491:
	and %o2,%o0,%o1
	b L1024
	st %o1,[%i1+%o3]
L2354:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	ldub [%fp-19],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2355
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2357
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2358
	ld [%i0+%o0],%o2
L2357:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2358:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2359
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3492
	ld [%i0+%o0],%o0
L2359:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3492:
	or %o2,%o0,%o0
	b L1024
	st %o0,[%i0+%o3]
L2355:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2361
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2362
	ld [%i0+%o0],%o2
L2361:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2362:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2363
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3493
	ld [%i0+%o0],%o0
L2363:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3493:
	or %o2,%o0,%o0
	b L1024
	st %o0,[%i1+%o3]
L2365:
	ldub [%fp-19],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2366
	mov 0,%i4
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ld [%fp-20],%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %o1,%o0,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2368
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3494
	ld [%i0+%o0],%o0
L2368:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3494:
	or %o2,%o0,%o1
	b L1024
	st %o1,[%i0+%o3]
L2366:
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ld [%fp-20],%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %o1,%o0,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2370
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3495
	ld [%i0+%o0],%o0
L2370:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3495:
	or %o2,%o0,%o1
	b L1024
	st %o1,[%i1+%o3]
L2372:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	ldub [%fp-19],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2373
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2375
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2376
	ld [%i0+%o0],%o2
L2375:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2376:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2377
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3496
	ld [%i0+%o0],%o0
L2377:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3496:
	xor %o2,%o0,%o0
	b L1024
	st %o0,[%i0+%o3]
L2373:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2379
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2380
	ld [%i0+%o0],%o2
L2379:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2380:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2381
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3497
	ld [%i0+%o0],%o0
L2381:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3497:
	xor %o2,%o0,%o0
	b L1024
	st %o0,[%i1+%o3]
L2383:
	ldub [%fp-19],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2384
	mov 0,%i4
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ld [%fp-20],%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %o1,%o0,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2386
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3498
	ld [%i0+%o0],%o0
L2386:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3498:
	xor %o2,%o0,%o1
	b L1024
	st %o1,[%i0+%o3]
L2384:
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ld [%fp-20],%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %o1,%o0,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2388
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3499
	ld [%i0+%o0],%o0
L2388:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3499:
	xor %o2,%o0,%o1
	b L1024
	st %o1,[%i1+%o3]
L2390:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	ldub [%fp-19],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2391
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2393
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2394
	ld [%i0+%o0],%o2
L2393:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2394:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2395
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3500
	ld [%i0+%o0],%o0
L2395:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3500:
	or %o2,%o0,%o0
	xnor %g0,%o0,%o0
	b L1024
	st %o0,[%i0+%o3]
L2391:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2397
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2398
	ld [%i0+%o0],%o2
L2397:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2398:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2399
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3501
	ld [%i0+%o0],%o0
L2399:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3501:
	or %o2,%o0,%o0
	xnor %g0,%o0,%o0
	b L1024
	st %o0,[%i1+%o3]
L2401:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-19],%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2402
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2404
	ldub [%fp-17],%o2
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3502
	ld [%i0+%o0],%o0
L2404:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3502:
	sll %o0,%o2,%o0
	b L1024
	st %o0,[%i0+%o3]
L2402:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2406
	ldub [%fp-17],%o2
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3503
	ld [%i0+%o0],%o0
L2406:
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3503:
	sll %o0,%o2,%o0
	b L1024
	st %o0,[%i1+%o3]
L2408:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2409
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2411
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L2412
	ld [%i0+%o0],%o2
L2411:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2412:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2413
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3504
	ld [%i0+%o0],%o0
L2413:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3504:
	and %o0,31,%o0
	sll %o2,%o0,%o0
	b L1024
	st %o0,[%i0+%o3]
L2409:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2415
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L2416
	ld [%i0+%o0],%o2
L2415:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2416:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2417
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3505
	ld [%i0+%o0],%o0
L2417:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3505:
	and %o0,31,%o0
	sll %o2,%o0,%o0
	b L1024
	st %o0,[%i1+%o3]
L2419:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-19],%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2420
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2422
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L2423
	ld [%i0+%o0],%o1
L2422:
	sll %o0,2,%o0
	ld [%i1+%o0],%o1
L2423:
	ldub [%fp-17],%o0
	srl %o1,%o0,%o0
	b L1024
	st %o0,[%i0+%o2]
L2420:
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2424
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L2425
	ld [%i0+%o0],%o1
L2424:
	sll %o0,2,%o0
	ld [%i1+%o0],%o1
L2425:
	ldub [%fp-17],%o0
	srl %o1,%o0,%o0
	b L1024
	st %o0,[%i1+%o2]
L2426:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2427
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2429
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L2430
	ld [%i0+%o0],%o2
L2429:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2430:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2431
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3506
	ld [%i0+%o0],%o0
L2431:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3506:
	and %o0,31,%o0
	srl %o2,%o0,%o0
	b L1024
	st %o0,[%i0+%o3]
L2427:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2433
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L2434
	ld [%i0+%o0],%o2
L2433:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2434:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2435
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3507
	ld [%i0+%o0],%o0
L2435:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3507:
	and %o0,31,%o0
	srl %o2,%o0,%o0
	b L1024
	st %o0,[%i1+%o3]
L2437:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-19],%l6
	mov 0,%i2
	mov 0,%i4
	ld [%fp-24],%o0
	st %o0,[%fp-48]
	ld [%fp-20],%o0
	st %o0,[%fp-44]
	call _InstSRA,0
	add %fp,-48,%o0
	b L3667
	sethi %hi(_ss_op2flags),%o0
L2438:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-19],%l6
	ldub [%fp-20],%i2
	mov 0,%i4
	ld [%fp-24],%o0
	st %o0,[%fp-48]
	ld [%fp-20],%o0
	st %o0,[%fp-44]
	call _InstSRAV,0
	add %fp,-48,%o0
	b L3667
	sethi %hi(_ss_op2flags),%o0
L2439:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	ldub [%fp-19],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2440
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2442
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2443
	ld [%i0+%o0],%o2
L2442:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2443:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2444
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3508
	ld [%i0+%o0],%o0
L2444:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3508:
	b L3509
	cmp %o2,%o0
L2440:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2446
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2447
	ld [%i0+%o0],%o2
L2446:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2447:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2448
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3510
	ld [%i0+%o0],%o0
L2448:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3510:
	b L3511
	cmp %o2,%o0
L2450:
	ldub [%fp-19],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2451
	mov 0,%i4
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2453
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3512
	ld [%i0+%o0],%o0
L2453:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3512:
	cmp %o0,%o2
L3509:
	bl,a L3900
	mov 1,%o0
	mov 0,%o0
L3900:
	b L1024
	st %o0,[%i0+%o3]
L2451:
	ldub [%fp-19],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2455
	ldsh [%fp-18],%o2
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L3513
	ld [%i0+%o0],%o0
L2455:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L3513:
	cmp %o0,%o2
L3511:
	bl,a L3901
	mov 1,%o0
	mov 0,%o0
L3901:
	b L1024
	st %o0,[%i1+%o3]
L2457:
	ldub [%fp-18],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	ldub [%fp-19],%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2458
	mov 0,%i4
	ldub [%fp-18],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-18],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2460
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2461
	ld [%i0+%o0],%o2
L2460:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2461:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2462
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L2463
	ld [%i0+%o0],%o0
L2462:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L2463:
	cmp %o2,%o0
	addx %g0,0,%o0
	b L1024
	st %o0,[%i0+%o3]
L2458:
	ldub [%fp-18],%o0
	sll %o0,2,%o3
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2464
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2465
	ld [%i0+%o0],%o2
L2464:
	sll %o0,2,%o0
	ld [%i1+%o0],%o2
L2465:
	ldub [%fp-19],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-19],%o1
	and %o1,31,%o1
	sll %l5,%o1,%o1
	ld [%l7+%o0],%o0
	andcc %o1,%o0,%g0
	be L2466
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L2467
	ld [%i0+%o0],%o0
L2466:
	sll %o0,2,%o0
	ld [%i1+%o0],%o0
L2467:
	cmp %o2,%o0
	addx %g0,0,%o0
	b L1024
	st %o0,[%i1+%o3]
L2468:
	ldub [%fp-19],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L2469
	mov 0,%i4
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2471
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2472
	ld [%i0+%o0],%o1
L2471:
	sll %o0,2,%o0
	ld [%i1+%o0],%o1
L2472:
	ldsh [%fp-18],%o0
	cmp %o1,%o0
	addx %g0,0,%o0
	b L1024
	st %o0,[%i0+%o2]
L2469:
	ldub [%fp-19],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L2473
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	b L2474
	ld [%i0+%o0],%o1
L2473:
	sll %o0,2,%o0
	ld [%i1+%o0],%o1
L2474:
	ldsh [%fp-18],%o0
	cmp %o1,%o0
	addx %g0,0,%o0
	b L1024
	st %o0,[%i1+%o2]
L2475:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2477
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3794
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 726,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2477:
	ldub [%fp-20],%o0
L3794:
	andcc %o0,1,%g0
	be L2481
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3795
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 726,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2481:
	lduh [%fp-20],%o0
L3795:
	andcc %o0,1,%g0
	be L2485
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3796
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 726,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2485:
	cmp %o0,0
L3796:
	be L2488
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2490
	sethi %hi(_spec_regs_F),%o1
	b L3514
	or %o1,%lo(_spec_regs_F),%o1
L2490:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3514:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2496
	sethi %hi(_spec_regs_F),%o0
	b L3516
	or %o0,%lo(_spec_regs_F),%o0
L2488:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2494
	sethi %hi(_spec_regs_F),%o1
	b L3517
	or %o1,%lo(_spec_regs_F),%o1
L2494:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3517:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2496
	sethi %hi(_spec_regs_F),%o0
	b L3516
	or %o0,%lo(_spec_regs_F),%o0
L2496:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3516:
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	fadds %f3,%f2,%f2
L3652:
	b L1024
	st %f2,[%o3+%o2]
L2498:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2500
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3797
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 733,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2500:
	ldub [%fp-20],%o0
L3797:
	andcc %o0,1,%g0
	be L2504
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3798
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 733,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2504:
	lduh [%fp-20],%o0
L3798:
	andcc %o0,1,%g0
	be L2508
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3799
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 733,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2508:
	cmp %o0,0
L3799:
	be L2511
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	ldub [%fp-18],%o1
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2513
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3518
	or %o1,%lo(_spec_regs_F),%o1
L2513:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3518:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2519
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3520
	or %o1,%lo(_spec_regs_F),%o1
L2511:
	ldub [%fp-18],%o1
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2517
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3521
	or %o1,%lo(_spec_regs_F),%o1
L2517:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3521:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2519
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3520
	or %o1,%lo(_spec_regs_F),%o1
L2519:
	ldub [%fp-19],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3520:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	faddd %f4,%f2,%f2
L3654:
	b L1024
	std %f2,[%o3+%o2]
L2521:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2523
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3800
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 739,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2523:
	ldub [%fp-20],%o0
L3800:
	andcc %o0,1,%g0
	be L2527
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3801
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 739,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2527:
	lduh [%fp-20],%o0
L3801:
	andcc %o0,1,%g0
	be L2531
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3802
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 739,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2531:
	cmp %o0,0
L3802:
	be L2534
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2536
	sethi %hi(_spec_regs_F),%o1
	b L3522
	or %o1,%lo(_spec_regs_F),%o1
L2536:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3522:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2542
	sethi %hi(_spec_regs_F),%o0
	b L3524
	or %o0,%lo(_spec_regs_F),%o0
L2534:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2540
	sethi %hi(_spec_regs_F),%o1
	b L3525
	or %o1,%lo(_spec_regs_F),%o1
L2540:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3525:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2542
	sethi %hi(_spec_regs_F),%o0
	b L3524
	or %o0,%lo(_spec_regs_F),%o0
L2542:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3524:
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3652
	fsubs %f3,%f2,%f2
L2544:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2546
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3803
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 745,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2546:
	ldub [%fp-20],%o0
L3803:
	andcc %o0,1,%g0
	be L2550
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3804
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 745,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2550:
	lduh [%fp-20],%o0
L3804:
	andcc %o0,1,%g0
	be L2554
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3805
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 745,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2554:
	cmp %o0,0
L3805:
	be L2557
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	ldub [%fp-18],%o1
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2559
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3526
	or %o1,%lo(_spec_regs_F),%o1
L2559:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3526:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2565
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3528
	or %o1,%lo(_spec_regs_F),%o1
L2557:
	ldub [%fp-18],%o1
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2563
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3529
	or %o1,%lo(_spec_regs_F),%o1
L2563:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3529:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2565
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3528
	or %o1,%lo(_spec_regs_F),%o1
L2565:
	ldub [%fp-19],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3528:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	b L3654
	fsubd %f4,%f2,%f2
L2567:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2569
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3806
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 751,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2569:
	ldub [%fp-20],%o0
L3806:
	andcc %o0,1,%g0
	be L2573
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3807
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 751,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2573:
	lduh [%fp-20],%o0
L3807:
	andcc %o0,1,%g0
	be L2577
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3808
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 751,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2577:
	cmp %o0,0
L3808:
	be L2580
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2582
	sethi %hi(_spec_regs_F),%o1
	b L3530
	or %o1,%lo(_spec_regs_F),%o1
L2582:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3530:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2588
	sethi %hi(_spec_regs_F),%o0
	b L3532
	or %o0,%lo(_spec_regs_F),%o0
L2580:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2586
	sethi %hi(_spec_regs_F),%o1
	b L3533
	or %o1,%lo(_spec_regs_F),%o1
L2586:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3533:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2588
	sethi %hi(_spec_regs_F),%o0
	b L3532
	or %o0,%lo(_spec_regs_F),%o0
L2588:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3532:
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3652
	fmuls %f3,%f2,%f2
L2590:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2592
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3809
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 757,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2592:
	ldub [%fp-20],%o0
L3809:
	andcc %o0,1,%g0
	be L2596
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3810
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 757,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2596:
	lduh [%fp-20],%o0
L3810:
	andcc %o0,1,%g0
	be L2600
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3811
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 757,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2600:
	cmp %o0,0
L3811:
	be L2603
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	ldub [%fp-18],%o1
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2605
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3534
	or %o1,%lo(_spec_regs_F),%o1
L2605:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3534:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2611
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3536
	or %o1,%lo(_spec_regs_F),%o1
L2603:
	ldub [%fp-18],%o1
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2609
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3537
	or %o1,%lo(_spec_regs_F),%o1
L2609:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3537:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2611
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3536
	or %o1,%lo(_spec_regs_F),%o1
L2611:
	ldub [%fp-19],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3536:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	b L3654
	fmuld %f4,%f2,%f2
L2613:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2615
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3812
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 763,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2615:
	ldub [%fp-20],%o0
L3812:
	andcc %o0,1,%g0
	be L2619
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3813
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 763,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2619:
	lduh [%fp-20],%o0
L3813:
	andcc %o0,1,%g0
	be L2623
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3814
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 763,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2623:
	cmp %o0,0
L3814:
	bne L3815
	ld [%i3+%lo(_spec_mode)],%o0
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2630
	sethi %hi(_spec_regs_F),%o1
	or %o1,%lo(_spec_regs_F),%o1
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	sethi %hi(LC349),%o0
	ld [%o0+%lo(LC349)],%f2
	fcmps %f3,%f2
	nop
	fbe L3816
	ld [%i3+%lo(_spec_mode)],%o0
	b L3817
	cmp %o0,0
L2630:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	sethi %hi(LC349),%o0
	ld [%o0+%lo(LC349)],%f2
	fcmps %f3,%f2
	nop
	fbne L3815
	ld [%i3+%lo(_spec_mode)],%o0
L3816:
	cmp %o0,0
	bne L3815
	ld [%i3+%lo(_spec_mode)],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 763,%o2
	sethi %hi(LC348),%o3
	call __fatal,0
	or %o3,%lo(LC348),%o3
L3815:
	cmp %o0,0
L3817:
	be L2634
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	lduh [%fp-20],%o1
	srl %o1,3,%o1
	and %o1,28,%o1
	lduh [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2638
	sethi %hi(_spec_regs_F),%o1
	or %o1,%lo(_spec_regs_F),%o1
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	sethi %hi(LC349),%o0
	ld [%o0+%lo(LC349)],%f2
	fcmps %f3,%f2
	nop
	fbne L3818
	ldub [%fp-20],%o0
	b L3819
	sethi %hi(LC349),%o0
L2638:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	sethi %hi(LC349),%o0
	ld [%o0+%lo(LC349)],%f2
	fcmps %f3,%f2
	nop
	fbe L2636
	ldub [%fp-20],%o0
L3818:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2640
	sethi %hi(_spec_regs_F),%o1
	b L3538
	or %o1,%lo(_spec_regs_F),%o1
L2640:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3538:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2642
	sethi %hi(_spec_regs_F),%o0
	b L3539
	or %o0,%lo(_spec_regs_F),%o0
L2642:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3539:
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3652
	fdivs %f3,%f2,%f2
L2636:
	sethi %hi(LC349),%o0
L3819:
	b L3652
	ld [%o0+%lo(LC349)],%f2
L2634:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	lduh [%fp-20],%o1
	srl %o1,3,%o1
	and %o1,28,%o1
	lduh [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2646
	sethi %hi(_spec_regs_F),%o1
	or %o1,%lo(_spec_regs_F),%o1
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	sethi %hi(LC349),%o0
	ld [%o0+%lo(LC349)],%f2
	fcmps %f3,%f2
	nop
	fbne L3820
	ldub [%fp-20],%o0
	b L3821
	sethi %hi(LC349),%o0
L2646:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	sethi %hi(LC349),%o0
	ld [%o0+%lo(LC349)],%f2
	fcmps %f3,%f2
	nop
	fbe L2644
	ldub [%fp-20],%o0
L3820:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2648
	sethi %hi(_spec_regs_F),%o1
	b L3540
	or %o1,%lo(_spec_regs_F),%o1
L2648:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3540:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2650
	sethi %hi(_spec_regs_F),%o0
	b L3541
	or %o0,%lo(_spec_regs_F),%o0
L2650:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3541:
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3652
	fdivs %f3,%f2,%f2
L2644:
	sethi %hi(LC349),%o0
L3821:
	b L3652
	ld [%o0+%lo(LC349)],%f2
L2652:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2654
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3822
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 769,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2654:
	ldub [%fp-20],%o0
L3822:
	andcc %o0,1,%g0
	be L2658
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3823
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 769,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2658:
	lduh [%fp-20],%o0
L3823:
	andcc %o0,1,%g0
	be L2662
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3824
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 769,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2662:
	cmp %o0,0
L3824:
	bne L3825
	ld [%i3+%lo(_spec_mode)],%o0
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2669
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	or %o1,%lo(_spec_regs_F),%o1
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	sethi %hi(LC350),%o0
	ldd [%o0+%lo(LC350)],%f2
	fcmpd %f4,%f2
	nop
	fbe L3826
	ld [%i3+%lo(_spec_mode)],%o0
	b L3827
	cmp %o0,0
L2669:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	sethi %hi(LC350),%o0
	ldd [%o0+%lo(LC350)],%f2
	fcmpd %f4,%f2
	nop
	fbne L3825
	ld [%i3+%lo(_spec_mode)],%o0
L3826:
	cmp %o0,0
	bne L3825
	ld [%i3+%lo(_spec_mode)],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 769,%o2
	sethi %hi(LC348),%o3
	call __fatal,0
	or %o3,%lo(LC348),%o3
L3825:
	cmp %o0,0
L3827:
	be L2673
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	ldub [%fp-18],%o1
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	lduh [%fp-20],%o1
	srl %o1,3,%o1
	and %o1,28,%o1
	lduh [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2677
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	or %o1,%lo(_spec_regs_F),%o1
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	sethi %hi(LC350),%o0
	ldd [%o0+%lo(LC350)],%f2
	fcmpd %f4,%f2
	nop
	fbne L3828
	ldub [%fp-20],%o0
	b L3829
	sethi %hi(LC350),%o0
L2677:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	sethi %hi(LC350),%o0
	ldd [%o0+%lo(LC350)],%f2
	fcmpd %f4,%f2
	nop
	fbe L2675
	ldub [%fp-20],%o0
L3828:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2679
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3542
	or %o1,%lo(_spec_regs_F),%o1
L2679:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3542:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2681
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3543
	or %o1,%lo(_spec_regs_F),%o1
L2681:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3543:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	b L3654
	fdivd %f4,%f2,%f2
L2675:
	sethi %hi(LC350),%o0
L3829:
	b L3654
	ldd [%o0+%lo(LC350)],%f2
L2673:
	ldub [%fp-18],%o1
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	lduh [%fp-20],%o1
	srl %o1,3,%o1
	and %o1,28,%o1
	lduh [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2685
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	or %o1,%lo(_spec_regs_F),%o1
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	sethi %hi(LC350),%o0
	ldd [%o0+%lo(LC350)],%f2
	fcmpd %f4,%f2
	nop
	fbne L3830
	ldub [%fp-20],%o0
	b L3831
	sethi %hi(LC350),%o0
L2685:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	sethi %hi(LC350),%o0
	ldd [%o0+%lo(LC350)],%f2
	fcmpd %f4,%f2
	nop
	fbe L2683
	ldub [%fp-20],%o0
L3830:
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2687
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3544
	or %o1,%lo(_spec_regs_F),%o1
L2687:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3544:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2689
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3545
	or %o1,%lo(_spec_regs_F),%o1
L2689:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3545:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	b L3654
	fdivd %f4,%f2,%f2
L2683:
	sethi %hi(LC350),%o0
L3831:
	b L3654
	ldd [%o0+%lo(LC350)],%f2
L2691:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2693
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3832
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 774,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2693:
	ldub [%fp-20],%o0
L3832:
	andcc %o0,1,%g0
	be L2697
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3833
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 774,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2697:
	cmp %o0,0
L3833:
	be L2700
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2702
	sethi %hi(_spec_regs_F),%o1
	b L3546
	or %o1,%lo(_spec_regs_F),%o1
L2702:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3546:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f2
	fstod %f2,%f2
	b L2795
	fabss %f2,%f2
L2700:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2702
	sethi %hi(_spec_regs_F),%o1
	b L3546
	or %o1,%lo(_spec_regs_F),%o1
L2706:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2708
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3834
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 779,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2708:
	ldub [%fp-20],%o0
L3834:
	andcc %o0,1,%g0
	be L2712
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3835
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 779,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2712:
	cmp %o0,0
L3835:
	be L2715
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	ldub [%fp-18],%o1
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2719
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3549
	or %o1,%lo(_spec_regs_F),%o1
L2715:
	ldub [%fp-18],%o1
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2719
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3549
	or %o1,%lo(_spec_regs_F),%o1
L2719:
	ldub [%fp-20],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3549:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	b L3654
	fabss %f2,%f2
L2721:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2723
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3836
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 784,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2723:
	ldub [%fp-20],%o0
L3836:
	andcc %o0,1,%g0
	be L2727
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3837
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 784,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2727:
	cmp %o0,0
L3837:
	be L2730
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2734
	sethi %hi(_spec_regs_F),%o1
	b L3551
	or %o1,%lo(_spec_regs_F),%o1
L2730:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2734
	sethi %hi(_spec_regs_F),%o1
	b L3551
	or %o1,%lo(_spec_regs_F),%o1
L2734:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3551:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	b L1024
	st %o0,[%o3+%o2]
L2736:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2738
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3838
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 789,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2738:
	ldub [%fp-20],%o0
L3838:
	andcc %o0,1,%g0
	be L2742
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3839
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 789,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2742:
	cmp %o0,0
L3839:
	be L2745
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	ldub [%fp-18],%o1
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2749
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3553
	or %o1,%lo(_spec_regs_F),%o1
L2745:
	ldub [%fp-18],%o1
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2749
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3553
	or %o1,%lo(_spec_regs_F),%o1
L2749:
	ldub [%fp-20],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3553:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%o0
	b L1024
	std %o0,[%o3+%o2]
L2751:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2753
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3840
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 794,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2753:
	ldub [%fp-20],%o0
L3840:
	andcc %o0,1,%g0
	be L2757
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3841
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 794,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2757:
	cmp %o0,0
L3841:
	be L2760
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2764
	sethi %hi(_spec_regs_F),%o0
	b L3555
	or %o0,%lo(_spec_regs_F),%o0
L2760:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2764
	sethi %hi(_spec_regs_F),%o0
	b L3555
	or %o0,%lo(_spec_regs_F),%o0
L2764:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3555:
	ldub [%fp-20],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3652
	fnegs %f2,%f2
L2766:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2768
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3842
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 799,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2768:
	ldub [%fp-20],%o0
L3842:
	andcc %o0,1,%g0
	be L2772
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3843
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 799,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2772:
	cmp %o0,0
L3843:
	be L2775
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	ldub [%fp-18],%o1
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2779
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3557
	or %o1,%lo(_spec_regs_F),%o1
L2775:
	ldub [%fp-18],%o1
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2779
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3557
	or %o1,%lo(_spec_regs_F),%o1
L2779:
	ldub [%fp-20],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3557:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	b L3654
	fnegs %f2,%f2
L2781:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2783
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3844
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 805,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2783:
	ldub [%fp-20],%o0
L3844:
	andcc %o0,1,%g0
	be L2787
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3845
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 805,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2787:
	cmp %o0,0
L3845:
	be L2790
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2794
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3559
	or %o1,%lo(_spec_regs_F),%o1
L2790:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2794
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3559
	or %o1,%lo(_spec_regs_F),%o1
L2794:
	ldub [%fp-20],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3559:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
L2795:
	b L3652
	fdtos %f2,%f2
L2796:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2798
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3846
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 810,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2798:
	ldub [%fp-20],%o0
L3846:
	andcc %o0,1,%g0
	be L2802
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3847
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 810,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2802:
	cmp %o0,0
L3847:
	be L2805
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2809
	sethi %hi(_spec_regs_F),%o0
	b L3561
	or %o0,%lo(_spec_regs_F),%o0
L2805:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2809
	sethi %hi(_spec_regs_F),%o0
	b L3561
	or %o0,%lo(_spec_regs_F),%o0
L2809:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3561:
	ldub [%fp-20],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3652
	fitos %f2,%f2
L2811:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2813
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3848
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 815,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2813:
	ldub [%fp-20],%o0
L3848:
	andcc %o0,1,%g0
	be L2817
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3849
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 815,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2817:
	cmp %o0,0
L3849:
	be L2820
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	ldub [%fp-18],%o1
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2824
	sethi %hi(_spec_regs_F),%o1
	b L3564
	or %o1,%lo(_spec_regs_F),%o1
L2820:
	ldub [%fp-18],%o1
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2824
	sethi %hi(_spec_regs_F),%o1
	b L3564
	or %o1,%lo(_spec_regs_F),%o1
L2824:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3564:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f2
	b L3654
	fstod %f2,%f2
L2826:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2828
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3850
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 820,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2828:
	ldub [%fp-20],%o0
L3850:
	andcc %o0,1,%g0
	be L2832
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3851
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 820,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2832:
	cmp %o0,0
L3851:
	be L2835
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	ldub [%fp-18],%o1
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2839
	sethi %hi(_spec_regs_F),%o0
	b L3566
	or %o0,%lo(_spec_regs_F),%o0
L2835:
	ldub [%fp-18],%o1
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	srl %o1,1,%o1
	sll %o1,3,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2839
	sethi %hi(_spec_regs_F),%o0
	b L3566
	or %o0,%lo(_spec_regs_F),%o0
L2839:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3566:
	ldub [%fp-20],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3654
	fitod %f2,%f2
L2841:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2843
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3852
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 825,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2843:
	ldub [%fp-20],%o0
L3852:
	andcc %o0,1,%g0
	be L2847
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3853
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 825,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2847:
	cmp %o0,0
L3853:
	be L2850
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2854
	sethi %hi(_spec_regs_F),%o0
	b L3569
	or %o0,%lo(_spec_regs_F),%o0
L2850:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2854
	sethi %hi(_spec_regs_F),%o0
	b L3569
	or %o0,%lo(_spec_regs_F),%o0
L2854:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3569:
	ldub [%fp-20],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	fstoi %f2,%f2
	b L1024
	st %f2,[%o3+%o2]
L2856:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2858
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3854
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 830,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2858:
	ldub [%fp-20],%o0
L3854:
	andcc %o0,1,%g0
	be L2862
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3855
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 830,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2862:
	cmp %o0,0
L3855:
	be L2865
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2869
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3571
	or %o1,%lo(_spec_regs_F),%o1
L2865:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-18],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2869
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3571
	or %o1,%lo(_spec_regs_F),%o1
L2869:
	ldub [%fp-20],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3571:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	fdtoi %f2,%f2
	b L1024
	st %f2,[%o3+%o2]
L2871:
	mov 66,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ldub [%fp-20],%o0
	andcc %o0,1,%g0
	be L2873
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3856
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 836,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2873:
	lduh [%fp-20],%o0
L3856:
	andcc %o0,1,%g0
	be L2877
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3857
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 836,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2877:
	cmp %o0,0
L3857:
	be L2880
	sethi %hi(_use_spec_FCC),%o0
	st %l5,[%o0+%lo(_use_spec_FCC)]
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2882
	sethi %hi(_spec_regs_FCC),%o2
	sethi %hi(_spec_regs_F),%o1
	b L3572
	or %o1,%lo(_spec_regs_F),%o1
L2882:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3572:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2884
	sethi %hi(_spec_regs_F),%o0
	b L3573
	or %o0,%lo(_spec_regs_F),%o0
L2884:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3573:
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3574
	fcmps %f3,%f2
L2880:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2886
	sethi %hi(_regs_FCC),%o2
	sethi %hi(_spec_regs_F),%o1
	b L3575
	or %o1,%lo(_spec_regs_F),%o1
L2886:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3575:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2888
	sethi %hi(_spec_regs_F),%o0
	b L3576
	or %o0,%lo(_spec_regs_F),%o0
L2888:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3576:
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3577
	fcmps %f3,%f2
L2890:
	mov 66,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ldub [%fp-20],%o0
	andcc %o0,1,%g0
	be L2892
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3858
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 841,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2892:
	lduh [%fp-20],%o0
L3858:
	andcc %o0,1,%g0
	be L2896
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3859
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 841,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2896:
	cmp %o0,0
L3859:
	be L2899
	sethi %hi(_use_spec_FCC),%o0
	st %l5,[%o0+%lo(_use_spec_FCC)]
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2901
	sethi %hi(_spec_regs_FCC),%o2
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3578
	or %o1,%lo(_spec_regs_F),%o1
L2901:
	ldub [%fp-20],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3578:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2903
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3579
	or %o1,%lo(_spec_regs_F),%o1
L2903:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3579:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	fcmpd %f4,%f2
L3574:
	nop
	fbe,a L3902
	mov 1,%o0
	mov 0,%o0
L3902:
	b L1024
	st %o0,[%o2+%lo(_spec_regs_FCC)]
L2899:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2905
	sethi %hi(_regs_FCC),%o2
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3580
	or %o1,%lo(_spec_regs_F),%o1
L2905:
	ldub [%fp-20],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3580:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2907
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3581
	or %o1,%lo(_spec_regs_F),%o1
L2907:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3581:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	fcmpd %f4,%f2
L3577:
	nop
	fbe,a L3903
	mov 1,%o0
	mov 0,%o0
L3903:
	b L1024
	st %o0,[%o2+%lo(_regs_FCC)]
L2909:
	mov 66,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ldub [%fp-20],%o0
	andcc %o0,1,%g0
	be L2911
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3860
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 846,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2911:
	lduh [%fp-20],%o0
L3860:
	andcc %o0,1,%g0
	be L2915
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3861
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 846,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2915:
	cmp %o0,0
L3861:
	be L2918
	sethi %hi(_use_spec_FCC),%o0
	st %l5,[%o0+%lo(_use_spec_FCC)]
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2920
	sethi %hi(_spec_regs_FCC),%o2
	sethi %hi(_spec_regs_F),%o1
	b L3582
	or %o1,%lo(_spec_regs_F),%o1
L2920:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3582:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2922
	sethi %hi(_spec_regs_F),%o0
	b L3583
	or %o0,%lo(_spec_regs_F),%o0
L2922:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3583:
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3584
	fcmpes %f3,%f2
L2918:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2924
	sethi %hi(_regs_FCC),%o2
	sethi %hi(_spec_regs_F),%o1
	b L3585
	or %o1,%lo(_spec_regs_F),%o1
L2924:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3585:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2926
	sethi %hi(_spec_regs_F),%o0
	b L3586
	or %o0,%lo(_spec_regs_F),%o0
L2926:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3586:
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3587
	fcmpes %f3,%f2
L2928:
	mov 66,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ldub [%fp-20],%o0
	andcc %o0,1,%g0
	be L2930
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3862
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 851,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2930:
	lduh [%fp-20],%o0
L3862:
	andcc %o0,1,%g0
	be L2934
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3863
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 851,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2934:
	cmp %o0,0
L3863:
	be L2937
	sethi %hi(_use_spec_FCC),%o0
	st %l5,[%o0+%lo(_use_spec_FCC)]
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2939
	sethi %hi(_spec_regs_FCC),%o2
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3588
	or %o1,%lo(_spec_regs_F),%o1
L2939:
	ldub [%fp-20],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3588:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2941
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3589
	or %o1,%lo(_spec_regs_F),%o1
L2941:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3589:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	fcmped %f4,%f2
L3584:
	nop
	fbl,a L3904
	mov 1,%o0
	mov 0,%o0
L3904:
	b L1024
	st %o0,[%o2+%lo(_spec_regs_FCC)]
L2937:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2943
	sethi %hi(_regs_FCC),%o2
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3590
	or %o1,%lo(_spec_regs_F),%o1
L2943:
	ldub [%fp-20],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3590:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2945
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3591
	or %o1,%lo(_spec_regs_F),%o1
L2945:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3591:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	fcmped %f4,%f2
L3587:
	nop
	fbl,a L3905
	mov 1,%o0
	mov 0,%o0
L3905:
	b L1024
	st %o0,[%o2+%lo(_regs_FCC)]
L2947:
	mov 66,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ldub [%fp-20],%o0
	andcc %o0,1,%g0
	be L2949
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3864
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 856,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2949:
	lduh [%fp-20],%o0
L3864:
	andcc %o0,1,%g0
	be L2953
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3865
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 856,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2953:
	cmp %o0,0
L3865:
	be L2956
	sethi %hi(_use_spec_FCC),%o0
	st %l5,[%o0+%lo(_use_spec_FCC)]
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2958
	sethi %hi(_spec_regs_FCC),%o2
	sethi %hi(_spec_regs_F),%o1
	b L3592
	or %o1,%lo(_spec_regs_F),%o1
L2958:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3592:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2960
	sethi %hi(_spec_regs_F),%o0
	b L3593
	or %o0,%lo(_spec_regs_F),%o0
L2960:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3593:
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3594
	fcmpes %f3,%f2
L2956:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2962
	sethi %hi(_regs_FCC),%o2
	sethi %hi(_spec_regs_F),%o1
	b L3595
	or %o1,%lo(_spec_regs_F),%o1
L2962:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3595:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f3
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2964
	sethi %hi(_spec_regs_F),%o0
	b L3596
	or %o0,%lo(_spec_regs_F),%o0
L2964:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o0
L3596:
	ldub [%fp-19],%o1
	sll %o1,2,%o1
	ld [%o0+%o1],%f2
	b L3597
	fcmpes %f3,%f2
L2966:
	mov 66,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	ldub [%fp-19],%i2
	add %i2,32,%i2
	and %i2,-2,%i2
	ldub [%fp-20],%o0
	andcc %o0,1,%g0
	be L2968
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3866
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 861,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2968:
	lduh [%fp-20],%o0
L3866:
	andcc %o0,1,%g0
	be L2972
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3867
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 861,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2972:
	cmp %o0,0
L3867:
	be L2975
	sethi %hi(_use_spec_FCC),%o0
	st %l5,[%o0+%lo(_use_spec_FCC)]
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2977
	sethi %hi(_spec_regs_FCC),%o2
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3598
	or %o1,%lo(_spec_regs_F),%o1
L2977:
	ldub [%fp-20],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3598:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2979
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3599
	or %o1,%lo(_spec_regs_F),%o1
L2979:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3599:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	fcmped %f4,%f2
L3594:
	nop
	fble,a L3906
	mov 1,%o0
	mov 0,%o0
L3906:
	b L1024
	st %o0,[%o2+%lo(_spec_regs_FCC)]
L2975:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2981
	sethi %hi(_regs_FCC),%o2
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3600
	or %o1,%lo(_spec_regs_F),%o1
L2981:
	ldub [%fp-20],%o0
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3600:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f4
	lduh [%fp-20],%o0
	srl %o0,3,%o0
	and %o0,28,%o0
	lduh [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L2983
	ldub [%fp-19],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3601
	or %o1,%lo(_spec_regs_F),%o1
L2983:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3601:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%f2
	fcmped %f4,%f2
L3597:
	nop
	fble,a L3907
	mov 1,%o0
	mov 0,%o0
L3907:
	b L1024
	st %o0,[%o2+%lo(_regs_FCC)]
L2985:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L2987
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3868
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 867,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2987:
	ldub [%fp-20],%o0
L3868:
	andcc %o0,1,%g0
	be L2991
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3869
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 867,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L2991:
	cmp %o0,0
L3869:
	be L2994
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%l1
	ldub [%fp-18],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2999
	sethi %hi(_spec_regs_F),%o1
	b L3603
	or %o1,%lo(_spec_regs_F),%o1
L2994:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%l1
	ldub [%fp-18],%o0
	sll %o0,2,%l0
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L2999
	sethi %hi(_spec_regs_F),%o1
	b L3603
	or %o1,%lo(_spec_regs_F),%o1
L2999:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3603:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%f2
	fstod %f2,%f2
	fsqrtd %f2,%f0
	fcmpd %f0,%f0
	nop
	fbe,a L3870
	fdtos %f0,%f2
	std %f2,[%fp-16]
	call _sqrt,0
	ldd [%fp-16],%o0
	fdtos %f0,%f2
L3870:
	b L1024
	st %f2,[%l1+%l0]
L3002:
	ldub [%fp-18],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%fp-20],%o0
	andcc %o0,256,%g0
	be L3004
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3871
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 872,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L3004:
	ldub [%fp-20],%o0
L3871:
	andcc %o0,1,%g0
	be L3008
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3872
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 872,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L3008:
	cmp %o0,0
L3872:
	be L3011
	ld [%fp-20],%o1
	srl %o1,13,%o1
	and %o1,7,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ld [%fp-20],%o0
	srl %o0,8,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L3013
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3604
	or %o1,%lo(_spec_regs_F),%o1
L3013:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3604:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%o0
	std %o0,[%fp-16]
	ldd [%fp-16],%f6
	fsqrtd %f6,%f0
	fcmpd %f0,%f0
	nop
	fbe,a L3873
	ldub [%fp-18],%o0
	call _sqrt,0
	nop
	ldub [%fp-18],%o0
L3873:
	sethi %hi(_spec_regs_F),%o1
	b L3605
	or %o1,%lo(_spec_regs_F),%o1
L3011:
	ldub [%fp-20],%o0
	srl %o0,5,%o0
	sll %o0,2,%o0
	ldub [%fp-20],%o1
	and %o1,30,%o1
	sll %l5,%o1,%o1
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o0],%o0
	andcc %o1,%o0,%g0
	be L3016
	ldub [%fp-20],%o0
	sethi %hi(_spec_regs_F),%o1
	b L3606
	or %o1,%lo(_spec_regs_F),%o1
L3016:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3606:
	srl %o0,1,%o0
	sll %o0,3,%o0
	ldd [%o1+%o0],%o0
	std %o0,[%fp-16]
	ldd [%fp-16],%f6
	fsqrtd %f6,%f0
	fcmpd %f0,%f0
	nop
	fbe,a L3874
	ldub [%fp-18],%o0
	call _sqrt,0
	nop
	ldub [%fp-18],%o0
L3874:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3605:
	srl %o0,1,%o0
	sll %o0,3,%o0
	b L1024
	std %f0,[%o1+%o0]
L3019:
	mov 0,%l3
	mov 0,%i5
	mov 0,%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3021
	mov 0,%i4
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 883,%o2
	sethi %hi(LC351),%o3
	call __panic,0
	or %o3,%lo(LC351),%o3
L3021:
	ld [%fp-24],%o0
	st %o0,[%fp-48]
	ld [%fp-20],%o0
	st %o0,[%fp-44]
	sethi %hi(_mem_access),%o0
	or %o0,%lo(_mem_access),%o0
	call _ss_syscall,0
	add %fp,-48,%o1
	b L3667
	sethi %hi(_ss_op2flags),%o0
L3023:
	ldub [%fp-19],%l3
	mov 0,%i5
	mov 0,%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3024
	mov 0,%i4
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o2
	sll %o2,2,%o2
	ld [%fp-20],%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %o1,%o0,%o1
	sll %o1,16,%o1
	b L1024
	st %o1,[%i0+%o2]
L3024:
	ldub [%fp-19],%o2
	sll %o2,2,%o2
	ld [%fp-20],%o1
	sethi %hi(65535),%o0
	or %o0,%lo(65535),%o0
	and %o1,%o0,%o1
	sll %o1,16,%o1
	b L1024
	st %o1,[%i1+%o2]
L3026:
	ldub [%fp-19],%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3027
	mov 0,%i4
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L3029
	sethi %hi(_spec_regs_F),%o1
	b L3607
	or %o1,%lo(_spec_regs_F),%o1
L3029:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3607:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	b L1024
	st %o0,[%i0+%o2]
L3027:
	ldub [%fp-19],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L3031
	sethi %hi(_spec_regs_F),%o1
	b L3608
	or %o1,%lo(_spec_regs_F),%o1
L3031:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3608:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	b L1024
	st %o0,[%i1+%o2]
L3033:
	lduh [%fp-20],%l3
	and %l3,254,%l3
	mov 0,%i5
	ldub [%fp-20],%l6
	add %l6,32,%l6
	and %l6,-2,%l6
	mov 0,%i2
	lduh [%fp-20],%o0
	andcc %o0,1,%g0
	be L3035
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3875
	ldub [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 908,%o2
	sethi %hi(LC342),%o3
	call __fatal,0
	or %o3,%lo(LC342),%o3
L3035:
	ldub [%fp-20],%o0
L3875:
	andcc %o0,1,%g0
	be L3039
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3876
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 908,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L3039:
	cmp %o0,0
L3876:
	be L3042
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	ldub [%fp-19],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L3044
	sethi %hi(_spec_regs_F),%o1
	b L3609
	or %o1,%lo(_spec_regs_F),%o1
L3044:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3609:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	b L3043
	st %o0,[%i0+%o2]
L3042:
	ldub [%fp-19],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L3046
	sethi %hi(_spec_regs_F),%o1
	b L3610
	or %o1,%lo(_spec_regs_F),%o1
L3046:
	sethi %hi(_regs_F),%o1
	or %o1,%lo(_regs_F),%o1
L3610:
	ldub [%fp-20],%o0
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
	st %o0,[%i1+%o2]
L3043:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3048
	ldub [%fp-19],%o1
	add %o1,1,%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	add %o0,1,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%l7+%o2]
	sethi %hi(_spec_regs_R+4),%o0
	or %o0,%lo(_spec_regs_R+4),%o3
	ldub [%fp-19],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	add %o1,1,%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	add %o0,1,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L3050
	sethi %hi(_spec_regs_F+4),%o1
	b L3611
	or %o1,%lo(_spec_regs_F+4),%o1
L3050:
	sethi %hi(_regs_F+4),%o1
	or %o1,%lo(_regs_F+4),%o1
L3611:
	b L3612
	ldub [%fp-20],%o0
L3048:
	sethi %hi(_regs_R+4),%o0
	or %o0,%lo(_regs_R+4),%o3
	ldub [%fp-19],%o0
	sll %o0,2,%o2
	ldub [%fp-20],%o1
	add %o1,1,%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	add %o0,1,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	andcc %o0,%o1,%g0
	be L3052
	sethi %hi(_spec_regs_F+4),%o1
	b L3613
	or %o1,%lo(_spec_regs_F+4),%o1
L3052:
	sethi %hi(_regs_F+4),%o1
	or %o1,%lo(_regs_F+4),%o1
L3613:
	b L3612
	ldub [%fp-20],%o0
L3055:
	ldub [%fp-20],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	ldub [%fp-19],%l6
	mov 0,%i2
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3056
	mov 0,%i4
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
L3649:
	ldub [%fp-20],%o0
	sll %o0,2,%o2
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be,a L3060
	ldub [%fp-19],%o0
	ldub [%fp-19],%o0
	sll %o0,2,%o0
	b L3082
	ld [%i0+%o0],%o0
L3056:
	sethi %hi(_regs_F),%o0
	b L3649
	or %o0,%lo(_regs_F),%o3
L3060:
	sll %o0,2,%o0
	b L3082
	ld [%i1+%o0],%o0
L3062:
	ldub [%fp-20],%l3
	add %l3,32,%l3
	and %l3,-2,%l3
	mov 0,%i5
	lduh [%fp-20],%l6
	and %l6,254,%l6
	mov 0,%i2
	ldub [%fp-20],%o0
	andcc %o0,1,%g0
	be L3064
	mov 0,%i4
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3877
	lduh [%fp-20],%o0
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 924,%o2
	sethi %hi(LC343),%o3
	call __fatal,0
	or %o3,%lo(LC343),%o3
L3064:
	lduh [%fp-20],%o0
L3877:
	andcc %o0,1,%g0
	be L3068
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3878
	sethi %hi(LC340),%g3
	or %g3,%lo(LC340),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 924,%o2
	sethi %hi(LC342),%o3
	call __fatal,0
	or %o3,%lo(LC342),%o3
L3068:
	cmp %o0,0
L3878:
	be L3071
	ldub [%fp-20],%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F),%o0
	or %o0,%lo(_spec_regs_F),%o3
	ldub [%fp-20],%o0
	sll %o0,2,%o2
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	bne L3879
	ldub [%fp-19],%o0
	b L3880
	sll %o0,2,%o0
L3071:
	sethi %hi(_regs_F),%o0
	or %o0,%lo(_regs_F),%o3
	ldub [%fp-20],%o0
	sll %o0,2,%o2
	ldub [%fp-19],%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L3075
	ldub [%fp-19],%o0
L3879:
	sll %o0,2,%o0
	b L3076
	ld [%i0+%o0],%o0
L3075:
	sll %o0,2,%o0
L3880:
	ld [%i1+%o0],%o0
L3076:
	st %o0,[%o3+%o2]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3077
	ldub [%fp-20],%o1
	add %o1,1,%o1
	srl %o1,5,%o1
	sll %o1,2,%o2
	sll %o1,2,%o1
	ldub [%fp-20],%o0
	add %o0,1,%o0
	and %o0,30,%o0
	sll %l5,%o0,%o0
	sethi %hi(_use_spec_F),%g3
	or %g3,%lo(_use_spec_F),%g3
	ld [%g3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%g3+%o2]
	sethi %hi(_spec_regs_F+4),%o0
	or %o0,%lo(_spec_regs_F+4),%o3
	ldub [%fp-20],%o0
	sll %o0,2,%o2
	ldub [%fp-19],%o1
	add %o1,1,%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	add %o0,1,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L3081
	sethi %hi(_spec_regs_R+4),%o1
	b L3615
	or %o1,%lo(_spec_regs_R+4),%o1
L3077:
	sethi %hi(_regs_F+4),%o0
	or %o0,%lo(_regs_F+4),%o3
	ldub [%fp-20],%o0
	sll %o0,2,%o2
	ldub [%fp-19],%o1
	add %o1,1,%o1
	srl %o1,5,%o1
	sll %o1,2,%o1
	ldub [%fp-19],%o0
	add %o0,1,%o0
	and %o0,31,%o0
	sll %l5,%o0,%o0
	ld [%l7+%o1],%o1
	andcc %o0,%o1,%g0
	be L3081
	sethi %hi(_spec_regs_R+4),%o1
	b L3615
	or %o1,%lo(_spec_regs_R+4),%o1
L3081:
	sethi %hi(_regs_R+4),%o1
	or %o1,%lo(_regs_R+4),%o1
L3615:
	ldub [%fp-19],%o0
L3612:
	sll %o0,2,%o0
	ld [%o1+%o0],%o0
L3082:
	b L1024
	st %o0,[%o3+%o2]
L3084:
	mov 1,%g3
	st %g3,[%fp-60]
L3247:
	mov 0,%l3
	mov 0,%i5
	mov 0,%l6
	mov 0,%i2
	mov 0,%i4
L1024:
	sethi %hi(_ss_op2flags),%o0
L3667:
	or %o0,%lo(_ss_op2flags),%o0
	ld [%fp-60],%g3
	sll %g3,2,%o1
	ld [%o0+%o1],%o0
	andcc %o0,32,%g0
	be L3086
	sethi %hi(_sim_total_refs),%o2
	sethi %hi(_sim_total_refs),%o0
	ldd [%o0+%lo(_sim_total_refs)],%o0
	addcc %o1,1,%o1
	addx %o0,0,%o0
	std %o0,[%o2+%lo(_sim_total_refs)]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3881
	sethi %hi(_ss_op2flags),%o0
	sethi %hi(_sim_num_refs),%o0
	sethi %hi(_sim_num_refs),%o1
	ldd [%o1+%lo(_sim_num_refs)],%o2
	addcc %o3,1,%o3
	addx %o2,0,%o2
	std %o2,[%o0+%lo(_sim_num_refs)]
	sethi %hi(_ss_op2flags),%o0
L3881:
	or %o0,%lo(_ss_op2flags),%o0
	ld [%fp-60],%g3
	sll %g3,2,%o1
	ld [%o0+%o1],%o0
	andcc %o0,128,%g0
	be L3088
	mov 1,%g3
	b L3086
	st %g3,[%fp-92]
L3088:
	sethi %hi(_sim_total_loads),%o2
	sethi %hi(_sim_total_loads),%o0
	ldd [%o0+%lo(_sim_total_loads)],%o0
	addcc %o1,1,%o1
	addx %o0,0,%o0
	std %o0,[%o2+%lo(_sim_total_loads)]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3882
	sethi %hi(_pred_PC),%o0
	sethi %hi(_sim_num_loads),%o0
	sethi %hi(_sim_num_loads),%o1
	ldd [%o1+%lo(_sim_num_loads)],%o2
	addcc %o3,1,%o3
	addx %o2,0,%o2
	std %o2,[%o0+%lo(_sim_num_loads)]
L3086:
	sethi %hi(_pred_PC),%o0
L3882:
	ld [%o0+%lo(_pred_PC)],%o0
	ld [%fp-68],%g3
	cmp %o0,%g3
	be L3091
	mov 0,%l0
	sethi %hi(_pred_perfect),%o0
	ld [%o0+%lo(_pred_perfect)],%o0
	cmp %o0,0
	be L3091
	ld [%fp-68],%o0
	sethi %hi(_fetch_regs_PC),%o1
	st %o0,[%o1+%lo(_fetch_regs_PC)]
	sethi %hi(_fetch_pred_PC),%o1
	st %o0,[%o1+%lo(_fetch_pred_PC)]
	sethi %hi(_pred_PC),%o1
	st %o0,[%o1+%lo(_pred_PC)]
	sethi %hi(_ruu_decode_width),%o0
	ld [%o0+%lo(_ruu_decode_width)],%o0
	add %o0,-1,%o0
	sethi %hi(_fetch_head),%o1
	st %o0,[%o1+%lo(_fetch_head)]
	sethi %hi(_fetch_num),%o0
	st %l5,[%o0+%lo(_fetch_num)]
	sethi %hi(_fetch_tail),%o0
	st %g0,[%o0+%lo(_fetch_tail)]
L3091:
	ld [%fp-60],%g3
	cmp %g3,1
	be L3092
	sethi %hi(_RUU),%o2
	sethi %hi(_RUU_tail),%o0
	ld [%o0+%lo(_RUU_tail)],%o1
	sll %o1,1,%o0
	add %o0,%o1,%o0
	sll %o0,5,%o0
	ld [%o2+%lo(_RUU)],%o1
	add %o0,%o1,%l2
	ld [%fp-24],%o0
	st %o0,[%l2]
	ld [%fp-20],%o0
	st %o0,[%l2+4]
	st %g3,[%l2+8]
	sethi %hi(_regs_PC),%g3
	ld [%g3+%lo(_regs_PC)],%o0
	st %o0,[%l2+12]
	ld [%fp-68],%g3
	st %g3,[%l2+16]
	sethi %hi(_pred_PC),%o0
	ld [%o0+%lo(_pred_PC)],%o0
	st %o0,[%l2+20]
	st %g0,[%l2+24]
	st %g0,[%l2+28]
	st %g0,[%l2+32]
	ld [%i3+%lo(_spec_mode)],%o0
	st %o0,[%l2+36]
	st %g0,[%l2+40]
	sethi %hi(_inst_seq),%o0
	ld [%o0+%lo(_inst_seq)],%o0
	add %o0,1,%o0
	sethi %hi(_inst_seq),%o1
	st %o0,[%o1+%lo(_inst_seq)]
	st %o0,[%l2+48]
	st %g0,[%l2+64]
	st %g0,[%l2+60]
	st %g0,[%l2+56]
	ld [%fp-84],%g3
	st %g3,[%l2+52]
	sethi %hi(_ss_op2flags),%o0
	or %o0,%lo(_ss_op2flags),%o0
	ld [%fp-60],%g3
	sll %g3,2,%o1
	ld [%o0+%o1],%o0
	andcc %o0,32,%g0
	be L3093
	mov 52,%o0
	st %o0,[%l2+8]
	st %l5,[%l2+28]
	sethi %hi(_LSQ),%o2
	sethi %hi(_LSQ_tail),%o0
	ld [%o0+%lo(_LSQ_tail)],%o1
	sll %o1,1,%o0
	add %o0,%o1,%o0
	sll %o0,5,%o0
	ld [%o2+%lo(_LSQ)],%o1
	add %o0,%o1,%l1
	ld [%fp-24],%o0
	st %o0,[%l1]
	ld [%fp-20],%o0
	st %o0,[%l1+4]
	st %g3,[%l1+8]
	sethi %hi(_regs_PC),%g3
	ld [%g3+%lo(_regs_PC)],%o0
	st %o0,[%l1+12]
	ld [%fp-68],%g3
	st %g3,[%l1+16]
	sethi %hi(_pred_PC),%o0
	ld [%o0+%lo(_pred_PC)],%o0
	st %o0,[%l1+20]
	st %l5,[%l1+24]
	st %g0,[%l1+28]
	st %g0,[%l1+32]
	ld [%i3+%lo(_spec_mode)],%o0
	st %o0,[%l1+36]
	st %l4,[%l1+40]
	sethi %hi(_inst_seq),%o0
	ld [%o0+%lo(_inst_seq)],%o0
	add %o0,1,%o0
	sethi %hi(_inst_seq),%o1
	st %o0,[%o1+%lo(_inst_seq)]
	st %o0,[%l1+48]
	st %g0,[%l1+64]
	st %g0,[%l1+60]
	st %g0,[%l1+56]
	sethi %hi(_ptrace_seq),%o1
	or %o1,%lo(_ptrace_seq),%o1
	ld [%o1],%o2
	add %o2,1,%o0
	st %o0,[%o1]
	st %o2,[%l1+52]
	sethi %hi(_ptrace_active),%o0
	ld [%o0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L3094
	sethi %hi(LC352),%o1
	ld [%l1+52],%o0
	or %o1,%lo(LC352),%o1
	ld [%l1+12],%o2
	call ___ptrace_newuop,0
	mov 0,%o3
L3094:
	sethi %hi(_ptrace_active),%o0
	ld [%o0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L3095
	sethi %hi(LC353),%o1
	ld [%l1+52],%o0
	or %o1,%lo(LC353),%o1
	call ___ptrace_newstage,0
	mov 0,%o2
L3095:
	st %l5,[%l2+84]
	cmp %i2,0
	be L3616
	mov 1,%o3
	mov %i2,%o1
	sethi %hi(_use_spec_cv),%o0
	or %o0,%lo(_use_spec_cv),%o2
	sra %o1,5,%o0
	sll %o0,2,%o1
	mov %i2,%o0
	and %o0,-32,%o0
	sub %i2,%o0,%o0
	sll %l5,%o0,%o0
	ld [%o2+%o1],%o1
	andcc %o0,%o1,%g0
	be L3106
	sethi %hi(_spec_create_vector),%o1
	b L3617
	or %o1,%lo(_spec_create_vector),%o1
L3106:
	sethi %hi(_create_vector),%o1
	or %o1,%lo(_create_vector),%o1
L3617:
	sll %i2,3,%o2
	ld [%o1+%o2],%o0
	st %o0,[%fp-48]
	add %o1,%o2,%o1
	ld [%o1+4],%o0
	st %o0,[%fp-44]
	ld [%fp-48],%o0
	cmp %o0,0
	bne,a L3110
	st %g0,[%l2+88]
L3616:
	b L3104
	st %l5,[%l2+88]
L3110:
	sethi %hi(_rslink_free_list),%o0
	ld [%o0+%lo(_rslink_free_list)],%o0
	cmp %o0,0
	bne L3111
	sethi %hi(_rslink_free_list),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC334),%o1
	or %o1,%lo(LC334),%o1
	mov 3069,%o2
	sethi %hi(LC222),%o3
	call __panic,0
	or %o3,%lo(LC222),%o3
L3111:
	ld [%o0+%lo(_rslink_free_list)],%o1
	ld [%o0+%lo(_rslink_free_list)],%o0
	ld [%o0],%o0
	sethi %hi(_rslink_free_list),%o2
	st %o0,[%o2+%lo(_rslink_free_list)]
	st %g0,[%o1]
	st %l2,[%o1+4]
	ld [%o1+4],%o0
	ld [%o0+44],%o0
	st %o0,[%o1+8]
	st %o3,[%o1+16]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	ld [%o0+76],%o0
	st %o0,[%o1]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	st %o1,[%o0+76]
L3104:
	cmp %i4,0
	be L3618
	mov 2,%o3
	mov %i4,%o1
	sethi %hi(_use_spec_cv),%o0
	or %o0,%lo(_use_spec_cv),%o2
	sra %o1,5,%o0
	sll %o0,2,%o1
	mov %i4,%o0
	and %o0,-32,%o0
	sub %i4,%o0,%o0
	sll %l5,%o0,%o0
	ld [%o2+%o1],%o1
	andcc %o0,%o1,%g0
	be L3114
	sethi %hi(_spec_create_vector),%o1
	b L3619
	or %o1,%lo(_spec_create_vector),%o1
L3114:
	sethi %hi(_create_vector),%o1
	or %o1,%lo(_create_vector),%o1
L3619:
	sll %i4,3,%o2
	ld [%o1+%o2],%o0
	st %o0,[%fp-48]
	add %o1,%o2,%o1
	ld [%o1+4],%o0
	st %o0,[%fp-44]
	ld [%fp-48],%o0
	cmp %o0,0
	bne,a L3118
	st %g0,[%l2+92]
L3618:
	b L3112
	st %l5,[%l2+92]
L3118:
	sethi %hi(_rslink_free_list),%o0
	ld [%o0+%lo(_rslink_free_list)],%o0
	cmp %o0,0
	bne L3119
	sethi %hi(_rslink_free_list),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC334),%o1
	or %o1,%lo(LC334),%o1
	mov 3069,%o2
	sethi %hi(LC222),%o3
	call __panic,0
	or %o3,%lo(LC222),%o3
L3119:
	ld [%o0+%lo(_rslink_free_list)],%o1
	ld [%o0+%lo(_rslink_free_list)],%o0
	ld [%o0],%o0
	sethi %hi(_rslink_free_list),%o2
	st %o0,[%o2+%lo(_rslink_free_list)]
	st %g0,[%o1]
	st %l2,[%o1+4]
	ld [%o1+4],%o0
	ld [%o0+44],%o0
	st %o0,[%o1+8]
	st %o3,[%o1+16]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	ld [%o0+76],%o0
	st %o0,[%o1]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	st %o1,[%o0+76]
L3112:
	mov 67,%o5
	st %o5,[%l2+68]
	st %g0,[%l2+76]
	st %l2,[%fp-48]
	st %g0,[%fp-44]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3122
	mov 2,%o2
	sethi %hi(_use_spec_cv),%o3
	or %o3,%lo(_use_spec_cv),%o3
	sll %o2,2,%o4
	sethi %hi(_use_spec_cv),%o1
	or %o1,%lo(_use_spec_cv),%o1
	sll %o2,2,%o2
	add %o5,-64,%o0
	sll %l5,%o0,%o0
	ld [%o1+%o2],%o1
	or %o0,%o1,%o0
	st %o0,[%o3+%o4]
	sethi %hi(_spec_create_vector),%o1
	or %o1,%lo(_spec_create_vector),%o1
	ld [%fp-48],%o0
	st %o0,[%o1+536]
	ld [%fp-44],%o0
	b L3120
	st %o0,[%o1+540]
L3122:
	sethi %hi(_create_vector),%o0
	or %o0,%lo(_create_vector),%o0
	ld [%fp-48],%o1
	st %o1,[%o0+536]
	ld [%fp-44],%o1
	st %o1,[%o0+540]
L3120:
	cmp %l6,0
	be L3620
	st %g0,[%l2+72]
	mov %l6,%o1
	sethi %hi(_use_spec_cv),%o0
	or %o0,%lo(_use_spec_cv),%o2
	sra %o1,5,%o0
	sll %o0,2,%o1
	mov %l6,%o0
	and %o0,-32,%o0
	sub %l6,%o0,%o0
	sll %l5,%o0,%o0
	ld [%o2+%o1],%o1
	andcc %o0,%o1,%g0
	be L3134
	sethi %hi(_spec_create_vector),%o1
	b L3621
	or %o1,%lo(_spec_create_vector),%o1
L3134:
	sethi %hi(_create_vector),%o1
	or %o1,%lo(_create_vector),%o1
L3621:
	sll %l6,3,%o2
	ld [%o1+%o2],%o0
	st %o0,[%fp-48]
	add %o1,%o2,%o1
	ld [%o1+4],%o0
	st %o0,[%fp-44]
	ld [%fp-48],%o0
	cmp %o0,0
	bne,a L3138
	st %g0,[%l1+84]
L3620:
	b L3132
	st %l5,[%l1+84]
L3138:
	sethi %hi(_rslink_free_list),%o0
	ld [%o0+%lo(_rslink_free_list)],%o0
	cmp %o0,0
	bne L3139
	sethi %hi(_rslink_free_list),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC334),%o1
	or %o1,%lo(LC334),%o1
	mov 3069,%o2
	sethi %hi(LC222),%o3
	call __panic,0
	or %o3,%lo(LC222),%o3
L3139:
	ld [%o0+%lo(_rslink_free_list)],%o1
	ld [%o0+%lo(_rslink_free_list)],%o0
	ld [%o0],%o0
	sethi %hi(_rslink_free_list),%o2
	st %o0,[%o2+%lo(_rslink_free_list)]
	st %g0,[%o1]
	st %l1,[%o1+4]
	ld [%o1+4],%o0
	ld [%o0+44],%o0
	st %o0,[%o1+8]
	st %g0,[%o1+16]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	ld [%o0+76],%o0
	st %o0,[%o1]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	st %o1,[%o0+76]
L3132:
	mov 67,%o2
	orcc %o2,%g0,%o1
	bge L3146
	mov 1,%o4
	add %o1,31,%o1
L3146:
	sethi %hi(_use_spec_cv),%o0
	or %o0,%lo(_use_spec_cv),%o3
	sra %o1,5,%o0
	sll %o0,2,%o1
	orcc %o2,%g0,%o0
	bl,a L3147
	add %o0,31,%o0
L3147:
	and %o0,224,%o0
	sub %o2,%o0,%o0
	sll %l5,%o0,%o0
	ld [%o3+%o1],%o1
	andcc %o0,%o1,%g0
	be L3144
	sethi %hi(_spec_create_vector),%o1
	b L3622
	or %o1,%lo(_spec_create_vector),%o1
L3144:
	sethi %hi(_create_vector),%o1
	or %o1,%lo(_create_vector),%o1
L3622:
	sll %o2,3,%o2
	ld [%o1+%o2],%o0
	st %o0,[%fp-48]
	add %o1,%o2,%o1
	ld [%o1+4],%o0
	st %o0,[%fp-44]
	ld [%fp-48],%o0
	cmp %o0,0
	bne,a L3148
	st %g0,[%l1+88]
	b L3142
	st %l5,[%l1+88]
L3148:
	sethi %hi(_rslink_free_list),%o0
	ld [%o0+%lo(_rslink_free_list)],%o0
	cmp %o0,0
	bne L3149
	sethi %hi(_rslink_free_list),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC334),%o1
	or %o1,%lo(LC334),%o1
	mov 3069,%o2
	sethi %hi(LC222),%o3
	call __panic,0
	or %o3,%lo(LC222),%o3
L3149:
	ld [%o0+%lo(_rslink_free_list)],%o1
	ld [%o0+%lo(_rslink_free_list)],%o0
	ld [%o0],%o0
	sethi %hi(_rslink_free_list),%o2
	st %o0,[%o2+%lo(_rslink_free_list)]
	st %g0,[%o1]
	st %l1,[%o1+4]
	ld [%o1+4],%o0
	ld [%o0+44],%o0
	st %o0,[%o1+8]
	st %o4,[%o1+16]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	ld [%o0+76],%o0
	st %o0,[%o1]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	st %o1,[%o0+76]
L3142:
	cmp %l3,0
	bne L3159
	st %l5,[%l1+92]
	b L3158
	st %g0,[%l1+68]
L3159:
	st %l3,[%l1+68]
	st %g0,[%l1+76]
	st %l1,[%fp-48]
	st %g0,[%fp-44]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3160
	mov %l3,%o1
	sra %o1,5,%o1
	sethi %hi(_use_spec_cv),%o0
	or %o0,%lo(_use_spec_cv),%o4
	sll %o1,2,%o2
	or %o0,%lo(_use_spec_cv),%o3
	sll %o1,2,%o1
	mov %l3,%o0
	and %o0,-32,%o0
	sub %l3,%o0,%o0
	sll %l5,%o0,%o0
	ld [%o3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%o4+%o2]
	sethi %hi(_spec_create_vector),%o1
	b L3623
	or %o1,%lo(_spec_create_vector),%o1
L3160:
	sethi %hi(_create_vector),%o1
	or %o1,%lo(_create_vector),%o1
L3623:
	sll %l3,3,%o2
	ld [%fp-48],%o0
	st %o0,[%o1+%o2]
	add %o1,%o2,%o1
	ld [%fp-44],%o0
	st %o0,[%o1+4]
L3158:
	add %fp,-40,%o1
	cmp %i5,0
	bne L3165
	mov 1,%o0
	b L3164
	st %g0,[%l1+72]
L3165:
	st %i5,[%l1+72]
	st %g0,[%l1+80]
	st %l1,[%fp-48]
	st %o0,[%o1-4]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3166
	sethi %hi(_use_spec_cv),%o0
	mov %i5,%o1
	sra %o1,5,%o1
	or %o0,%lo(_use_spec_cv),%o4
	sll %o1,2,%o2
	or %o0,%lo(_use_spec_cv),%o3
	sll %o1,2,%o1
	mov %i5,%o0
	and %o0,-32,%o0
	sub %i5,%o0,%o0
	sll %l5,%o0,%o0
	ld [%o3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%o4+%o2]
	sethi %hi(_spec_create_vector),%o1
	b L3624
	or %o1,%lo(_spec_create_vector),%o1
L3166:
	sethi %hi(_create_vector),%o1
	or %o1,%lo(_create_vector),%o1
L3624:
	sll %i5,3,%o2
	ld [%fp-48],%o0
	st %o0,[%o1+%o2]
	add %o1,%o2,%o1
	ld [%fp-44],%o0
	st %o0,[%o1+4]
L3164:
	ld [%fp-52],%g3
	add %g3,1,%g3
	st %g3,[%fp-52]
	sethi %hi(_RUU_tail),%l0
	sethi %hi(_RUU_tail),%o0
	ld [%o0+%lo(_RUU_tail)],%o0
	add %o0,1,%o0
	sethi %hi(_RUU_size),%g3
	or %g3,%lo(_RUU_size),%g3
	call .rem,0
	ld [%g3],%o1
	st %o0,[%l0+%lo(_RUU_tail)]
	sethi %hi(_RUU_num),%o0
	ld [%o0+%lo(_RUU_num)],%o0
	add %o0,1,%o0
	sethi %hi(_RUU_num),%o1
	st %o0,[%o1+%lo(_RUU_num)]
	sethi %hi(_LSQ_tail),%l0
	sethi %hi(_LSQ_tail),%o0
	ld [%o0+%lo(_LSQ_tail)],%o0
	add %o0,1,%o0
	sethi %hi(_LSQ_size),%g3
	or %g3,%lo(_LSQ_size),%g3
	call .rem,0
	ld [%g3],%o1
	st %o0,[%l0+%lo(_LSQ_tail)]
	sethi %hi(_LSQ_num),%o0
	ld [%o0+%lo(_LSQ_num)],%o0
	add %o0,1,%o0
	sethi %hi(_LSQ_num),%o1
	st %o0,[%o1+%lo(_LSQ_num)]
	ld [%l2+84],%o0
	cmp %o0,0
	be L3883
	sethi %hi(_last_op),%o0
	ld [%l2+88],%o0
	cmp %o0,0
	be L3883
	sethi %hi(_last_op),%o0
	ld [%l2+92],%o0
	cmp %o0,0
	be L3883
	sethi %hi(_last_op),%o0
	call _readyq_enqueue,0
	mov %l2,%o0
	sethi %hi(_last_op),%o0
L3883:
	st %g0,[%o0+%lo(_last_op)]
	sethi %hi(_last_op),%g3
	or %g3,%lo(_last_op),%g3
	st %l1,[%g3+4]
	ld [%l1+44],%o0
	st %o0,[%g3+8]
	sethi %hi(_ss_op2flags),%o0
	or %o0,%lo(_ss_op2flags),%o0
	ld [%fp-60],%g3
	sll %g3,2,%o1
	ld [%o0+%o1],%o0
	and %o0,160,%o0
	cmp %o0,160
	bne L3884
	sethi %hi(_sim_total_insn),%o2
	ld [%l1+84],%o0
	cmp %o0,0
	be L3885
	sethi %hi(_sim_total_insn),%o0
	ld [%l1+88],%o0
	cmp %o0,0
	be L3885
	sethi %hi(_sim_total_insn),%o0
	ld [%l1+92],%o0
	cmp %o0,0
	be L3885
	sethi %hi(_sim_total_insn),%o0
	call _readyq_enqueue,0
	mov %l1,%o0
	b L3884
	sethi %hi(_sim_total_insn),%o2
L3093:
	cmp %l6,0
	be L3625
	mov %l6,%o1
	sethi %hi(_use_spec_cv),%o0
	or %o0,%lo(_use_spec_cv),%o2
	sra %o1,5,%o0
	sll %o0,2,%o1
	mov %l6,%o0
	and %o0,-32,%o0
	sub %l6,%o0,%o0
	sll %l5,%o0,%o0
	ld [%o2+%o1],%o1
	andcc %o0,%o1,%g0
	be L3175
	sethi %hi(_spec_create_vector),%o1
	b L3626
	or %o1,%lo(_spec_create_vector),%o1
L3175:
	sethi %hi(_create_vector),%o1
	or %o1,%lo(_create_vector),%o1
L3626:
	sll %l6,3,%o2
	ld [%o1+%o2],%o0
	st %o0,[%fp-48]
	add %o1,%o2,%o1
	ld [%o1+4],%o0
	st %o0,[%fp-44]
	ld [%fp-48],%o0
	cmp %o0,0
	bne,a L3179
	st %g0,[%l2+84]
L3625:
	b L3173
	st %l5,[%l2+84]
L3179:
	sethi %hi(_rslink_free_list),%o0
	ld [%o0+%lo(_rslink_free_list)],%o0
	cmp %o0,0
	bne L3180
	sethi %hi(_rslink_free_list),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC334),%o1
	or %o1,%lo(LC334),%o1
	mov 3069,%o2
	sethi %hi(LC222),%o3
	call __panic,0
	or %o3,%lo(LC222),%o3
L3180:
	ld [%o0+%lo(_rslink_free_list)],%o1
	ld [%o0+%lo(_rslink_free_list)],%o0
	ld [%o0],%o0
	sethi %hi(_rslink_free_list),%o2
	st %o0,[%o2+%lo(_rslink_free_list)]
	st %g0,[%o1]
	st %l2,[%o1+4]
	ld [%o1+4],%o0
	ld [%o0+44],%o0
	st %o0,[%o1+8]
	st %g0,[%o1+16]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	ld [%o0+76],%o0
	st %o0,[%o1]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	st %o1,[%o0+76]
L3173:
	cmp %i2,0
	be L3627
	mov 1,%o3
	mov %i2,%o1
	sethi %hi(_use_spec_cv),%o0
	or %o0,%lo(_use_spec_cv),%o2
	sra %o1,5,%o0
	sll %o0,2,%o1
	mov %i2,%o0
	and %o0,-32,%o0
	sub %i2,%o0,%o0
	sll %l5,%o0,%o0
	ld [%o2+%o1],%o1
	andcc %o0,%o1,%g0
	be L3183
	sethi %hi(_spec_create_vector),%o1
	b L3628
	or %o1,%lo(_spec_create_vector),%o1
L3183:
	sethi %hi(_create_vector),%o1
	or %o1,%lo(_create_vector),%o1
L3628:
	sll %i2,3,%o2
	ld [%o1+%o2],%o0
	st %o0,[%fp-48]
	add %o1,%o2,%o1
	ld [%o1+4],%o0
	st %o0,[%fp-44]
	ld [%fp-48],%o0
	cmp %o0,0
	bne,a L3187
	st %g0,[%l2+88]
L3627:
	b L3181
	st %l5,[%l2+88]
L3187:
	sethi %hi(_rslink_free_list),%o0
	ld [%o0+%lo(_rslink_free_list)],%o0
	cmp %o0,0
	bne L3188
	sethi %hi(_rslink_free_list),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC334),%o1
	or %o1,%lo(LC334),%o1
	mov 3069,%o2
	sethi %hi(LC222),%o3
	call __panic,0
	or %o3,%lo(LC222),%o3
L3188:
	ld [%o0+%lo(_rslink_free_list)],%o1
	ld [%o0+%lo(_rslink_free_list)],%o0
	ld [%o0],%o0
	sethi %hi(_rslink_free_list),%o2
	st %o0,[%o2+%lo(_rslink_free_list)]
	st %g0,[%o1]
	st %l2,[%o1+4]
	ld [%o1+4],%o0
	ld [%o0+44],%o0
	st %o0,[%o1+8]
	st %o3,[%o1+16]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	ld [%o0+76],%o0
	st %o0,[%o1]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	st %o1,[%o0+76]
L3181:
	cmp %i4,0
	be L3629
	mov 2,%o3
	mov %i4,%o1
	sethi %hi(_use_spec_cv),%o0
	or %o0,%lo(_use_spec_cv),%o2
	sra %o1,5,%o0
	sll %o0,2,%o1
	mov %i4,%o0
	and %o0,-32,%o0
	sub %i4,%o0,%o0
	sll %l5,%o0,%o0
	ld [%o2+%o1],%o1
	andcc %o0,%o1,%g0
	be L3191
	sethi %hi(_spec_create_vector),%o1
	b L3630
	or %o1,%lo(_spec_create_vector),%o1
L3191:
	sethi %hi(_create_vector),%o1
	or %o1,%lo(_create_vector),%o1
L3630:
	sll %i4,3,%o2
	ld [%o1+%o2],%o0
	st %o0,[%fp-48]
	add %o1,%o2,%o1
	ld [%o1+4],%o0
	st %o0,[%fp-44]
	ld [%fp-48],%o0
	cmp %o0,0
	bne,a L3195
	st %g0,[%l2+92]
L3629:
	b L3189
	st %l5,[%l2+92]
L3195:
	sethi %hi(_rslink_free_list),%o0
	ld [%o0+%lo(_rslink_free_list)],%o0
	cmp %o0,0
	bne L3196
	sethi %hi(_rslink_free_list),%o0
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC334),%o1
	or %o1,%lo(LC334),%o1
	mov 3069,%o2
	sethi %hi(LC222),%o3
	call __panic,0
	or %o3,%lo(LC222),%o3
L3196:
	ld [%o0+%lo(_rslink_free_list)],%o1
	ld [%o0+%lo(_rslink_free_list)],%o0
	ld [%o0],%o0
	sethi %hi(_rslink_free_list),%o2
	st %o0,[%o2+%lo(_rslink_free_list)]
	st %g0,[%o1]
	st %l2,[%o1+4]
	ld [%o1+4],%o0
	ld [%o0+44],%o0
	st %o0,[%o1+8]
	st %o3,[%o1+16]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	ld [%o0+76],%o0
	st %o0,[%o1]
	ld [%fp-48],%o2
	ld [%fp-44],%o0
	sll %o0,2,%o0
	add %o0,%o2,%o0
	st %o1,[%o0+76]
L3189:
	cmp %l3,0
	bne,a L3198
	st %l3,[%l2+68]
	b L3197
	st %g0,[%l2+68]
L3198:
	st %g0,[%l2+76]
	st %l2,[%fp-48]
	st %g0,[%fp-44]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3199
	mov %l3,%o1
	sra %o1,5,%o1
	sethi %hi(_use_spec_cv),%o0
	or %o0,%lo(_use_spec_cv),%o4
	sll %o1,2,%o2
	or %o0,%lo(_use_spec_cv),%o3
	sll %o1,2,%o1
	mov %l3,%o0
	and %o0,-32,%o0
	sub %l3,%o0,%o0
	sll %l5,%o0,%o0
	ld [%o3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%o4+%o2]
	sethi %hi(_spec_create_vector),%o1
	b L3631
	or %o1,%lo(_spec_create_vector),%o1
L3199:
	sethi %hi(_create_vector),%o1
	or %o1,%lo(_create_vector),%o1
L3631:
	sll %l3,3,%o2
	ld [%fp-48],%o0
	st %o0,[%o1+%o2]
	add %o1,%o2,%o1
	ld [%fp-44],%o0
	st %o0,[%o1+4]
L3197:
	add %fp,-40,%o1
	cmp %i5,0
	bne L3204
	mov 1,%o0
	b L3203
	st %g0,[%l2+72]
L3204:
	st %i5,[%l2+72]
	st %g0,[%l2+80]
	st %l2,[%fp-48]
	st %o0,[%o1-4]
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3205
	sethi %hi(_use_spec_cv),%o0
	mov %i5,%o1
	sra %o1,5,%o1
	or %o0,%lo(_use_spec_cv),%o4
	sll %o1,2,%o2
	or %o0,%lo(_use_spec_cv),%o3
	sll %o1,2,%o1
	mov %i5,%o0
	and %o0,-32,%o0
	sub %i5,%o0,%o0
	sll %l5,%o0,%o0
	ld [%o3+%o1],%o1
	or %o0,%o1,%o0
	st %o0,[%o4+%o2]
	sethi %hi(_spec_create_vector),%o1
	b L3632
	or %o1,%lo(_spec_create_vector),%o1
L3205:
	sethi %hi(_create_vector),%o1
	or %o1,%lo(_create_vector),%o1
L3632:
	sll %i5,3,%o2
	ld [%fp-48],%o0
	st %o0,[%o1+%o2]
	add %o1,%o2,%o1
	ld [%fp-44],%o0
	st %o0,[%o1+4]
L3203:
	ld [%fp-52],%g3
	add %g3,1,%g3
	st %g3,[%fp-52]
	sethi %hi(_RUU_tail),%l0
	sethi %hi(_RUU_tail),%o0
	ld [%o0+%lo(_RUU_tail)],%o0
	add %o0,1,%o0
	sethi %hi(_RUU_size),%g3
	or %g3,%lo(_RUU_size),%g3
	call .rem,0
	ld [%g3],%o1
	st %o0,[%l0+%lo(_RUU_tail)]
	sethi %hi(_RUU_num),%o0
	ld [%o0+%lo(_RUU_num)],%o0
	add %o0,1,%o0
	sethi %hi(_RUU_num),%o1
	st %o0,[%o1+%lo(_RUU_num)]
	ld [%l2+84],%o0
	cmp %o0,0
	be L3886
	sethi %hi(_last_op),%o0
	ld [%l2+88],%o0
	cmp %o0,0
	be L3886
	sethi %hi(_last_op),%o0
	ld [%l2+92],%o0
	cmp %o0,0
	be L3886
	sethi %hi(_last_op),%o0
	call _readyq_enqueue,0
	mov %l2,%o0
	sethi %hi(_RSLINK_NULL),%o0
	or %o0,%lo(_RSLINK_NULL),%o0
	ldd [%o0],%o2
	sethi %hi(_last_op),%g3
	or %g3,%lo(_last_op),%g3
	std %o2,[%g3]
	ldd [%o0+8],%o2
	std %o2,[%g3+8]
	ldd [%o0+16],%o0
	std %o0,[%g3+16]
	b L3884
	sethi %hi(_sim_total_insn),%o2
L3886:
	st %g0,[%o0+%lo(_last_op)]
	sethi %hi(_last_op),%g3
	or %g3,%lo(_last_op),%g3
	st %l2,[%g3+4]
	ld [%l2+44],%o0
	b L3211
	st %o0,[%g3+8]
L3092:
	mov 0,%l2
L3211:
	sethi %hi(_sim_total_insn),%o2
L3884:
	sethi %hi(_sim_total_insn),%o0
L3885:
	ldd [%o0+%lo(_sim_total_insn)],%o0
	addcc %o1,1,%o1
	addx %o0,0,%o0
	std %o0,[%o2+%lo(_sim_total_insn)]
	sethi %hi(_ss_op2flags),%o0
	or %o0,%lo(_ss_op2flags),%o0
	ld [%fp-60],%g3
	sll %g3,2,%o1
	ld [%o0+%o1],%o0
	andcc %o0,4,%g0
	be L3212
	sethi %hi(_sim_total_branches),%o0
	sethi %hi(_sim_total_branches),%o1
	ldd [%o1+%lo(_sim_total_branches)],%o2
	addcc %o3,1,%o3
	addx %o2,0,%o2
	std %o2,[%o0+%lo(_sim_total_branches)]
L3212:
	ld [%i3+%lo(_spec_mode)],%o0
	cmp %o0,0
	bne L3887
	sethi %hi(_ptrace_active),%o0
	sethi %hi(_sim_num_insn),%o2
	sethi %hi(_sim_num_insn),%o0
	ldd [%o0+%lo(_sim_num_insn)],%o0
	addcc %o1,1,%o1
	addx %o0,0,%o0
	std %o0,[%o2+%lo(_sim_num_insn)]
	sethi %hi(_ss_op2flags),%o0
	or %o0,%lo(_ss_op2flags),%o0
	ld [%fp-60],%g3
	sll %g3,2,%o1
	ld [%o0+%o1],%o0
	andcc %o0,4,%g0
	be L3214
	sethi %hi(_sim_num_branches),%o2
	sethi %hi(_sim_num_branches),%o0
	ldd [%o0+%lo(_sim_num_branches)],%o0
	addcc %o1,1,%o1
	addx %o0,0,%o0
	std %o0,[%o2+%lo(_sim_num_branches)]
	sethi %hi(_pred),%o0
	ld [%o0+%lo(_pred)],%o0
	cmp %o0,0
	be L3214
	sethi %hi(_pred),%o1
	sethi %hi(_regs_PC),%g3
	ld [%g3+%lo(_regs_PC)],%o3
	add %o3,8,%o3
	ld [%fp-68],%g3
	xor %g3,%o3,%o3
	sethi %hi(_pred_PC),%o0
	ld [%o0+%lo(_pred_PC)],%o4
	xor %o4,%g3,%o4
	ld [%o1+%lo(_pred)],%o0
	sethi %hi(_regs_PC),%g3
	ld [%g3+%lo(_regs_PC)],%o1
	ld [%fp-68],%o2
	subcc %g0,%o3,%g0
	addx %g0,0,%o3
	subcc %g0,%o4,%g0
	subx %g0,-1,%o4
	call _bpred_update,0
	ld [%fp-76],%o5
L3214:
	sethi %hi(_pred_PC),%o0
	ld [%o0+%lo(_pred_PC)],%o0
	ld [%fp-68],%g3
	cmp %o0,%g3
	be L3887
	sethi %hi(_ptrace_active),%o0
	st %l5,[%i3+%lo(_spec_mode)]
	st %l5,[%l2+32]
	sethi %hi(_recover_PC),%o0
	st %g3,[%o0+%lo(_recover_PC)]
	sethi %hi(_ptrace_active),%o0
L3887:
	ld [%o0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L3217
	sethi %hi(_pred_PC),%o0
	ld [%o0+%lo(_pred_PC)],%o2
	ld [%fp-68],%g3
	xor %o2,%g3,%o2
	subcc %g0,%o2,%g0
	subx %g0,0,%o2
	ld [%fp-84],%o0
	sethi %hi(LC353),%o1
	or %o1,%lo(LC353),%o1
	call ___ptrace_newstage,0
	and %o2,4,%o2
L3217:
	ld [%fp-60],%g3
	cmp %g3,1
	bne L3220
	mov 0,%l2
	sethi %hi(_ptrace_active),%o0
	ld [%o0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L3888
	sethi %hi(_pcstat_nelt),%o0
	call ___ptrace_endinst,0
	ld [%fp-84],%o0
L3220:
	sethi %hi(_pcstat_nelt),%o0
L3888:
	ld [%o0+%lo(_pcstat_nelt)],%o0
	cmp %l2,%o0
	bge L3889
	sethi %hi(_fetch_head),%o0
	sethi %hi(_pcstat_stats),%o0
	or %o0,%lo(_pcstat_stats),%l3
	sethi %hi(_pcstat_lastvals),%o0
	or %o0,%lo(_pcstat_lastvals),%l6
	sethi %hi(_pcstat_sdists),%o0
	or %o0,%lo(_pcstat_sdists),%i2
	sll %l2,2,%o0
L3891:
	ld [%l3+%o0],%o0
	ld [%o0+16],%o0
	cmp %o0,0
	bne L3225
	sll %l2,2,%o0
	ld [%l3+%o0],%o0
	ld [%o0+24],%o0
	ld [%o0],%o1
	ld [%o0],%l1
	b L3226
	sra %o1,31,%l0
L3225:
	ld [%l3+%o0],%o0
	ld [%o0+16],%o0
	cmp %o0,1
	bne L3227
	sll %l2,2,%o0
	ld [%l3+%o0],%o0
	ld [%o0+24],%o0
	ld [%o0],%l1
	b L3226
	mov 0,%l0
L3227:
	ld [%l3+%o0],%o0
	ld [%o0+16],%o0
	cmp %o0,2
	bne L3229
	sethi %hi(LC6),%o0
	sll %l2,2,%o0
	ld [%l3+%o0],%o0
	ld [%o0+24],%o0
	ldd [%o0],%l0
	b L3890
	sll %l2,3,%o0
L3229:
	or %o0,%lo(LC6),%o0
	sethi %hi(LC338),%g3
	or %g3,%lo(LC338),%o1
	mov 3697,%o2
	sethi %hi(LC188),%o3
	call __panic,0
	or %o3,%lo(LC188),%o3
L3226:
	sll %l2,3,%o0
L3890:
	add %l6,%o0,%o0
	ld [%o0+4],%o0
	subcc %l1,%o0,%o2
	be L3224
	sll %l2,2,%o0
	ld [%i2+%o0],%o0
	sethi %hi(_regs_PC),%g3
	call _stat_add_samples,0
	ld [%g3+%lo(_regs_PC)],%o1
	sll %l2,3,%o0
	std %l0,[%l6+%o0]
L3224:
	add %l2,1,%l2
	sethi %hi(_pcstat_nelt),%o0
	ld [%o0+%lo(_pcstat_nelt)],%o0
	cmp %l2,%o0
	bl L3891
	sll %l2,2,%o0
	sethi %hi(_fetch_head),%o0
L3889:
	ld [%o0+%lo(_fetch_head)],%o1
	add %o1,1,%o1
	sethi %hi(_ruu_ifq_size),%o0
	ld [%o0+%lo(_ruu_ifq_size)],%o0
	add %o0,-1,%o0
	and %o1,%o0,%o1
	sethi %hi(_fetch_head),%o0
	st %o1,[%o0+%lo(_fetch_head)]
	sethi %hi(_fetch_num),%o0
	ld [%o0+%lo(_fetch_num)],%o0
	add %o0,-1,%o0
	sethi %hi(_fetch_num),%o1
	st %o0,[%o1+%lo(_fetch_num)]
	sethi %hi(_dlite_check),%o0
	ld [%o0+%lo(_dlite_check)],%o0
	cmp %o0,0
	bne L3236
	mov 1,%l0
	sethi %hi(_dlite_active),%o0
	ld [%o0+%lo(_dlite_active)],%o0
	cmp %o0,0
	be L3892
	sethi %hi(_ruu_decode_width),%o0
L3236:
	sethi %hi(_pred_PC),%o4
	ld [%fp-92],%g3
	cmp %g3,0
	be L3237
	mov 1,%o2
	mov 2,%o2
L3237:
	sethi %hi(_sim_num_insn),%o3
	sethi %hi(_sim_cycle),%o1
	or %o1,%lo(_sim_cycle),%o1
	ld [%o1+4],%o0
	st %o0,[%sp+92]
	ld [%o1],%o5
	ld [%o4+%lo(_pred_PC)],%o0
	mov %o2,%o1
	ld [%o3+%lo(_sim_num_insn+4)],%o4
	ld [%o3+%lo(_sim_num_insn)],%o3
	call ___check_break,0
	mov %l4,%o2
	cmp %o0,0
	be L1016
	sethi %hi(_sim_cycle),%o2
	sethi %hi(_pred_PC),%o1
	sethi %hi(_regs_PC),%g3
	ld [%g3+%lo(_regs_PC)],%o0
	ldd [%o2+%lo(_sim_cycle)],%o2
	call _dlite_main,0
	ld [%o1+%lo(_pred_PC)],%o1
L1016:
	sethi %hi(_ruu_decode_width),%o0
L3892:
	ld [%o0+%lo(_ruu_decode_width)],%o0
	ld [%fp-52],%g3
	cmp %g3,%o0
	bge L1017
	sethi %hi(_RUU_num),%o0
	sethi %hi(_RUU_size),%o1
	ld [%o0+%lo(_RUU_num)],%o2
	ld [%o1+%lo(_RUU_size)],%o0
	cmp %o2,%o0
	bge L1017
	sethi %hi(_LSQ_num),%o0
	sethi %hi(_LSQ_size),%o1
	ld [%o0+%lo(_LSQ_num)],%o2
	ld [%o1+%lo(_LSQ_size)],%o0
	cmp %o2,%o0
	bge L1017
	sethi %hi(_fetch_num),%o0
	ld [%o0+%lo(_fetch_num)],%o0
	cmp %o0,0
	bne L3239
	sethi %hi(_ruu_include_spec),%o0
L1017:
	cmp %l0,0
L3657:
	bne L3240
	sethi %hi(_dlite_check),%o0
	ld [%o0+%lo(_dlite_check)],%o0
	cmp %o0,0
	bne L3244
	ld [%fp-92],%g3
	sethi %hi(_dlite_active),%o0
	ld [%o0+%lo(_dlite_active)],%o0
	cmp %o0,0
	be L3240
	nop
L3244:
	cmp %g3,0
	be L3245
	mov 1,%o2
	mov 2,%o2
L3245:
	sethi %hi(_sim_num_insn),%o3
	or %o3,%lo(_sim_num_insn),%o3
	sethi %hi(_sim_cycle),%o0
	or %o0,%lo(_sim_cycle),%o0
	ld [%o0+4],%o1
	st %o1,[%sp+92]
	ld [%o0],%o5
	mov 0,%o0
	mov %o2,%o1
	ld [%o3+4],%o4
	ld [%o3],%o3
	call ___check_break,0
	mov %l4,%o2
	cmp %o0,0
	be L3240
	sethi %hi(_regs_PC),%o0
	sethi %hi(_sim_cycle),%o2
	ld [%o0+%lo(_regs_PC)],%o0
	ldd [%o2+%lo(_sim_cycle)],%o2
	call _dlite_main,0
	mov 0,%o1
L3240:
	ret
	restore
	.align 8
LC354:
	.ascii "fetch_init\0"
	.align 4
	.proc	020
_fetch_init:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	sethi %hi(_fetch_data),%l0
	sethi %hi(_ruu_ifq_size),%o0
	ld [%o0+%lo(_ruu_ifq_size)],%o0
	call _calloc,0
	mov 24,%o1
	cmp %o0,0
	bne L3909
	st %o0,[%l0+%lo(_fetch_data)]
	sethi %hi(LC6),%o0
	or %o0,%lo(LC6),%o0
	sethi %hi(LC354),%o1
	or %o1,%lo(LC354),%o1
	mov 3741,%o2
	sethi %hi(LC197),%o3
	call __fatal,0
	or %o3,%lo(LC197),%o3
L3909:
	sethi %hi(_fetch_num),%o0
	st %g0,[%o0+%lo(_fetch_num)]
	sethi %hi(_fetch_head),%o0
	st %g0,[%o0+%lo(_fetch_head)]
	sethi %hi(_fetch_tail),%o0
	st %g0,[%o0+%lo(_fetch_tail)]
	ret
	restore
	.align 8
LC355:
	.ascii "** fetch stage state **\12\0"
	.align 8
LC356:
	.ascii "pred_PC: 0x%08x, recover_PC: 0x%08x\12\0"
	.align 8
LC357:
	.ascii "fetch_regs_PC: 0x%08x, fetch_pred_PC: 0x%08x\12\0"
	.align 8
LC358:
	.ascii "\12\0"
	.align 8
LC359:
	.ascii "** fetch queue contents **\12\0"
	.align 8
LC360:
	.ascii "fetch_num: %d\12\0"
	.align 8
LC361:
	.ascii "fetch_head: %d, fetch_tail: %d\12\0"
	.align 8
LC362:
	.ascii "idx: %2d: inst: `\0"
	.align 8
LC363:
	.ascii "         regs_PC: 0x%08x, pred_PC: 0x%08x\12\0"
	.align 4
	.global _fetch_dump
	.proc	020
_fetch_dump:
	!#PROLOGUE# 0
	save %sp,-120,%sp
	!#PROLOGUE# 1
	mov %i0,%o0
	sethi %hi(LC355),%o1
	call _fprintf,0
	or %o1,%lo(LC355),%o1
	sethi %hi(_spec_mode),%o0
	ld [%o0+%lo(_spec_mode)],%o0
	cmp %o0,0
	be L3911
	sethi %hi(LC203),%o0
	b L3912
	or %o0,%lo(LC203),%o2
L3911:
	sethi %hi(LC204),%o0
	or %o0,%lo(LC204),%o2
L3912:
	mov %i0,%o0
	sethi %hi(LC320),%o1
	call _fprintf,0
	or %o1,%lo(LC320),%o1
	sethi %hi(_pred_PC),%o2
	sethi %hi(_recover_PC),%o3
	mov %i0,%o0
	sethi %hi(LC356),%o1
	or %o1,%lo(LC356),%o1
	ld [%o2+%lo(_pred_PC)],%o2
	call _fprintf,0
	ld [%o3+%lo(_recover_PC)],%o3
	sethi %hi(_fetch_regs_PC),%o2
	sethi %hi(_fetch_pred_PC),%o3
	mov %i0,%o0
	sethi %hi(LC357),%o1
	or %o1,%lo(LC357),%o1
	ld [%o2+%lo(_fetch_regs_PC)],%o2
	call _fprintf,0
	ld [%o3+%lo(_fetch_pred_PC)],%o3
	mov %i0,%o0
	sethi %hi(LC358),%o1
	call _fprintf,0
	or %o1,%lo(LC358),%o1
	mov %i0,%o0
	sethi %hi(LC359),%o1
	call _fprintf,0
	or %o1,%lo(LC359),%o1
	sethi %hi(_fetch_num),%l1
	mov %i0,%o0
	sethi %hi(LC360),%o1
	or %o1,%lo(LC360),%o1
	call _fprintf,0
	ld [%l1+%lo(_fetch_num)],%o2
	sethi %hi(_fetch_head),%l0
	sethi %hi(_fetch_tail),%o3
	mov %i0,%o0
	sethi %hi(LC361),%o1
	or %o1,%lo(LC361),%o1
	ld [%l0+%lo(_fetch_head)],%o2
	call _fprintf,0
	ld [%o3+%lo(_fetch_tail)],%o3
	ld [%l1+%lo(_fetch_num)],%l2
	cmp %l2,0
	be L3914
	ld [%l0+%lo(_fetch_head)],%l1
	sethi %hi(LC362),%l5
	sethi %hi(_fetch_data),%l3
	sethi %hi(LC200),%l4
L3915:
	mov %i0,%o0
	or %l5,%lo(LC362),%o1
	call _fprintf,0
	mov %l1,%o2
	ld [%l3+%lo(_fetch_data)],%o1
	sll %l1,1,%l0
	add %l0,%l1,%l0
	sll %l0,3,%l0
	ld [%o1+%l0],%o0
	st %o0,[%fp-24]
	add %o1,%l0,%o1
	ld [%o1+4],%o0
	st %o0,[%fp-20]
	add %fp,-24,%o0
	ld [%o1+8],%o1
	call _ss_print_insn,0
	mov %i0,%o2
	mov %i0,%o0
	call _fprintf,0
	or %l4,%lo(LC200),%o1
	ld [%l3+%lo(_fetch_data)],%o3
	add %o3,%l0,%o3
	mov %i0,%o0
	sethi %hi(LC363),%o1
	or %o1,%lo(LC363),%o1
	ld [%o3+8],%o2
	call _fprintf,0
	ld [%o3+12],%o3
	add %l1,1,%o1
	sethi %hi(_ruu_ifq_size),%o0
	ld [%o0+%lo(_ruu_ifq_size)],%o0
	add %o0,-1,%o0
	addcc %l2,-1,%l2
	bne L3915
	and %o1,%o0,%l1
L3914:
	ret
	restore
.data
	.align 4
_last_inst_missed:
	.word	0
	.align 4
_last_inst_tmissed:
	.word	0
.text
	.align 8
LC364:
	.ascii "IF\0"
	.align 4
	.proc	020
_ruu_fetch:
	!#PROLOGUE# 0
	save %sp,-152,%sp
	!#PROLOGUE# 1
	mov 0,%l5
	sethi %hi(_ruu_decode_width),%o0
	ld [%o0+%lo(_ruu_decode_width)],%o0
	cmp %l5,%o0
	bge L3918
	mov 0,%l4
	sethi %hi(_fetch_num),%o0
	sethi %hi(_ruu_ifq_size),%o1
	ld [%o0+%lo(_fetch_num)],%o2
	ld [%o1+%lo(_ruu_ifq_size)],%o0
	cmp %o2,%o0
	bge L3918
	sethi %hi(_fetch_regs_PC),%l1
	sethi %hi(_fetch_pred_PC),%l2
	sethi %hi(_cache_il1_lat),%i0
	sethi %hi(_sim_cycle),%i2
	sethi %hi(_sim_cycle),%o0
	or %o0,%lo(_sim_cycle),%i1
	sethi %hi(_last_inst_missed),%l7
	sethi %hi(_last_inst_tmissed),%l6
	sethi %hi(_fetch_tail),%l3
	ld [%l2+%lo(_fetch_pred_PC)],%o1
L3938:
	st %o1,[%l1+%lo(_fetch_regs_PC)]
	sethi %hi(_ld_text_base),%o0
	ld [%o0+%lo(_ld_text_base)],%o2
	cmp %o2,%o1
	bgu L3920
	sethi %hi(_ld_text_size),%o0
	ld [%o0+%lo(_ld_text_size)],%o0
	add %o2,%o0,%o0
	cmp %o1,%o0
	bgeu L3920
	andcc %o1,7,%g0
	bne L3936
	sethi %hi(_SS_NOP_INST),%o0
	mov 0,%o0
	add %fp,-24,%o2
	call _mem_access,0
	mov 8,%o3
	sethi %hi(_cache_il1),%o0
	ld [%o0+%lo(_cache_il1)],%o1
	cmp %o1,0
	be L3921
	ld [%i0+%lo(_cache_il1_lat)],%l0
	st %g0,[%sp+96]
	st %g0,[%sp+100]
	ld [%i1+4],%o0
	st %o0,[%sp+92]
	ld [%i2+%lo(_sim_cycle)],%o5
	mov %o1,%o0
	mov 0,%o1
	ld [%l1+%lo(_fetch_regs_PC)],%o2
	mov 0,%o3
	call _cache_access,0
	mov 8,%o4
	mov %o0,%l0
	ld [%i0+%lo(_cache_il1_lat)],%o0
	cmp %l0,%o0
	ble L3921
	mov 1,%o0
	st %o0,[%l7+%lo(_last_inst_missed)]
L3921:
	sethi %hi(_itlb),%o0
	ld [%o0+%lo(_itlb)],%o1
	cmp %o1,0
	be L3923
	mov 0,%o3
	st %g0,[%sp+96]
	st %g0,[%sp+100]
	ld [%i1+4],%o0
	st %o0,[%sp+92]
	ld [%i2+%lo(_sim_cycle)],%o5
	mov %o1,%o0
	mov 0,%o1
	ld [%l1+%lo(_fetch_regs_PC)],%o2
	call _cache_access,0
	mov 8,%o4
	mov %o0,%o1
	cmp %o1,1
	ble L3924
	mov 1,%o0
	st %o0,[%l6+%lo(_last_inst_tmissed)]
L3924:
	mov %o1,%o0
	cmp %o0,%l0
	bl,a L3925
	mov %l0,%o0
L3925:
	mov %o0,%l0
L3923:
	ld [%i0+%lo(_cache_il1_lat)],%o0
	cmp %l0,%o0
	be L3937
	sethi %hi(_pred),%o0
	sethi %hi(_ruu_fetch_issue_delay),%o1
	ld [%o1+%lo(_ruu_fetch_issue_delay)],%o0
	add %o0,-1,%o0
	add %o0,%l0,%o0
	b L3918
	st %o0,[%o1+%lo(_ruu_fetch_issue_delay)]
L3920:
	sethi %hi(_SS_NOP_INST),%o0
L3936:
	or %o0,%lo(_SS_NOP_INST),%o1
	ld [%o0+%lo(_SS_NOP_INST)],%o0
	st %o0,[%fp-24]
	ld [%o1+4],%o0
	st %o0,[%fp-20]
	sethi %hi(_pred),%o0
L3937:
	ld [%o0+%lo(_pred)],%o0
	cmp %o0,0
	be L3928
	ld [%l1+%lo(_fetch_regs_PC)],%o1
	mov 0,%o2
	call _bpred_lookup,0
	add %fp,-28,%o3
	cmp %o0,0
	be L3928
	st %o0,[%l2+%lo(_fetch_pred_PC)]
	b L3931
	mov 1,%l5
L3928:
	ld [%l1+%lo(_fetch_regs_PC)],%o0
	add %o0,8,%o0
	st %o0,[%l2+%lo(_fetch_pred_PC)]
L3931:
	ld [%l3+%lo(_fetch_tail)],%o1
	sethi %hi(_fetch_data),%o0
	ld [%o0+%lo(_fetch_data)],%o2
	sll %o1,1,%o0
	add %o0,%o1,%o0
	sll %o0,3,%o0
	ld [%fp-24],%o1
	st %o1,[%o2+%o0]
	add %o2,%o0,%o3
	ld [%fp-20],%o0
	st %o0,[%o3+4]
	ld [%l1+%lo(_fetch_regs_PC)],%o0
	st %o0,[%o3+8]
	ld [%l2+%lo(_fetch_pred_PC)],%o0
	st %o0,[%o3+12]
	ld [%fp-28],%o0
	st %o0,[%o3+16]
	sethi %hi(_ptrace_seq),%o1
	ld [%o1+%lo(_ptrace_seq)],%o2
	add %o2,1,%o0
	st %o0,[%o1+%lo(_ptrace_seq)]
	st %o2,[%o3+20]
	sethi %hi(_ptrace_active),%o0
	ld [%o0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L3932
	ld [%fp-24],%o0
	st %o0,[%fp-40]
	ld [%fp-20],%o0
	st %o0,[%fp-36]
	ld [%o3+20],%o0
	add %fp,-40,%o1
	ld [%o3+8],%o2
	call ___ptrace_newinst,0
	mov 0,%o3
L3932:
	sethi %hi(_ptrace_active),%o0
	ld [%o0+%lo(_ptrace_active)],%o0
	cmp %o0,0
	be L3933
	ld [%l3+%lo(_fetch_tail)],%o1
	sethi %hi(_fetch_data),%o0
	ld [%o0+%lo(_fetch_data)],%o2
	sll %o1,1,%o0
	add %o0,%o1,%o0
	sll %o0,3,%o0
	add %o2,%o0,%o1
	ld [%l7+%lo(_last_inst_missed)],%o0
	subcc %g0,%o0,%g0
	addx %g0,0,%o2
	ld [%l6+%lo(_last_inst_tmissed)],%o0
	cmp %o0,0
	bne,a L3934
	or %o2,2,%o2
L3934:
	ld [%o1+20],%o0
	sethi %hi(LC364),%o1
	call ___ptrace_newstage,0
	or %o1,%lo(LC364),%o1
L3933:
	st %g0,[%l7+%lo(_last_inst_missed)]
	st %g0,[%l6+%lo(_last_inst_tmissed)]
	ld [%l3+%lo(_fetch_tail)],%o1
	add %o1,1,%o1
	sethi %hi(_ruu_ifq_size),%o0
	ld [%o0+%lo(_ruu_ifq_size)],%o3
	add %o3,-1,%o0
	and %o1,%o0,%o1
	st %o1,[%l3+%lo(_fetch_tail)]
	sethi %hi(_fetch_num),%o1
	ld [%o1+%lo(_fetch_num)],%o0
	add %o0,1,%o2
	st %o2,[%o1+%lo(_fetch_num)]
	add %l4,1,%l4
	sethi %hi(_ruu_decode_width),%o0
	ld [%o0+%lo(_ruu_decode_width)],%o0
	cmp %l4,%o0
	bge L3918
	cmp %o2,%o3
	bge L3918
	cmp %l5,0
	be L3938
	ld [%l2+%lo(_fetch_pred_PC)],%o1
L3918:
	ret
	restore
	.align 8
LC365:
	.ascii "help\0"
	.align 8
LC366:
	.ascii "mstate commands:\12\12    mstate help   - show all machine-specific commands (this list)\12    mstate stats  - dump all statistical variables\12    mstate res    - dump current functional unit resource states\12    mstate ruu    - dump contents of the register update unit\12    mstate lsq    - dump contents of the load/store queue\12    mstate eventq - dump contents of event queue\12    mstate readyq - dump contents of ready instruction queue\12    mstate cv     - dump contents of the register create vector\12    mstate rspec  - dump contents of speculative regs\12    mstate mspec  - dump contents of speculative memory\12    mstate fetch  - dump contents of fetch stage registers and fetch queue\12\12\0"
	.align 8
LC367:
	.ascii "stats\0"
	.align 8
LC368:
	.ascii "res\0"
	.align 8
LC369:
	.ascii "ruu\0"
	.align 8
LC370:
	.ascii "lsq\0"
	.align 8
LC371:
	.ascii "eventq\0"
	.align 8
LC372:
	.ascii "readyq\0"
	.align 8
LC373:
	.ascii "cv\0"
	.align 8
LC374:
	.ascii "rspec\0"
	.align 8
LC375:
	.ascii "mspec\0"
	.align 8
LC376:
	.ascii "fetch\0"
	.align 8
LC377:
	.ascii "unknown mstate command\0"
	.align 4
	.proc	0102
_simoo_mstate_obj:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	cmp %i1,0
	be L3941
	mov %i1,%o0
	sethi %hi(LC365),%o1
	call _strcmp,0
	or %o1,%lo(LC365),%o1
	cmp %o0,0
	bne L3940
	mov %i1,%o0
L3941:
	mov %i0,%o0
	sethi %hi(LC366),%o1
	call _fprintf,0
	or %o1,%lo(LC366),%o1
	b L3963
	mov 0,%i0
L3940:
	sethi %hi(LC367),%o1
	call _strcmp,0
	or %o1,%lo(LC367),%o1
	cmp %o0,0
	bne L3943
	mov %i1,%o0
	call _sim_print_stats,0
	mov %i0,%o0
	b L3963
	mov 0,%i0
L3943:
	sethi %hi(LC368),%o1
	call _strcmp,0
	or %o1,%lo(LC368),%o1
	cmp %o0,0
	bne L3945
	mov %i1,%o0
	sethi %hi(_fu_pool),%o0
	ld [%o0+%lo(_fu_pool)],%o0
	call _res_dump,0
	mov %i0,%o1
	b L3963
	mov 0,%i0
L3945:
	sethi %hi(LC369),%o1
	call _strcmp,0
	or %o1,%lo(LC369),%o1
	cmp %o0,0
	bne L3947
	mov %i1,%o0
	call _ruu_dump,0
	mov %i0,%o0
	b L3963
	mov 0,%i0
L3947:
	sethi %hi(LC370),%o1
	call _strcmp,0
	or %o1,%lo(LC370),%o1
	cmp %o0,0
	bne L3949
	mov %i1,%o0
	call _lsq_dump,0
	mov %i0,%o0
	b L3963
	mov 0,%i0
L3949:
	sethi %hi(LC371),%o1
	call _strcmp,0
	or %o1,%lo(LC371),%o1
	cmp %o0,0
	bne L3951
	mov %i1,%o0
	call _eventq_dump,0
	mov %i0,%o0
	b L3963
	mov 0,%i0
L3951:
	sethi %hi(LC372),%o1
	call _strcmp,0
	or %o1,%lo(LC372),%o1
	cmp %o0,0
	bne L3953
	mov %i1,%o0
	call _readyq_dump,0
	mov %i0,%o0
	b L3963
	mov 0,%i0
L3953:
	sethi %hi(LC373),%o1
	call _strcmp,0
	or %o1,%lo(LC373),%o1
	cmp %o0,0
	bne L3955
	mov %i1,%o0
	call _cv_dump,0
	mov %i0,%o0
	b L3963
	mov 0,%i0
L3955:
	sethi %hi(LC374),%o1
	call _strcmp,0
	or %o1,%lo(LC374),%o1
	cmp %o0,0
	bne L3957
	mov %i1,%o0
	call _rspec_dump,0
	mov %i0,%o0
	b L3963
	mov 0,%i0
L3957:
	sethi %hi(LC375),%o1
	call _strcmp,0
	or %o1,%lo(LC375),%o1
	cmp %o0,0
	bne L3959
	mov %i1,%o0
	call _mspec_dump,0
	mov %i0,%o0
	b L3963
	mov 0,%i0
L3959:
	sethi %hi(LC376),%o1
	call _strcmp,0
	or %o1,%lo(LC376),%o1
	cmp %o0,0
	be L3961
	nop
	sethi %hi(LC377),%i0
	b L3963
	or %i0,%lo(LC377),%i0
L3961:
	call _fetch_dump,0
	mov %i0,%o0
	mov 0,%i0
L3963:
	ret
	restore
