mod app;
extern crate hyper;
extern crate futures;
use hyper::server::{Http};
fn main() {
  let addr = "0.0.0.0:3000".parse().unwrap();
  let server = Http::new().bind(&addr, || Ok(app::helloword::HelloWord)).unwrap();
  server.run().unwrap();
}
