set shell := ["nu", "-c"]

default:
  cargo fmt --all
  cargo clippy --tests --all
  cargo clippy --tests --features nightly-simd

doc *args:
  cargo rustdoc {{args}} --features nightly-simd -- --cfg docsrs

inspect-asm:
  just inspect-asm/inspect-asm