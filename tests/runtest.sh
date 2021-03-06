#!/bin/bash

INPUT_DATA_PATH="$1"
RESULT_PATH="$2"
BINPATH="$3"
TEST_NAME="$4"
TOL="$5"
ROWS="$6"
COLS="$7"
EXE_NAME="$8"
TEST_ARGS="${@:9:100}"

$BINPATH/$EXE_NAME $TEST_ARGS
$BINPATH/compare_upscaling_results $INPUT_DATA_PATH/reference_solutions/$TEST_NAME.txt $RESULT_PATH/$TEST_NAME.txt $TOL $ROWS $COLS
