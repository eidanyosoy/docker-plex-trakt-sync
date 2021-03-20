FROM python:slim

LABEL maintainer="Emanuel Freitas <emanuelfreitas@outlook.com>"

RUN apt-get update && apt-get install -qq -y git bash && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
      trakt \
      PlexAPI \
      python-dotenv \
      requests-cache && \
    git clone https://github.com/Taxel/PlexTraktSync.git && \
    mv PlexTraktSync/* /

ENTRYPOINT ["python", "-u"]

CMD ["main.py"]