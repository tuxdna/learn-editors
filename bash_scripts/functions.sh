#!/usr/bin/env bash

function great {
	local name="Bob"
	echo "Hello $name!"
}

great

echo "Outside the function, name=$name"

