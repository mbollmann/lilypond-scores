
dynamicTextNudgeLeft = { \once \override DynamicText.X-offset = #-0.2 }
dynamicTextNudgeRight = { \once \override DynamicText.X-offset = #0.4 }
forceShiftLeft = { \once \override NoteColumn.force-hshift = #-0.6 }

msBracket = \finger \markup \concat { \draw-line #'(0 . -2) \draw-line #'(1 . 0) }
