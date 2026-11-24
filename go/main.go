package main

import (
	"fmt"
	"net"
)

func main() {
	fmt.Println("Start dial")
	conn, err := net.Dial("ip:icmp", "0.0.0.0")
	if err != nil {
		fmt.Println(err)
	}

	conn.Write([]byte("hello from go"))
}
