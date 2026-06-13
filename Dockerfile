FROM golang:1.18-alpine

WORKDIR /app

# expose available environment variables
ENV MTUxNTE5OTQ0NDAyOTgwMDU1MQ.GeaLM-.en39DpnZ9gz-YjfBGikq3QwLsz_Avkgu9Dn9PQ=""
ENV ATERNOS_SESSION=""
ENV feelicsmp.aternos.me:52887=""
ENV MONGO_DB_URI=""
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
