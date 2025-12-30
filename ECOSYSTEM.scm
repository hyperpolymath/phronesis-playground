;; SPDX-License-Identifier: AGPL-3.0-or-later
;; ECOSYSTEM.scm - Ecosystem positioning

(ecosystem
  (version . "1.0.0")
  (name . "phronesis-playground")
  (type . "language-playground")
  (purpose . "AI ethics and safety specification language")

  (position-in-ecosystem
    ((parent . "language-playgrounds")
     (grandparent . "nextgen-languages")
     (category . "ethics-specification-languages")))

  (related-projects
    ((anvomidav-playground
       ((relationship . "sibling-standard")
        (description . "Formal verification for real-time systems")))
     (oblibeny-playground
       ((relationship . "sibling-standard")
        (description . "Security-critical embedded systems")))
     (ai-safety-research
       ((relationship . "consumer")
        (description . "AI safety teams may use specifications")))))

  (what-this-is
    ("AI ethics specification language"
     "Safety property definitions"
     "Value alignment formalization"))

  (what-this-is-not
    ("General purpose language"
     "AI implementation"
     "Ethics enforcement engine")))
