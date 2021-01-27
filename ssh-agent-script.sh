#!/bin/bash

function AgentRun() {
	eval "$(ssh-agent -s)" && ssh-add
}


function KillProcess() {
	for process in $(pgrep ssh-agent)
	do
		echo "Kill process $process" && kill $process
	done
}

function run() {
	if pgrep -x ssh-agent >> /dev/null
	then
		echo "////DROP AGENT PROC////" && KillProcess
	else
		echo "/////RUN AGENT/////" && AgentRun
	fi
}

run
