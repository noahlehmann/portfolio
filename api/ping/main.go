package main

import (
	"net/http"
	"os"
)

func ping(w http.ResponseWriter, req *http.Request) {
	w.WriteHeader(http.StatusOK)
	w.Write([]byte("pong"))
}

func main() {
	port := os.Getenv("PING_PORT")
	if port == "" {
		port = "8080"
	}
	http.HandleFunc("/ping", ping)
	http.ListenAndServe(":"+port, nil)
}
