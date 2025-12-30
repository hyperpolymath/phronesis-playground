;; SPDX-License-Identifier: AGPL-3.0-or-later
;; PLAYBOOK.scm - Operational runbook

(define playbook
  `((version . "1.0.0")
    (project . "phronesis-playground")
    (procedures
      ((build
         (("setup" . "cargo build")
          ("test" . "cargo test")
          ("check" . "cargo check")))
       (verify
         (("ethics" . "cargo run -- check ethics.phr")
          ("safety" . "cargo run -- verify safety.phr")
          ("values" . "cargo run -- analyze values.phr")))
       (run
         (("audit" . "cargo run -- audit system.phr")))))
    (alerts ())
    (contacts ())))
