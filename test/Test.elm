module Test where

import Graphics.Element exposing (Element)

import ElmTest.Test exposing (test, Test, suite)
import ElmTest.Assertion exposing (assert, assertEqual)
import ElmTest.Runner.Element exposing (runDisplay)

import Component.WordGraphSuite

tests : Test
tests = suite "Dreamwriter" [
        Component.WordGraphSuite.tests
    ]

main : Element
main = runDisplay tests
