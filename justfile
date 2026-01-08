# SPDX-License-Identifier: AGPL-3.0-or-later
# Phronesis Playground - Task Runner
# Run tasks with: just <recipe>

# Default recipe - show help
default:
    @just --list

# ============================================
# BUILD
# ============================================

# Build everything
build:
    @echo "Building Phronesis..."
    cargo build
    @echo "✓ Build complete"

# Build release version
build-release:
    cargo build --release

# Check without compiling
check:
    @echo "Type checking..."
    cargo check
    @echo "✓ Check passed"

# Clean build artifacts
clean:
    @echo "Cleaning build artifacts..."
    cargo clean
    @echo "✓ Clean complete"

# ============================================
# RUN
# ============================================

# Run a Phronesis specification
run spec="harm_prevention":
    cargo run -- examples/{{spec}}.phr

# List available examples
examples:
    @echo "Available examples:"
    @ls -1 examples/*.phr 2>/dev/null | sort

# ============================================
# VERIFICATION
# ============================================

# Check ethics specification
ethics-check file:
    @echo "Checking ethics specification..."
    cargo run -- check {{file}}

# Verify safety properties
safety-verify file:
    @echo "Verifying safety properties..."
    cargo run -- verify {{file}}

# Analyze value specification
values-analyze file:
    @echo "Analyzing value specification..."
    cargo run -- analyze {{file}}

# Run audit
audit file:
    @echo "Running audit..."
    cargo run -- audit {{file}}

# ============================================
# TEST
# ============================================

# Run all tests
test:
    @echo "Running tests..."
    cargo test
    @echo "✓ Tests passed"

# Run tests with output
test-verbose:
    cargo test -- --nocapture

# ============================================
# LINT & FORMAT
# ============================================

# Lint code
lint:
    @echo "Linting..."
    cargo clippy --all-targets --all-features -- -D warnings
    @echo "✓ Lint passed"

# Format code
fmt:
    cargo fmt

# Check formatting (no changes)
fmt-check:
    cargo fmt --check

# ============================================
# DEVELOPMENT
# ============================================

# Full check (lint + format + test)
pre-commit: lint fmt-check check
    @echo "✓ All pre-commit checks passed"

# Watch mode
watch:
    cargo watch -x check

# ============================================
# STATISTICS
# ============================================

# Count lines of code
loc:
    @echo "Lines of Code:"
    @find src -name "*.rs" -exec wc -l {} + 2>/dev/null | tail -1 || echo "  0 total"

# Show project stats
stats:
    @echo "Phronesis Playground Statistics"
    @echo "================================"
    @echo "Source files: $(find src -name '*.rs' 2>/dev/null | wc -l)"
    @echo "Examples: $(ls -1 examples/*.phr 2>/dev/null | wc -l)"
    @echo "Tests: $(find . -name '*_test.rs' 2>/dev/null | wc -l)"
