# Cybersecurity Club Bot
This bot aims to automate functions usually performed by Cybersecurity Club members. This includes:
* CTF Event Announcements
* Information Technology and Cybersecurity News

# Setting up your Discord bot
It has been a while since I set up a new Discord bot. I will provide documentation on how to do so, but most YouTube tutorials and blog posts already have this covered. Stay tuned for more updates!

# Installation and Setup

## Prerequisites
On most Linux distributions, obtaining the following packages is usually a matter of invoking your distro's package manager to install the following tools. This is even easier in NixOS or systems that use Nix as a package manager. I have not tested this on Windows, but if you have, please feel free to make a pull request to update this documentation.

Next, ensure the following programs are installed:
* Python 3.12
* Poetry 2.1.3

## Clone the repository
Clone the repository to your working directory:
```
git clone https://github.com/jerryarciaga/Cyber-Club-Bot
cd Cyber-Club-Bot
```

If you have `nix` installed, running `nix develop` gives you a shell with both Python and Poetry installed.

## Setup Poetry
Run `poetry install` to load up the necessary modules.

# Running the program

## Set up your `.env` file
Make sure you have the bot token generated through the Discord portal. Remember that you only get one chance to copy it to somewhere safe. Otherwise, you will have to regenerate that token.
```
$ cat src/cyber_club_bot/.env

BOT_TOKEN=<put generated token here>
```

## Activate and run the module
To run the program, run the following command in the repository's location:
```
poetry run python -m cyber_club_bot
```
