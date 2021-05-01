# Kea Docker Container

[![](https://img.shields.io/github/workflow/status/muhlba91/kea-docker/Release?style=for-the-badge)](https://github.com/muhlba91/kea-docker/actions)
[![](https://img.shields.io/github/release-date/muhlba91/kea-docker?style=for-the-badge)](https://github.com/muhlba91/kea-docker/releases)
[![](https://img.shields.io/docker/v/muhlba91/kea?style=for-the-badge)](https://hub.docker.com/r/muhlba91/kea)

## Usage

```shell
# start the powerdns container
$ docker run --name kea \
  --network host \
  muhlba91/kea
```

## Configuration

Overwrite the config files in `/etc/kea`.

## Contributions

Submit an issue describing the problem(s)/question(s) and proposed fixes/work-arounds.

To contribute, just fork the repository, develop and test your code changes and submit a pull request.
