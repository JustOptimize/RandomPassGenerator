@echo off
setlocal enabledelayedexpansion
set "alp=a A b B c C d D E e f F g G h H I I j J k K l L m M n N p P q Q r R s S t T u U v V w W x X y Y z Z 0 1 2 3 4 5 6 7 8 9"
set "cnt=0"
set "pssw="

set /p "max=Enter password length: "

for %%a in (%alp%) do (
    set "rn.!cnt!=%%a"
    set /a "cnt+=1"
)
for /l %%a in (1,1,!max!) do (
  set /a "rand=!random! %% cnt"
  for %%b in (!rand!) do (
  set "pssw=!pssw!!rn.%%b!"
  )	
)
echo !pssw!| clip