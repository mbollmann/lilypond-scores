\version "2.23.14"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)
#(ly:set-option 'point-and-click #f)

\header {
  title = "Nálady, Dojmy a Upomínky"
  composer = \markup { \caps { Zdeněk Fibich } }
  %opus = "Op.27"
  %copyright = \markup {
  %  \pad-to-box #'(0 . 0) #'(0 . 3)
  %  \line {
  %    "Typeset in 2022 by"
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
  %ragged-last-bottom = ##f
  top-margin = 1\cm
  bottom-margin = 1.5\cm
  footnote-separator-markup = \markup \null
  markup-system-spacing.padding = #2.0
  system-system-spacing.basic-distance = #14
  staff-staff-spacing.basic-distance = #8
  staff-staff-spacing.padding = #2.0
  scoreTitleMarkup = \markup {
    \fill-line {
      \null
      \fontsize #2 \bold \fromproperty #'header:piece
      \fromproperty #'header:opus
    }
  }
}

\layout {
  \context {
    \PianoStaff
    \accepts "Lyrics"
    \consists "Span_stem_engraver"
  }
  \context {
    \Lyrics
    \consists "Bar_engraver"
  }
}

\include "definitions.ily"
%\include "op41-01.ily"
%\include "op41-08.ily"
\include "op41-81.ily"
%\include "op41-125.ily"
