# plex-trakt-sync
[![Docker Pulls](https://img.shields.io/docker/pulls/emanuelfreitas/plex-trakt-sync.svg?maxAge=60&style=flat-square)](https://hub.docker.com/repository/docker/emanuelfreitas/plex-trakt-sync)
[![Docker image size](https://img.shields.io/docker/image-size/emanuelfreitas/plex-trakt-sync?style=flat-square)](https://hub.docker.com/repository/docker/emanuelfreitas/plex-trakt-sync)


Docker image for https://github.com/Taxel/PlexTraktSync

A python script that syncs the movies, shows and ratings between trakt and Plex (without needing a PlexPass or Trakt VIP subscription)


You should mount two files (see templates) on "/" in order for it to work. 


Get your trakt authentication info by doing the following steps.

1. Create a trakt application
2. Get the auth information:

```
pip install trakt
python

>>> from trakt import init
>>> import trakt.core
>>> trakt.core.AUTH_METHOD = trakt.core.OAUTH_AUTH  # Set the auth method to OAuth
>>> init('<TRAKT_USERNAME>')
If you do not have a client ID and secret. Please visit the following url to create them.
http://trakt.tv/oauth/applications
Please enter your client id:
Please enter your client secret:

Please go here and authorize, <authorization_url>
Paste the Code returned here:
```