format PE64 CONSOLE

include 'win64wxp.inc'

.code

  text TCHAR 'Hello, World!',10
  text_length = ($-text)/sizeof.TCHAR

  start:
        fastcall [GetStdHandle],STD_OUTPUT_HANDLE
        fastcall [WriteConsole],rax,addr text,text_length,0,0
        xor      rax,rax
        ret

.end start