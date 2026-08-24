@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo [LI XINYUE] 正在启动本地服务器 http://localhost:8000/ ...
where python >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8000/
  python -m http.server 8000
  goto :end
)
where py >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8000/
  py -3 -m http.server 8000
  goto :end
)
echo [ERROR] 未找到 Python。请安装 Python 后重试，
echo 或直接把写实模型发给 Codex 内嵌进页面（无需服务器）。
pause
:end
