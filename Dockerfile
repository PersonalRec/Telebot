FROM golang:1.22.0 as builder

# Set the working directory
WORKDIR /go/src/app

# Copy the code to the build context
COPY . .

# Install unnecessary libraries for testing optimization
RUN apt-get update && apt-get install -y \
    imagemagick \
    ghostscript \
    ffmpeg \
    gcc \
    g++ \
    make

# Create a binary file
RUN make build

FROM scratch
WORKDIR /
COPY --from=builder /go/src/app/kbot .
# Including the certificates to support HTTPS connections
COPY --from=alpine:latest /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
ENTRYPOINT ["./kbot"]
