FROM rust:1.24-jessie
WORKDIR /app
COPY . .
RUN cargo install
ENTRYPOINT [ "hyperdemo" ]