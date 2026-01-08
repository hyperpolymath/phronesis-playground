# SPDX-License-Identifier: AGPL-3.0-or-later
# config.ncl - Phronesis Playground Configuration
# Type-safe configuration using Nickel
# See: https://nickel-lang.org

{
  # Project metadata
  project = {
    name = "phronesis-playground",
    version = "0.1.0",
    description = "Teaching playground for Phronesis - AI ethics specification",
    license = "AGPL-3.0-or-later",
    author = "Jonathan D.A. Jewell",
    repository = "https://github.com/hyperpolymath/phronesis-playground",
  },

  # Language configuration
  language = {
    name = "Phronesis",
    extension = ".phro",
    paradigm = "declarative",
    focus = "ai-ethics",
    features = [
      "ethical-constraints",
      "safety-properties",
      "value-alignment",
      "audit-trails",
      "formal-verification",
    ],
  },

  # CLI configuration
  cli = {
    runtime = "deno",
    entry_point = "src/main.ts",
    permissions = [
      "--allow-read",
      "--allow-write",
      "--allow-env",
    ],
    commands = [
      "run",
      "check",
      "verify",
      "audit",
      "repl",
    ],
  },

  # Ethics configuration
  ethics = {
    frameworks = [
      "deontological",
      "consequentialist",
      "virtue-ethics",
      "care-ethics",
    ],
    constraint_categories = [
      "harm-prevention",
      "fairness",
      "transparency",
      "accountability",
      "privacy",
    ],
  },

  # Development settings
  development = {
    watch_dirs = [
      "src",
      "examples",
      "test",
    ],
    test_pattern = "test/**/*.test.ts",
    lint_ignore = [
      "node_modules",
      "lib",
    ],
  },

  # Deployment configuration
  deployment = {
    container = {
      enabled = true,
      registry = "ghcr.io/hyperpolymath",
      image = "phronesis-playground",
      base_image = "denoland/deno:alpine",
    },
    platforms = [
      "linux/amd64",
      "linux/arm64",
    ],
  },
}
