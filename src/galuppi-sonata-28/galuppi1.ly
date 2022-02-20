\version "2.23.4"  % necessary for upgrading to future LilyPond versions.

#(set-default-paper-size "a4")
#(ly:set-option 'point-and-click #f)

\header {
  title = "Sonata par il Cembalo"
  opus = "Illy 28"
  composer = "Baldassare Galuppi"
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

\paper{
  %indent = 0.0
  top-margin = 1\cm
  bottom-margin = 1\cm
  %max-systems-per-page = #6
  ragged-bottom = ##t
  system-system-spacing.basic-distance = #14
  footnote-separator-markup = \markup \null

  scoreTitleMarkup = \markup {
      \fill-line {
        \fontsize #1.5 \bold \fromproperty #'header:piece
        \fromproperty #'header:opus
      }
  }
}

orn = \prall
makeBlank = { \omit Staff.TimeSignature \omit Staff.Clef }

\include "galuppi1-mov1.ily"
\include "galuppi1-mov2.ily"
\include "galuppi1-mov3.ily"

\markup {
  \footnote ""
  {
    \pad-to-box #'(0 . 0) #'(0 . 3)
    \wordwrap {
      "This typeset is primarily based on the"
      \concat {
        \with-color "dodgerblue" {
          \with-url
          "https://imslp.org/wiki/Special:ReverseLookup/446610"
          "manuscript"
        }
        ";"
      }
      { note that there is a }
      \with-color "dodgerblue" {
        \with-url
        "https://imslp.org/wiki/Special:ReverseLookup/32789"
        { much improved edition by Giacomo Benvenuti }
      }
      { that I wasn't aware of when making this. }
    }
    \pad-to-box #'(0 . 0) #'(0 . 3)
    \wordwrap {
      "Typeset in 2016 (rev. 2022) by"
      \with-url "https://github.com/mbollmann/lilypond-scores/" {
        "Marcel Bollmann."
      }
      "Released under"
      \with-url "https://creativecommons.org/licenses/by/4.0/" {
        "CC-BY 4.0."
      }
    }
    \vspace #1
  }
}

\firstMovement
\secondMovement
\thirdMovement
