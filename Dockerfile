FROM golang:1.22.0 as builder

# Set the working directory
WORKDIR /go/src/app

# Copy the code to the build context
COPY . .

# Install the dependencies (move it to the Makefile)
# RUN go get

# Create a binary file
RUN make build

FROM scratch
WORKDIR /
COPY --from=builder /go/src/app/kbot .
COPY --from=alpine:latest /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
ENTRYPOINT ["./kbot"]