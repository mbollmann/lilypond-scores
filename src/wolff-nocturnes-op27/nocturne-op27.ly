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
  %copyright = \markup {
  %  \pad-to-box #'(0 . 0) #'(0 . 3)
  %  \line {
  %    "Typeset in 2005 (rev. 2022) by"
  %    \with-url "https://github.com/mbollmann/lilypond-scores/" {
  %      "Marcel Bollmann."
  %    }
  %    "Released under"
  %    \with-url "https://creativecommons.org/licenses/by/4.0/" {
  %      "CC-BY 4.0."
  %    }
  %  }
  %}
  tagline = \markup {
    \pad-to-box #'(0 . 0) #'(0 . 3)
    \line {
      "Typeset via"
      \with-color "dodgerblue" {
        \with-url "https://www.lilypond.org/" {
          #(format #f "LilyPond ~a."
            (lilypond-version)
            )
        }
      }
      "Source files available from"
      \with-color "dodgerblue" {
        \with-url "https://github.com/mbollmann/lilypond-scores/" {
          "github.com/mbollmann/lilypond-scores."
        }
      }
    }
  }
}

\paper {
  ragged-last-bottom = ##f
  top-margin = 1\cm
  bottom-margin = 1\cm
  footnote-separator-markup = \markup \null
}

\layout {
  \context {
    \PianoStaff
    \override StaffGrouper.staff-staff-spacing.padding = #2
    \override StaffGrouper.staff-staff-spacing.basic-distance = #12
  }
}

\include "nocturne-op27-1.ily"
\include "nocturne-op27-2.ily"

\markup {
  \footnote ""
  {
    \pad-to-box #'(0 . 0) #'(0 . 3)
    \wordwrap {
      "Based on the score published by Maurice Schlesinger, Paris, ca. 1839"
      "(available from"
      \concat {
        \with-color "dodgerblue" {
          \with-url
          "https://imslp.org/wiki/Special:ReverseLookup/32789"
          "IMSLP"
        }
        ")."
      }
      % { This typeset attempts to reproduce the score faithfully, with minimal editorial changes. }
    }
    \pad-to-box #'(0 . 0) #'(0 . 3)
    \wordwrap {
      "Typeset in 2005 (rev. 2022) by"
      \with-url "https://github.com/mbollmann/lilypond-scores/" {
        "Marcel Bollmann."
      }
      "Released under"
      \with-url "https://creativecommons.org/licenses/by/4.0/" {
        "CC-BY 4.0."
      }
    }
  }
}

\score {
  \firstNocturne
}
\score {
  \header {
    opus = " "
  }
  \secondNocturne
}
