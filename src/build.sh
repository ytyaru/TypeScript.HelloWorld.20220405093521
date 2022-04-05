#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# tsソースからjsファイルを出力する。
# CreatedAt: 2022-04-05
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$HERE"
	tsc hello-ok.ts
	tsc hello-ng.ts
}
Run "$@"
