# Coding Style

- Prefer functional style, even in languages that fight it
  - immutability by default
  - use algebraic data types when available
  - instead of conditional branching, map over applicatives/functors/monads
  - prefer composition over inheritance
  - in choosing between OOP and FP, prefer FP.
    - for example use interfaces/traits and structured typing rather than class hierarchies

- Make illegal states unrepresentable
  - Use DB constraints
  - Use the type system
  - Use type hints in languages that don't have a type system

- prefer structural typing over nominal typing

# Architectural Style

- For applications, follow guidelines for [a "12-Factor application"](https://12factor.net/).
- For Restful services, prefer level 4 (HATEOAS) in the Richardson Maturity Model for Rest.

# Python

- Use `uv` instead of `pip`.
- Use `uvx` instead of `pipx`. Don't install something _just_ to run it.
- Use Pydantic for parsing loosely structured data into types - especially at system boundaries (database, request entities, response entities)

