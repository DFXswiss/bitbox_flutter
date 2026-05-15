package api

import (
	"os"
	"regexp"
	"strings"
	"testing"
)

func TestExportedAPIFunctionsRecoverPanic(t *testing.T) {
	files := []string{"api.go", "bitcoin.go", "ethereum.go", "safety.go"}
	exportRe := regexp.MustCompile(`//export\s+([A-Za-z0-9_]+)\s*\nfunc\s+([A-Za-z0-9_]+)\s*\(`)

	for _, file := range files {
		contentBytes, err := os.ReadFile(file)
		if err != nil {
			t.Fatal(err)
		}
		content := string(contentBytes)
		matches := exportRe.FindAllStringSubmatchIndex(content, -1)
		for i, match := range matches {
			exportName := content[match[2]:match[3]]
			funcName := content[match[4]:match[5]]
			if exportName != funcName {
				t.Fatalf("%s exports %s but declares %s", file, exportName, funcName)
			}

			bodyStart := match[1]
			bodyEnd := len(content)
			if i+1 < len(matches) {
				bodyEnd = matches[i+1][0]
			}
			body := content[bodyStart:bodyEnd]
			if !strings.Contains(body, `defer recoverPanic("`+funcName+`")`) {
				t.Fatalf("%s:%s does not defer recoverPanic", file, funcName)
			}
		}
	}
}
