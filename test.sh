#!/usr/bin/env bash

function run() {
  2>&1 echo "--------------------------------------------------------------------------------"
  2>&1 printf '$ %s\n\n' "${*}"
  "${@}"
  2>&1 echo "--------------------------------------------------------------------------------"
}

run curl -siH 'Host: hello.example.org' http://localhost:8080

run curl -skiH 'Host: hello.example.org' https://localhost:8443

run curl -siH 'Host: world.example.org' http://localhost:8080

run curl -skiH 'Host: world.example.org' https://localhost:8443
