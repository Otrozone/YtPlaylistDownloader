#!/bin/bash
# youtube-dl --download-archive downloaded.txt --no-post-overwrites -ciwx --audio-format mp3 -o "%(title)s.%(ext)s" $*
yt-dlp --download-archive downloaded.txt --no-post-overwrites -ciwx --audio-format mp3 -o "%(id)s-%(title)s.%(ext)s" $*
