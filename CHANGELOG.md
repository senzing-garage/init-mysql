# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
[markdownlint](https://dlaa.me/markdownlint/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.6] - 2023-09-30

### Changed in 1.1.6

- In `Dockerfile`, updated FROM instruction to `senzing/senzingapi-runtime:3.7.1`
- In `requirements.txt`, updated:
  - mysql-connector-python==8.1.0

## [1.1.5] - 2023-06-15

### Changed in 1.1.5

- In `Dockerfile`, updated FROM instruction to `senzing/senzingapi-runtime:3.5.3`
- In `requirements.txt`, updated:
  - mysql-connector-python==8.0.33

## [1.1.4] - 2023-04-04

### Changed in 1.1.4

- In `Dockerfile`, updated FROM instruction to `senzing/senzingapi-runtime:3.5.0`
- In `requirements.txt`, updated:
  - mysql-connector-python==8.0.32

## [1.1.3] - 2022-10-27

### Changed in 1.1.3

- In `Dockerfile`, updated FROM instruction to `senzing/senzingapi-runtime:3.3.2`

## [1.1.2] - 2022-10-11

### Changed in 1.1.2

- In `Dockerfile`, updated FROM instruction to `senzing/senzingapi-runtime:3.3.1`

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
