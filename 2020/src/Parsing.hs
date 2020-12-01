module Parsing where

import           Protolude
import           Text.Megaparsec
import           Text.Megaparsec.Char
import           Text.Megaparsec.Char.Lexer (decimal, signed)

type Parser = Parsec Void Text

number :: Parser Int
number = signed (pure ()) decimal

parse' :: Parser a -> Text -> IO a
parse' parser text = case parse parser "" text of
  Right yay -> pure yay
  Left  boo -> putStr (errorBundlePretty boo) >> exitFailure
