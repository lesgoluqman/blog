@echo off
echo Syncing content from Obsidian...
xcopy "C:\Users\U S E R\Desktop\Library\Blog Posts" "C:\Users\U S E R\Documents\quartz\content" /E /I /Y

echo Building site...
cd C:\Users\U S E R\Documents\quartz
call npx quartz build

echo Publishing to GitHub...
git add .
git commit -m "update blog - %date% %time%"
git push origin main

echo Done! Your blog will be live in 2-3 minutes.
pause