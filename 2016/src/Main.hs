{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
module Main where

import qualified Day13
import qualified Day15
import qualified Day16
import qualified Day17
import qualified Day18
import qualified Day19
import qualified Day21
import qualified Day23
import qualified Day24
import qualified Day25
import           Protolude

main :: IO ()
main = getArgs >>= \case
  ["13"] -> Day13.main
  ["15"] -> Day15.main
  ["16"] -> Day16.main
  ["17"] -> Day17.main
  ["18"] -> Day18.main
  ["19"] -> Day19.main
  ["21"] -> Day21.main
  ["23"] -> Day23.main
  ["24"] -> Day24.main
  ["25"] -> Day25.main
  _      -> putStrLn "I don't know anything about that day." >> exitFailure
