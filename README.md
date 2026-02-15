# homebrew-echonest

Homebrew tap for [EchoNest](https://echone.st) tools.

## Install

```bash
brew tap dbochman/echonest
brew install echonest-sync
```

## Usage

```bash
# First-time setup
echonest-sync login

# Start syncing
echonest-sync
```

## What is echonest-sync?

A CLI agent that syncs your local Spotify playback with an EchoNest server. When someone queues a song on EchoNest, it automatically plays on your Spotify.

For the desktop tray app (with menu bar icon, search, and airhorns), download the `.dmg` or `.exe` from [GitHub Releases](https://github.com/Dbochman/EchoNest/releases).

See the [EchoNest Sync docs](https://github.com/Dbochman/EchoNest/tree/main/echonest-sync/docs) for more details.
