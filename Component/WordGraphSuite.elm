module Component.WordGraphSuite where

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)

import Component.WordGraph exposing (..)

scaleTests : Test
scaleTests = suite "Component.WordGraph.scale" [
        test "positive: max value"    (assertEqual 18 (scale 10 0 10)),
        test "positive: min value"    (assertEqual 0 (scale 10 0 0)),
        test "positive: middle value" (assertEqual 9 (scale 10 0 5)),

        test "both positive: max value"    (assertEqual 36 (scale 20 10 20)),
        test "both positive: min value"    (assertEqual 18 (scale 20 10 10)),
        test "both positive: middle value" (assertEqual 27 (scale 20 10 15)),

        test "negative: max value"    (assertEqual 0 (scale 0 -10 0)),
        test "negative: min value"    (assertEqual -18 (scale 0 -10 -10)),
        test "negative: middle value" (assertEqual -9 (scale 0 -10 -5)),

        test "both negative: max value"    (assertEqual -18 (scale -10 -20 -10)),
        test "both negative: min value"    (assertEqual -36 (scale -10 -20 -20)),
        test "both negative: middle value" (assertEqual -27 (scale -10 -20 -15)),

        test "mixed: max value"    (assertEqual 9 (scale 10 -10 10)),
        test "mixed: min value"    (assertEqual -9 (scale 10 -10 -10)),
        test "mixed: middle value" (assertEqual 0 (scale 10 -10 0))
    ]

tests : Test
tests = suite "A Test Suite" [
        scaleTests
    ]
