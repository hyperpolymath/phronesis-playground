# SPDX-License-Identifier: AGPL-3.0-or-later
# Phronesis Playground justfile

default:
    @just --list

# Build the project
build:
    cargo build

# Run tests
test:
    cargo test

# Type check only
check:
    cargo check

# Check ethics specification
ethics-check file:
    cargo run -- check {{file}}

# Verify safety properties
safety-verify file:
    cargo run -- verify {{file}}

# Analyze value specification
values-analyze file:
    cargo run -- analyze {{file}}

# Run audit
audit file:
    cargo run -- audit {{file}}

# Run an example
run example="harm_prevention":
    cargo run -- examples/{{example}}.phr

# Clean build artifacts
clean:
    cargo clean
