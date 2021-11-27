#!/usr/bin/env bash

emacs -batch -L . -l ert -l titular-test.el -f ert-run-tests-batch-and-exit
