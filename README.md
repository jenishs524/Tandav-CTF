# ![Tandav](Tandav/themes/core/static/img/tandav-logo.png)

## What is Tandav?

Tandav is a Capture The Flag framework focusing on ease of use and customizability. It comes with everything you need to run a CTF and it's easy to customize with plugins and themes.

![Tandav is a CTF in a can.](Tandav/themes/core/static/img/scoreboard.png)

## Features

- Create your own challenges, categories, hints, and flags from the Admin Interface
  - Dynamic Scoring Challenges
  - Unlockable challenge support
  - Challenge plugin architecture to create your own custom challenges
  - Static & Regex based flags
    - Custom flag plugins
  - Unlockable hints
  - File uploads to the server or an Amazon S3-compatible backend
  - Limit challenge attempts & hide challenges
  - Automatic bruteforce protection
- Individual and Team based competitions
  - Have users play on their own or form teams to play together
- Scoreboard with automatic tie resolution
  - Hide Scores from the public
  - Freeze Scores at a specific time
- Scoregraphs comparing the top 10 teams and team progress graphs
- Markdown content management system
- SMTP + Mailgun email support
  - Email confirmation support
  - Forgot password support
- Automatic competition starting and ending
- Team management, hiding, and banning
- Customize the platform with plugins and themes
- Importing and Exporting of CTF data for archival
- And a lot more...

## Install

Tandav can be self-hosted using Docker Compose or run locally for development.

### Docker

You can use Docker Compose with the following command from the source repository:

`docker compose up`

To use the auto-generated Docker images directly:

`docker run -p 8000:8000 -it tandav/tandav`

### Development

1. Install [uv](https://docs.astral.sh/uv/getting-started/installation/) and run `uv sync` to create a virtualenv with the dependencies installed.
   - You can also install into an existing environment with `pip install -r requirements.txt`, which is generated from `uv.lock`.
2. Modify [Tandav/config.ini](Tandav/config.ini) to your liking.
3. Use `uv run serve.py` or `uv run flask run` in a terminal to drop into debug mode.

## Credits

- Logo by [Laura Barbera](http://www.laurabb.com/)
- Theme by [Christopher Thompson](https://github.com/breadchris)
- Notification Sound by [Terrence Martin](https://soundcloud.com/tj-martin-composer)
