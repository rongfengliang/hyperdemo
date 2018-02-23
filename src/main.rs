mod app;
extern crate hyper;
extern crate futures;
use hyper::server::{Http};
fn main() {
  let addr = "127.0.0.1:3000".parse().unwrap();
  let server = Http::new().bind(&addr, || Ok(app::helloword::HelloWord)).unwrap();
  server.run().unwrap();
}
