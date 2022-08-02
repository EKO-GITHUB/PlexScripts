@ECHO OFF

FOR %%F IN (*) DO (
	SET filename=%%F
	goto skip
)
:skip

copy /b *.mp3 output.mp3

echo "THIS IS THE FIRST FILE: %filename%"

FOR %%F IN (*.mp3) DO (

	IF NOT "%%F"=="output.mp3" (
		ECHO "DELETED %%F"
		del "%%F"
	)
	
)

ren output.mp3 "%filename%"