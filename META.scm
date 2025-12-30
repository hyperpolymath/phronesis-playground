;; SPDX-License-Identifier: AGPL-3.0-or-later
;; META.scm - Project metadata and architecture decisions

(define project-meta
  `((version . "1.0.0")
    (name . "phronesis-playground")
    (architecture-decisions
      ((adr-001
         ((status . "accepted")
          (date . "2025-12-30")
          (context . "Need formal specification language for AI ethics")
          (decision . "Create DSL for ethical constraints and safety properties")
          (consequences . "Machine-readable ethics and auditable AI decisions")))))
    (development-practices
      ((code-style . "rust-standard")
       (security . "openssf-scorecard")
       (testing . "property-based")
       (versioning . "semver")
       (documentation . "asciidoc")
       (branching . "trunk-based")))
    (design-rationale
      ((why-ethics . "AI systems need formal ethical constraints")
       (why-formal . "Provable safety and value alignment")
       (why-dsl . "Domain-specific for ethics specification")))))
