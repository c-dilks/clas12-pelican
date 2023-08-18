# CLAS12 Pelican

**P**reservation of **E**xperimental, **L**anguage **I**ndependent **C**riteria for **An**alysis

## Design

### Criteria
- any language (as long as bindings are provided)
- each criterion should be a class, with the following methods:
  - `Initialize`: called on every new run
    - initialize services, e.g., for a particular run
  - `Process`:
    - parameters: banks
    - reads the banks, connects with services
    - applies the criteria, perhaps in separate `private` method(s)
    - returns filtered bank(s)
  - `Finalize`
    - cleanup
    - preparation for the next run

### Service Singletons
- logger
- database access

### Bindings
- facilitate language-independent access to criteria
- not full independence, but support the most common languages
- use code generation or templates
