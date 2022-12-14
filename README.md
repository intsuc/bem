# <samp>bem</samp>

<samp>bem</samp> provides random access memory and allocator backed by block entities.

## Dependency graph

```mermaid
flowchart TD
  bem_installer
  bem_uninstaller
  bem_allocator --> bem_array
  bem_allocator --> bem_rc
  bem_array --> bem_vec
```
