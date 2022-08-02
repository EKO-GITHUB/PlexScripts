for %%A in (*.mkv) do if /i "%%~XA"==".mkv" ( 
	echo %%A
	"C:/Program Files/MKVToolNix\mkvmerge.exe" "%%A" -o "ep%%A" --split timecodes:00:12:10.000
)
pause