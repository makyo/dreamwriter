module Dreamwriter.Doc (Doc, Chapter, newDoc, newChapter, updateDoc) where

import Dreamwriter (Identifier, newIdentifier)
import Maybe
import String

type Doc =
  { title       : String
  , chapters    : [Chapter]
  }

type Chapter =
  { heading     : String
  }

newDoc : String -> [Chapter] -> Doc
newDoc title chapters =
  { title    = title
  , chapters = chapters
  }

newChapter : String -> Chapter
newChapter heading =
  { heading = heading
  }

updateHeading : String -> Chapter -> Chapter
updateHeading heading chapter = {chapter | heading <- heading}

updateDoc : String -> [String] -> Doc -> Doc
updateDoc title chapterHeadings doc =
  {doc | title <- title,
   chapters <- zipWith updateHeading chapterHeadings doc.chapters
  }

{-| Need to get all this working later
-- Ports --

--fromFile : String -> Date -> String -> Doc
--fromFile fileName lastModified html =
--  _.defaults DreamDoc.fromHtmlStr(html), 
--    title: fileName.replace(/.html$/, '').replace('_', ' ')

-}