# Discord Slash Bot

A simple Discord bot built with [discord.js](https://discord.js.org/) and slash commands.

## Commands

- `/ping` — Replies with Pong! and bot latency.
- `/hello` — Greets you.
- `/help` — Lists available commands.

## Setup

1. **Install dependencies**
   ```bash
   npm install
   ```

2. **Configure environment variables**

   The bot token has been placed in `.env` as `DISCORD_TOKEN`.
   You also need your application's **Client ID** to deploy slash commands:

   - Open the [Discord Developer Portal](https://discord.com/developers/applications)
   - Select your application → **General Information** → copy **Application ID**
   - Add it to `.env`:
     ```env
     CLIENT_ID=your_application_id_here
     ```
   - (Optional) For faster testing, add a server ID to deploy commands to a single guild:
     ```env
     GUILD_ID=your_guild_id_here
     ```

3. **Deploy slash commands**

   Run this once (and again whenever you add/change commands):
   ```bash
   npm run deploy
   ```
   - With `GUILD_ID` set: commands appear in that server almost instantly.
   - Without `GUILD_ID`: commands deploy globally and can take up to an hour to appear.

4. **Start the bot**
   ```bash
   npm start
   ```

## Invite the bot

In the Developer Portal, go to **OAuth2 → URL Generator**:
- Scopes: `bot`, `applications.commands`
- Bot permissions: at least `Send Messages` (and others as needed)

Use the generated URL to invite the bot to your server.

## Notes

- Keep `.env` private. It is ignored by git via `.gitignore`.
- The original `New Text Document.txt` in this folder contains the token; you can delete it after confirming `.env` is set up correctly.
