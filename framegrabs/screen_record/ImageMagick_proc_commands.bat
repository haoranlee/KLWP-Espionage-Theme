"C:\Users\Hao Ran Lee\Downloads\ffmpeg-20190826-0821bc4-win64-static\ffmpeg-20190826-0821bc4-win64-static\bin\ffmpeg.exe" -i "C:\Users\Hao Ran Lee\Downloads\fui_homescreen\screen_record_20190901_trimmed.mp4" -r 59.725358 "C:\Users\Hao Ran Lee\Downloads\fui_homescreen\framegrabs\screen_record\0_raw\frame_%6d.png"

for /f %f in ('dir /b "C:\Users\Hao Ran Lee\Downloads\fui_homescreen\framegrabs\screen_record\0_raw"') do "C:\Program Files\ImageMagick-7.0.8-Q16\convert.exe" -page 1808x2690+364+162 "C:\Users\Hao Ran Lee\Downloads\fui_homescreen\framegrabs\screen_record\0_raw\%~nf.png" -page 1808x2690+0+0 "C:\Users\Hao Ran Lee\Downloads\fui_homescreen\framegrabs\screen_record\phone_frame_with_background.png" -alpha set -channel RGBA -background none -layers flatten "C:\Users\Hao Ran Lee\Downloads\fui_homescreen\framegrabs\screen_record\1_composited\%~nf.png"

"C:\Users\Hao Ran Lee\Downloads\ffmpeg-20190826-0821bc4-win64-static\ffmpeg-20190826-0821bc4-win64-static\bin\ffmpeg.exe" -framerate 59.725358 -i "C:\Users\Hao Ran Lee\Downloads\fui_homescreen\framegrabs\screen_record\1_composited\frame_%6d.png" -c:v libx264 -pix_fmt yuv420p "C:\Users\Hao Ran Lee\Downloads\fui_homescreen\framegrabs\screen_record\dynamic_preview.mp4"