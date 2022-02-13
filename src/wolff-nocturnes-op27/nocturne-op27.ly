\version "2.23.4"

% NOTE: This piece was originally typeset in 2005 using LilyPond 2.6.0; it
% likely uses many layout hacks that are not good practice anymore in 2022...

#(set-global-staff-size 18)
#(set-default-paper-size "a4")
#(ly:set-option 'point-and-click #f)

\header {
  title = "Deux Nocturnes"
  composer = \markup { \caps { Édouard Wolff } }
  opus = "Op.27"
  tagline = \markup {
    \pad-to-box #'(0 . 0) #'(0 . 3)
    \line {
      "Typeset in 2005 (rev. 2022) by"
      \with-url "mailto:marcel@bollmann.me" {
        "Marcel Bollmann"
      }
      "via"
      \with-url "https://www.lilypond.org/" {
        #(format #f "LilyPond ~a"
           (lilypond-version)
           )
      }
    }
  }
}

\paper {
  ragged-last-bottom = ##t
  top-margin = 1\cm
  bottom-margin = 1.5\cm
}

\layout {
  \context {
    \PianoStaff
    \override StaffGrouper.staff-staff-spacing.padding = #2
    \override StaffGrouper.staff-staff-spacing.basic-distance = #12
  }
}

\include "nocturne-op27-1.ly"
\include "nocturne-op27-2.ly"

\score {
  \firstNocturne
}
\score {
  \header {
    opus = " "
  }
  \secondNocturne
}

\markuplist {
  \vspace #3
  "Based on the score published by Maurice Schlesinger, Paris, ca. 1839, available from IMSLP here:"

  \vspace #0.5
  \override #'(font-family . typewriter) {
    \with-url
    "https://imslp.org/wiki/Special:ReverseLookup/32789"
    "https://imslp.org/wiki/Special:ReverseLookup/32789"
  }
}
