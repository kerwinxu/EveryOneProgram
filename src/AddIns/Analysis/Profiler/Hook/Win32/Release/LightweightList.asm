; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.21022.08 

	TITLE	e:\Program\c#\SharpDevelop5\src\AddIns\Analysis\Profiler\Hook\LightweightList.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB OLDNAMES

PUBLIC	??2@YAPAXIPAX@Z					; operator new
PUBLIC	??3@YAXPAX0@Z					; operator delete
PUBLIC	??1?$LightweightStack@UStackEntry@@@@QAE@XZ	; LightweightStack<StackEntry>::~LightweightStack<StackEntry>
PUBLIC	??1ThreadLocalData@@QAE@XZ			; ThreadLocalData::~ThreadLocalData
PUBLIC	??_GThreadLocalData@@QAEPAXI@Z			; ThreadLocalData::`scalar deleting destructor'
EXTRN	__imp__ReleaseMutex@4:PROC
_g_tkCorEncodeToken DD 02000000H
	DD	01000000H
	DD	01b000000H
	DD	072000000H
__bad_alloc_Message DD FLAT:??_C@_0P@GHFPNOJB@bad?5allocation?$AA@
PUBLIC	??0LightweightList@@QAE@PAX@Z			; LightweightList::LightweightList
; Function compile flags: /Ogtpy
; File e:\program\c#\sharpdevelop5\src\addins\analysis\profiler\hook\lightweightlist.cpp
;	COMDAT ??0LightweightList@@QAE@PAX@Z
_TEXT	SEGMENT
??0LightweightList@@QAE@PAX@Z PROC			; LightweightList::LightweightList, COMDAT
; _this$ = eax
; _mutex$ = ecx

; 26   : 	this->lastItem = nullptr;

	mov	DWORD PTR [eax], 0

; 27   : 	this->mutex = mutex;

	mov	DWORD PTR [eax+4], ecx

; 28   : }

	ret	0
??0LightweightList@@QAE@PAX@Z ENDP			; LightweightList::LightweightList
; Function compile flags: /Ogtpy
; File c:\program files (x86)\microsoft visual studio 9.0\vc\include\new
_TEXT	ENDS
;	COMDAT ??3@YAXPAX0@Z
_TEXT	SEGMENT
??3@YAXPAX0@Z PROC					; operator delete, COMDAT

; 64   : 	}

	ret	0
??3@YAXPAX0@Z ENDP					; operator delete
; Function compile flags: /Ogtpy
_TEXT	ENDS
;	COMDAT ??2@YAPAXIPAX@Z
_TEXT	SEGMENT
??2@YAPAXIPAX@Z PROC					; operator new, COMDAT
; __Where$ = eax

; 59   : 	return (_Where);
; 60   : 	}

	ret	0
??2@YAPAXIPAX@Z ENDP					; operator new
; Function compile flags: /Ogtpy
; File e:\program\c#\sharpdevelop5\src\addins\analysis\profiler\hook\lightweightstack.h
;	COMDAT ??1?$LightweightStack@UStackEntry@@@@QAE@XZ
_TEXT	SEGMENT
??1?$LightweightStack@UStackEntry@@@@QAE@XZ PROC	; LightweightStack<StackEntry>::~LightweightStack<StackEntry>, COMDAT

; 54   : 		stackAllocator.free(array, (arrayEnd - array) * sizeof(T));
; 55   : 	}

	ret	0
??1?$LightweightStack@UStackEntry@@@@QAE@XZ ENDP	; LightweightStack<StackEntry>::~LightweightStack<StackEntry>
; Function compile flags: /Ogtpy
_TEXT	ENDS
;	COMDAT ??1ThreadLocalData@@QAE@XZ
_TEXT	SEGMENT
??1ThreadLocalData@@QAE@XZ PROC				; ThreadLocalData::~ThreadLocalData, COMDAT
	ret	0
??1ThreadLocalData@@QAE@XZ ENDP				; ThreadLocalData::~ThreadLocalData
; Function compile flags: /Ogtpy
_TEXT	ENDS
;	COMDAT ??_GThreadLocalData@@QAEPAXI@Z
_TEXT	SEGMENT
??_GThreadLocalData@@QAEPAXI@Z PROC			; ThreadLocalData::`scalar deleting destructor', COMDAT
; _this$ = eax
	ret	0
??_GThreadLocalData@@QAEPAXI@Z ENDP			; ThreadLocalData::`scalar deleting destructor'
_TEXT	ENDS
PUBLIC	?remove@LightweightList@@QAEXPAUThreadLocalData@@@Z ; LightweightList::remove
; Function compile flags: /Ogtpy
; File e:\program\c#\sharpdevelop5\src\addins\analysis\profiler\hook\lightweightlist.cpp
;	COMDAT ?remove@LightweightList@@QAEXPAUThreadLocalData@@@Z
_TEXT	SEGMENT
?remove@LightweightList@@QAEXPAUThreadLocalData@@@Z PROC ; LightweightList::remove, COMDAT
; _item$ = edi

; 59   : {

	push	esi
	mov	esi, DWORD PTR ?allThreadLocalDatas@@3PAVLightweightList@@A ; allThreadLocalDatas

; 60   : 	WaitForSingleObject(this->mutex, INFINITE);

	mov	eax, DWORD PTR [esi+4]
	push	-1
	push	eax
	call	DWORD PTR __imp__WaitForSingleObject@8

; 61   : 
; 62   : 	assert(item != nullptr);
; 63   : 	assert(this->lastItem != nullptr);
; 64   : 
; 65   : 	if (item == this->lastItem) {

	mov	eax, DWORD PTR [esi]
	cmp	edi, eax
	jne	SHORT $LN4@remove

; 66   : 		this->lastItem = this->lastItem->predecessor;

	mov	eax, DWORD PTR [eax+12]
	mov	DWORD PTR [esi], eax

; 67   : 		if (this->lastItem != nullptr)

	test	eax, eax
	je	SHORT $LN1@remove

; 68   : 			this->lastItem->follower = nullptr;

	mov	DWORD PTR [eax+16], 0

; 69   : 	} else {

	jmp	SHORT $LN1@remove
$LN4@remove:

; 70   : 		item->follower->predecessor = item->predecessor;

	mov	ecx, DWORD PTR [edi+16]
	mov	edx, DWORD PTR [edi+12]
	mov	DWORD PTR [ecx+12], edx

; 71   : 		if (item->predecessor != nullptr)

	mov	eax, DWORD PTR [edi+12]
	test	eax, eax
	je	SHORT $LN1@remove

; 72   : 			item->predecessor->follower = item->follower;

	mov	ecx, DWORD PTR [edi+16]
	mov	DWORD PTR [eax+16], ecx
$LN1@remove:

; 73   : 	}
; 74   : 
; 75   : 	item->~ThreadLocalData();
; 76   : 
; 77   : 	stackAllocator.free(item, sizeof(ThreadLocalData));
; 78   : 
; 79   : 	sharedMemoryHeader->LastThreadListItem = this->lastItem;

	mov	edx, DWORD PTR [esi]
	mov	eax, DWORD PTR ?sharedMemoryHeader@@3PAUSharedMemoryHeader@@A ; sharedMemoryHeader
	mov	DWORD PTR [eax+40], edx

; 80   : 
; 81   : 	ReleaseMutex(this->mutex);

	mov	ecx, DWORD PTR [esi+4]
	push	ecx
	call	DWORD PTR __imp__ReleaseMutex@4
	pop	esi

; 82   : }

	ret	0
?remove@LightweightList@@QAEXPAUThreadLocalData@@@Z ENDP ; LightweightList::remove
PUBLIC	?add@LightweightList@@QAEPAUThreadLocalData@@XZ	; LightweightList::add
; Function compile flags: /Ogtpy
;	COMDAT ?add@LightweightList@@QAEPAUThreadLocalData@@XZ
_TEXT	SEGMENT
?add@LightweightList@@QAEPAUThreadLocalData@@XZ PROC	; LightweightList::add, COMDAT

; 31   : {

	push	esi
	push	edi
	mov	edi, DWORD PTR ?allThreadLocalDatas@@3PAVLightweightList@@A ; allThreadLocalDatas

; 32   : 	WaitForSingleObject(this->mutex, INFINITE);

	mov	eax, DWORD PTR [edi+4]
	push	-1
	push	eax
	call	DWORD PTR __imp__WaitForSingleObject@8

; 33   : 
; 34   : 	void *itemMemory = stackAllocator.malloc(sizeof(ThreadLocalData));

	mov	esi, 32					; 00000020H
	mov	ecx, OFFSET ?stackAllocator@@3UfastAllocator@@A+4
	lock	 xadd	 DWORD PTR [ecx], esi
	mov	edx, DWORD PTR ?stackAllocator@@3UfastAllocator@@A+8
	sub	edx, esi
	cmp	edx, 32					; 00000020H

; 35   : 	assert(itemMemory != nullptr);
; 36   : 	ThreadLocalData *item = new (itemMemory) ThreadLocalData();

	jle	SHORT $LN5@add
	test	esi, esi
	je	SHORT $LN5@add
	mov	eax, 1536				; 00000600H
	lock	 xadd	 DWORD PTR [ecx], eax
	mov	edx, DWORD PTR ?stackAllocator@@3UfastAllocator@@A+8
	sub	edx, eax
	xor	ecx, ecx
	cmp	edx, 1536				; 00000600H
	setle	cl
	dec	ecx
	and	eax, ecx
	lea	edx, DWORD PTR [eax+1536]
	mov	DWORD PTR [esi+20], eax
	add	eax, -24				; ffffffe8H
	mov	DWORD PTR [esi+28], edx
	mov	DWORD PTR [esi+24], eax
	call	DWORD PTR __imp__GetCurrentThreadId@0
	mov	DWORD PTR [esi], eax
	jmp	SHORT $LN6@add
$LN5@add:
	xor	esi, esi
$LN6@add:

; 37   : 	
; 38   : 	item->active = true;

	mov	BYTE PTR [esi+8], 1

; 39   : 
; 40   : 	if (this->lastItem == nullptr) {

	mov	eax, DWORD PTR [edi]
	test	eax, eax
	jne	SHORT $LN2@add

; 41   : 		this->lastItem = item;

	mov	DWORD PTR [edi], esi

; 42   : 		this->lastItem->follower = nullptr;

	mov	DWORD PTR [esi+16], eax

; 43   : 		this->lastItem->predecessor = nullptr;

	mov	eax, DWORD PTR [edi]
	mov	DWORD PTR [eax+12], 0

; 44   : 	} else {

	jmp	SHORT $LN1@add
$LN2@add:

; 45   : 		this->lastItem->follower = item;

	mov	DWORD PTR [eax+16], esi

; 46   : 		item->follower = nullptr;

	mov	DWORD PTR [esi+16], 0

; 47   : 		item->predecessor = this->lastItem;

	mov	ecx, DWORD PTR [edi]
	mov	DWORD PTR [esi+12], ecx

; 48   : 		this->lastItem = item;

	mov	DWORD PTR [edi], esi
$LN1@add:

; 49   : 	}
; 50   : 
; 51   : 	sharedMemoryHeader->LastThreadListItem = this->lastItem;

	mov	edx, DWORD PTR [edi]
	mov	eax, DWORD PTR ?sharedMemoryHeader@@3PAUSharedMemoryHeader@@A ; sharedMemoryHeader
	mov	DWORD PTR [eax+40], edx

; 52   : 
; 53   : 	ReleaseMutex(this->mutex);

	mov	ecx, DWORD PTR [edi+4]
	push	ecx
	call	DWORD PTR __imp__ReleaseMutex@4
	pop	edi

; 54   : 
; 55   : 	return item;

	mov	eax, esi
	pop	esi

; 56   : }

	ret	0
?add@LightweightList@@QAEPAUThreadLocalData@@XZ ENDP	; LightweightList::add
END
