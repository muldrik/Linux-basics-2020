#!/bin/sh
test "" != "$(cat "$1" | head -n 1 | grep -E '^issue-[[:digit:]]+')" || {
	echo >&2 "issue-{digits} required at the beginning of commit message"
	exit 1
}
