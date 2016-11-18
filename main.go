package main

import "fmt"

func main() {
	setupSQL()

	setupHTTP()

	startService()
}

func setupSQL() {
	fmt.Printf("Setting up SQL...\n")
}

func setupHTTP() {
	fmt.Printf("Setting up HTTP...\n")
}

func startService() {
	fmt.Printf("starting Service...\n")
}
