@echo off
CLS
title Installing AI Bot...
set PATH=%PATH%;%~dp0
if not exist bot-env (
    echo 'bot-env' folder not found. Installing...
    python -m venv bot-env
    call .\bot-env\Scripts\activate.bat
    pip install curl_cffi fake_useragent httpx asyncio python-dotenv pyYAML requests groq openai colorama discord.py>=2.3.0

    cls

    echo Installed.
)

call .\bot-env\Scripts\activate.bat
echo Starting bot...
title AI Bot
python "main.py"
cmd /k
