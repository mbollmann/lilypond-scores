\version "2.23.14"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)
#(ly:set-option 'point-and-click #f)

\header {
  title = "Mazurka"
  composer = \markup { \caps { Sergei Bortkiewicz } }
  opus = "Op.12, No.1"
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

global = {
  \key e \minor
  \time 3/4
}

upperA = {
  \global
  \clef treble
  \tempo \markup { "Lento ma non troppo" }

  \relative c''' {
    r4 g( e) |
    r4 g8.( fis16 e4) |
    r8 g8\( b, e g b |
    e2.\) ~ |
    e8 g[\( \acciaccatura { fis16 g } fis8 e g, a] |
    b8[ d \acciaccatura { c16 d } c8 b e, fis] | 
    \voiceOne s4 g4. dis8 |
    dis8[ fis] e\) \oneVoice r8 r4 |
  }
}

upperB = {
  \relative c''' {
    s2.*6 |
    g8[ b,] ~ b[ ais] a4 ~ |
    a4 g8 s4. |
  }
}

% Maybe make these two exchangeable via tags? 
% https://lilypond.org/doc/v2.25/Documentation/notation/using-tags
% – would require marking up these passages in upper too

toTreble = {
  \clef treble
  %\change Staff="upper" \voiceTwo
}

toBass = {
  \clef bass
  %\change Staff="lower" \oneVoice
}

lower = {
  \global
  \clef bass

  \relative c {
    e4 \toTreble <b' e g>( <e g b>) \toBass |
    e,4 \toTreble <ais c g'>( <b e g>) \toBass |
    e,4 \toTreble <b' e g> \toBass d, |
    cis4 \toTreble <b' e g>( <e g b>) \toBass |
    c,4 \toTreble <ais' e' g>( <e' g c>) \toBass |
    b,4 \toTreble <b' e g>( <e g b>) \toBass |
    b,4 b' ~ <b dis> |
    e,4 <b' e>( <b e g>) |
  }

  \bar "|."
}

dynamics = {
  s4^\markup { \italic "dolce" } s\> s\! |
  s4 s\> s\! |
  s16 s\< s8 s4. s8\! |
  s2.*3 |
  s4. s8\> s4 |
  s8 s8\! s2 |
}

expressive = {
  s2.
}

\score {
  \new PianoStaff \with {
    instrumentName = \markup { \bold "Piano" }
    connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      \expressive
      \new Voice = "A" { \oneVoice \upperA }
      \new Voice = "B" { \voiceTwo \upperB }
    >>
    \new Dynamics { \dynamics }
    \new Staff = "lower" \lower
  >>
}
