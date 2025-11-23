# 🤖 Discord AI Bot

A [Python](https://www.python.org)-based Discord bot powered by Groq's Llama-3 models with optional OpenAI support. The bot replies when mentioned, when its trigger word is used, or when continuing an existing conversation. It also supports realistic typing, image responses, and channel scoping so you stay in control of where it talks.

## 🔗 Support + Try out the bot!
If you have any questions, need assistance or want news on updates, please join our dedicated Discord server. You can ask your questions there and leave once you have the help you need, or stay and be part of the community!

You can also try out this project in our server, in the [#italiano](https://discord.com/channels/1269313927150309491/1270821127001866311) channel! Click the image below to join.

[![Discord Banner 2](https://discord.com/api/guilds/1269313927150309491/widget.png?style=banner2)](https://discord.gg/yUWmzQBV4P)

## ✨ Features
-   [x] Standard Discord bot built on `discord.py`
-   [x] Custom AI instructions (edit `config/instructions.txt`)
-   [x] Realistic typing with variable speed
-   [x] Free LLM model via Groq with optional OpenAI key
-   [x] Mention and trigger-word recognition
-   [x] Reply and conversation continuation
-   [x] Image recognition
-   [x] Channel-specific responses via `~toggleactive`
-   [x] Anti-spam and cooldowns
-   [x] Psychoanalysis command `~analyse`
-   [x] Secure credential management using environment variables

## 🤖 Commands
-   pause - Pause the bot from producing AI responses
-   analyse [user] - Analyze a user's message history and provides a psychological profile
-   wipe - Clears history of the bot
-   ping - Shows the bot's latency
-   toggleactive [channelID] - Toggle the current channel to the list of active channels
-   toggledm - Toggle if the bot should be active in DM's or not
-   togglegc - Toggle if the bot should be active in group chats or not
-   ignore [user] - Stop a user from using the bot
-   reload - Reloads all cogs
-   prompt [prompt / clear] - View, set or clear the prompt for the AI
-   restart - Restarts the entire bot
-   shutdown - Shuts down the bot

## 🛠️ Setting up the bot
### 1) Clone the repository
```bash
git clone https://github.com/Najmul190/Discord-AI-Selfbot
cd Discord-AI-Selfbot
```

### 2) Create a Discord bot token
1. Go to the [Discord Developer Portal](https://discord.com/developers/applications) and create an application.
2. Add a **Bot** to the application and copy the bot token.
3. Under **Privileged Gateway Intents**, enable **Message Content Intent** so the bot can read messages.
4. Invite the bot to your server using the OAuth2 URL with the `bot` scope and the permissions you need (send messages at minimum).

### 3) Configure environment variables
Copy the example env file and add your tokens:
```bash
cp config/example.env config/.env
```
Fill `config/.env` with your bot token and API keys.

### 4) Configure bot behavior
Edit `config/config.yaml` to set the prefix, trigger words, DM/group chat support, and other options. You can adjust the bot's personality in `config/instructions.txt`.

### 5) Install dependencies and run
**Windows (with run script):**
- Run `run.bat` to create the virtual environment, install dependencies, and start the bot.

**Manual setup (Windows/Linux/macOS):**
```bash
python -m venv bot-env
source bot-env/bin/activate  # On Windows use bot-env\Scripts\activate
pip install -r requirements.txt
python main.py
```

**Termux (Android):**
```bash
pkg update && pkg upgrade
pkg install git python
git clone https://github.com/Najmul190/Discord-AI-Selfbot
cd Discord-AI-Selfbot
python -m venv bot-env
source bot-env/bin/activate
pip install -r requirements.txt
python main.py
```

## 🗨️ How to talk to the bot
- Use **~toggleactive channelid** to enable the bot in a channel (or run it in a DM if allowed).
- The bot will only respond to other accounts, not itself.
- Set a trigger word in `config.yaml`; the bot replies when mentioned, when the trigger word is used, or when it is already in a conversation.

## 💭 Changing the Personality of the bot
Edit the default instructions in `config/instructions.txt` to customize the bot's behavior.

## ❤️ Donate
If you appreciate this project and want to support its development, feel free to donate by clicking this button!

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/E1E1Q7XEZ)
