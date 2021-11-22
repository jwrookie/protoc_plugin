jwtest:
	go install ./cmd/protoc-gen-jwtest/
	ls ./proto/*.proto | xargs protoc --jwtest_out=.