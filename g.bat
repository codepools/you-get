@echo off
::2017��6��5�� 12:06:07 
::you-get�����ļ�


if "%1" == "" (
    echo you-get���ýű�
    echo �÷���
    echo g url
    exit /b 0
    )

set outputdir="R:/����"

::��SB GFW
echo "%1" | findstr /i "youtube vimeo google" && set proxy=--http-proxy 127.0.0.1:4411
you-get --output-dir %outputdir% %proxy% "%*"