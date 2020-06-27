#!/usr/bin/env bash
getent group minecraft >/dev/null || groupadd -r minecraft
getent passwd minecraft >/dev/null || \
    useradd -r -g minecraft -d /minecraft-data -s /sbin/nologin \
    -c "service account for minecraft server" minecraft