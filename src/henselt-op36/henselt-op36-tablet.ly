\version "2.25.4"

#(set-default-paper-size "a4")
#(set-global-staff-size 20)

\paper {
  ragged-bottom = ##t
  %ragged-last-bottom = ##f
  left-margin = 0.5\cm
  right-margin = 0.5\cm
  top-margin = 1\cm
  bottom-margin = 1\cm
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

\include "henselt-op36.ily"

\score {
    \music
}
