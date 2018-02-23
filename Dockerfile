FROM centos
WORKDIR /app
EXPOSE 3000
ADD target/release/hyperdemo /app/hyperdemo
CMD ["./hyperdemo"]