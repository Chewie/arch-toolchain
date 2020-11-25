# Arch-toolchain

A very basic Archlinux image (from `base-devel`) containing packages useful to
build and test C projects, intended to be used as a toolchain image for CI in
projects at EPITA.

In addition, the clang-format representing the EPITA coding style is inserted
at the root of the filesystem. Given the behavior of `clang-format` when
`--style=file` is given, it should search upwards until it finds it on the root
and apply it. This is useful for linting scenarios with the `--dry-run` and
`-Werror` flags.

Note: the criterion package comes for a custom mirror building it from the AUR,
to simplify the process.
