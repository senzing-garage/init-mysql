# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
[markdownlint](https://dlaa.me/markdownlint/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.1] - 2022-09-28

### Changed in 1.1.1

- In `Dockerfile`, updated FROM instruction to `senzing/senzingapi-runtime:3.3.0`

## [1.1.0] - 2022-09-19

### Added in 1.1.0

- Support for `SENZING_CONFIGURATION_MODIFICATIONS`

## [1.0.1] - 2022-09-09

### Changed in 1.0.1

- Improved documentation
- Removed need for mounted volume

## [1.0.0] - 2022-09-01

### Added to 1.0.0

- Initial functionality for "mandatory" subcommand
    - Create schema
    - Insert initial Senzing configuration
