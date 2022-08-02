for %%A in (*.mp4) do if /i "%%~XA"==".mp4" ( 
	echo %%A
	"C:/Program Files/MKVToolNix\mkvmerge.exe" "%%A" -o "ep%%A" --split timecodes:00:10:22.000
)
pause