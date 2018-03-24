# Rails on Docker benchmark

## Result

The following uses `bundle exec rails -T` as the benchmark target.

```
docker_sync
1.6715239499999999
osx with mount bundle_path
1.77106776
osx without mount bundle_path
23.5711699
local
2.2361538000000003
```

### Machine spec

- MacBook Pro (13-inch, 2016, Four Thunderbolt 3 Ports)
- Processor 3.3 GHz Intel Core i7
- Memory 16 GB 2133 MHz LPDDR3
- Allow Docker for Mac to use 4 CPUs, 14.0 GiB Memory, 1.0 GiB Swap
- Docker for Mac Version 18.03.0-ce-rc4-mac57 (23360)
- docker-sync 0.5.6

## Requirements

- docker
- docker-compose
- docker-sync

## Usage

Run `bin/bench-all`
