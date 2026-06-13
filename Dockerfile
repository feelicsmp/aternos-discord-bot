FROM golang:1.18-alpine

WORKDIR /app

# expose available environment variables
ENV MTUxNTE5OTQ0NDAyOTgwMDU1MQ.GgNbjI.v4rwUcQmwKtSCxPEWT5zP42K4k-zbv3K4H8OW0=""
ENV yzpzC5BGHEnYzaMwzRJtA4RfSyxGMOGrlOl2Fh50RPwFYrkFTtmygyNz5rxRULKa4NXujz9wSkFhFP2SDGkfRk5v83IP0GBEOiBn=""
ENV feelicsmp.aternos.me:52887=""
ENV mongodb+srv://feelicsmp_db_user:<db_password>@cluster0.nkaqpen.mongodb.net/?appName=Cluster0=""
ENV PROXY=""

# install dependencies
COPY go.mod ./
COPY go.sum ./
RUN go mod download

# copy files
COPY . ./

# build binary
RUN go build -o ./bin/aternos-discord-bot ./cmd/main.go

CMD [ "./bin/aternos-discord-bot" ]
