#!/bin/sh
docker run -it --rm --mount "type=bind,src=`pwd`,target=/my-code" johnnyb61820/linux-assembly
