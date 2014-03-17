#!/usr/bin/env bats

@test "deploy_to directory is created" {
        [ -d /apps/s3zip ]
}

@test "main.go fixture exists" {
        [ -f /apps/s3zip/main.go ]
}

@test "go project gets built" {
        [ -f /apps/s3zip/bin ]
}
