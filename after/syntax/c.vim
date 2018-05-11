syn     keyword     cType     i8 i16 i32 i64 u8 u16 u32 u64 status_t uint
syn     keyword     cOperator offsetof
syn     keyword     cThreadAnalysis TA_CAP
syn     keyword     cThreadAnalysis TA_GUARDED
syn     keyword     cThreadAnalysis TA_ACQ
syn     keyword     cThreadAnalysis TA_ACQ_BEFORE
syn     keyword     cThreadAnalysis TA_ACQ_AFTER
syn     keyword     cThreadAnalysis TA_REL
syn     keyword     cThreadAnalysis TA_REQ
syn     keyword     cThreadAnalysis TA_EXCL
syn     keyword     cThreadAnalysis TA_RET_CAP
syn     keyword     cThreadAnalysis TA_SCOPED_CAP
syn     keyword     cThreadAnalysis TA_NO_THREAD_SAFETY_ANALYSIS
syn     keyword     cThreadAnalysis __TA_CAPABILITY
syn     keyword     cThreadAnalysis __TA_GUARDED
syn     keyword     cThreadAnalysis __TA_ACQUIRE
syn     keyword     cThreadAnalysis __TA_ACQUIRED_BEFORE
syn     keyword     cThreadAnalysis __TA_ACQUIRED_AFTER
syn     keyword     cThreadAnalysis __TA_RELEASE
syn     keyword     cThreadAnalysis __TA_REQUIRES
syn     keyword     cThreadAnalysis __TA_EXCLUDES
syn     keyword     cThreadAnalysis __TA_RETURN_CAPABILITY
syn     keyword     cThreadAnalysis __TA_SCOPED_CAPABILITY
syn     keyword     cThreadAnalysis __TA_NO_THREAD_SAFETY_ANALYSIS
syn     keyword     cThreadAnalysis FXL_GUARDED_BY
syn     keyword     cThreadAnalysis FXL_PT_GUARDED_BY
syn     keyword     cThreadAnalysis FXL_ACQUIRE
syn     keyword     cThreadAnalysis FXL_ACQUIRED_AFTER
syn     keyword     cThreadAnalysis FXL_ACQUIRED_BEFORE
syn     keyword     cThreadAnalysis FXL_EXCLUSIVE_LOCKS_REQUIRED
syn     keyword     cThreadAnalysis FXL_SHARED_LOCKS_REQUIRED
syn     keyword     cThreadAnalysis FXL_LOCKS_EXCLUDED
syn     keyword     cThreadAnalysis FXL_LOCK_RETURNED
syn     keyword     cThreadAnalysis FXL_LOCKABLE FXL_THREAD_ANNOTATION_ATTRIBUTE__
syn     keyword     cThreadAnalysis FXL_SCOPED_LOCKABLE FXL_THREAD_ANNOTATION_ATTRIBUTE__
syn     keyword     cThreadAnalysis FXL_EXCLUSIVE_LOCK_FUNCTION
syn     keyword     cThreadAnalysis FXL_SHARED_LOCK_FUNCTION
syn     keyword     cThreadAnalysis FXL_ASSERT_EXCLUSIVE_LOCK
syn     keyword     cThreadAnalysis FXL_ASSERT_SHARED_LOCK
syn     keyword     cThreadAnalysis FXL_EXCLUSIVE_TRYLOCK_FUNCTION
syn     keyword     cThreadAnalysis FXL_SHARED_TRYLOCK_FUNCTION
syn     keyword     cThreadAnalysis FXL_UNLOCK_FUNCTION
syn     keyword     cThreadAnalysis FXL_NO_THREAD_SAFETY_ANALYSIS
hi      TrailingWS  ctermbg=red guibg=red
match   TrailingWS  /\s\+$/

hi link cThreadAnalysis Operator
