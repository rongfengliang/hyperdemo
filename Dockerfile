FROM rust:1.24-stretch as build
WORKDIR /app
COPY . .
RUN cargo build --release

FROM centos
WORKDIR /app
EXPOSE 3000
COPY --from=build /app/target/release/hyperdemo /app/hyperdemo
CMD ["./hyperdemo"]