@echo off
CLS
title Installing AI Bot...
set PATH=%PATH%;%~dp0
if not exist bot-env (
    echo 'bot-env' folder not found. Installing...
    python -m venv bot-env
    call .\bot-env\Scripts\activate.bat
    pip install -r requirements.txt

    cls
)

call .\bot-env\Scripts\activate.bat
echo Starting bot...
title AI Bot
python "main.py"
cmd /k
