format PE64 CONSOLE

include 'include/win64axp.inc'

.code

  text TCHAR 'Hello, World!',10
  text_length = ($-text)/sizeof.TCHAR

  start:
        fastcall [GetStdHandle],STD_OUTPUT_HANDLE
        fastcall [WriteFile],rax,addr text,text_length,0,0
        xor      rax,rax
        ret

.end start