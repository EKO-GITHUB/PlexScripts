FOR /R "%cd%" %%i IN (*.*) DO (
	MOVE "%%i" "%cd%"
)