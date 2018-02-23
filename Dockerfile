FROM rust as build
WORKDIR /app
COPY . .
RUN cargo build --release

FROM alpine:latest
WORKDIR /app
EXPOSE 3000
COPY --from=build /app/target/release/hyperdemo /app/hyperdemo
CMD ["./hyperdemo"]