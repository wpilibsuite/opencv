@echo off

for %%F in (lib*.so.*) do (
	set libout=%%~nF
	rm -rf %libout%
	echo "OUTPUT_FORMAT(%1)" > %libout%
	echo "GROUP ( %%F )" >> %libout%
)

; run twice to catch .3 case

for %%F in (lib*.so.*) do (
	set libout=%%~nF
	rm -rf %libout%
	echo "OUTPUT_FORMAT(%1)" > %libout%
	echo "GROUP ( %%F )" >> %libout%
	echo "Generated LD link %libout% -> %%F"
)
