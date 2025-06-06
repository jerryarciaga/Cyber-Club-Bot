from dotenv import load_dotenv
import os
import discord
from discord.ext import commands

load_dotenv()
DISCORD_TOKEN = os.getenv('DISCORD_TOKEN')

intents = discord.Intents.default()
intents.members = True
intents.message_content = True

description = '''A Discord bot that automates Cybersecurity club functions.'''

bot = commands.Bot(command_prefix='!', description=description,
                   intents=intents)

@bot.event
async def on_ready():
    print(f"Logged in as {bot.user} (ID: {bot.user.id})")
