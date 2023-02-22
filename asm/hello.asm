extrn WriteFile: PROC
extrn GetStdHandle: PROC
.code
text db 'Hello, World!', 10
main proc
  sub  rsp, 38h
  mov  ecx, 0FFFFFFF5h
  call GetStdHandle
  mov  qword ptr [rsp + 20h], 0
  xor  r9d, r9d
  mov  r8d, 14
  lea  rdx, text
  mov  rcx, rax
  call WriteFile
  xor  eax, eax
  add  rsp, 38h
  ret
main endp
end
