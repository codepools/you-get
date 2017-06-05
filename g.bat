@echo off
::2017年6月5日 12:06:07 
::you-get配置文件


if "%1" == "" (
    echo you-get配置脚本
    echo 用法：
    echo g url
    exit /b 0
    )

set outputdir="R:/下载"

::操SB GFW
echo "%1" | findstr /i "youtube vimeo google" && set proxy=--http-proxy 127.0.0.1:4411
you-get --output-dir %outputdir% %proxy% "%*"