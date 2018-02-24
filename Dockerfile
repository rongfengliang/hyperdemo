FROM rust:1.24-jessie as build
WORKDIR /app
COPY . .
RUN cargo install

FROM rust:1.24-jessie
WORKDIR /app
EXPOSE 3000
COPY --from=build /root/.cargo/bin/hyperdemo /app/hyperdemo
CMD ["./hyperdemo"]