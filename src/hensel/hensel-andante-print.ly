\version "2.26.0"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\paper {
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
  %left-margin = 0.5\cm
  %right-margin = 0.5\cm
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

% \include "henselt-op36.ily"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Andante cantabile"
  composer = \markup { { Fanny Hensel } }
  opus = "H.424"
  %copyright = \markup {
  %  \pad-to-box #'(0 . 0) #'(0 . 3)
  %  \line {
  %     "Typeset in 2026 by"
  %    \with-color "dodgerblue" {
  %      \with-url "https://github.com/mbollmann/lilypond-scores/" {
  %        "Marcel Bollmann."
  %      }
  %    }
  %    "Released under"
  %    \with-color "dodgerblue" {
  %      \with-url "https://creativecommons.org/licenses/by/4.0/" {
  %        "CC-BY 4.0."
  %      }
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

%{ \markup {
  \footnote "" {
    \pad-to-box #'(0 . 0) #'(0 . 3)
    \wordwrap {
      "This typeset is based on the"
      \concat {
        \with-color "dodgerblue" {
          \with-url
          "https://imslp.org/wiki/Special:ReverseLookup/1048163"
          "manuscript"
        }
        " and "
        \with-color "red" {
          "has not been proofread yet."
        }
        " Released under "
        \with-color "dodgerblue" {
          \with-url "https://creativecommons.org/licenses/by/4.0/" {
            "CC-BY 4.0."
          }
        }
      }
    }
  }
} %}

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
  \key a \minor
  \time 4/4
}


% rit = \markup \italic { rit. }

upperA = {
  \global
  \clef bass
  % \tempo \markup { "Andante" }

  \repeat volta 2 {
    \relative c {
      r16 e a c e b c a \voiceOne r a d f \clef violin \oneVoice a e f d |
      r16 e a c e b c a \voiceOne r b e gis b e, f d ~ |
      \voiceTwo d16 b a gis a4 \voiceOne fis'4 ~ fis8 fis |
      \oneVoice b16 fis g e c g a fis \voiceOne \stemDown \textMark "?" cis \stemNeutral \change Staff = "lower" a b fis \voiceOne gis d e b |
    }
  }
  \relative c' { % Staff = "lower"
    r16 g \change Staff = "upper" \oneVoice c e g d e c r c f a c g a f |
    \voiceOne r16 a d f a e f d es8. d16 c4 |
    \oneVoice es,16 g c es ges d es c ges b es ges a f ges es |
    a,16 dis fis a dis gis, a fis eis bis cis gis eis bis cis gis |
    a8 a'4 d,8 c b b' e, |
    f8 e e' gis, a <ais b>4 b8 |
    c8 cis4 dis8 e4. eis8 ~ |
    eis16 fis b ais eis d g fis d cis fis eis b d cis b ~ |
    b16 ais d cis ais gis cis b gis fis b ais b d, cis b ~ |
    b16 ais cis e g fis e cis' b ais e' cis ais g fis e |
    d16 fis, b d fis cis d b r b e g b fis g e |
    \voiceOne r16 fis b dis fis b, c a r b e g b fis g e |
    f4. e8 f4. g8 |
  }

  \bar "|."
}

upperB = {
  \relative c' {
    s2 g8 f s4 |
    d'8 c r4 a'8 gis b4 |
    \voiceOne e4 r8 \tieDown e8 ~ \voiceTwo e16 cis dis a b4 |
    \voiceOne s2 cis,4 e |
  }
}

lower = {
  \global
  \clef bass

  \relative c {
    <a a,>4 <c c,> <d d,> <f f,> |
    <a a,>4 <c c,> <e e,> <gis, gis,> |
    << { r16 e a c e b c a r fis b dis fis b, c a } \\ { a,4 cis b dis } >> |
    << { g8 e ~ e4 } \\ { e8 g, a c } >> \voiceTwo <b fis'>4 <e e,> |
  }

}

dynamics = {
  s2\f s2 |
}

pedal = {
}

music = \new PianoStaff \with {
    % instrumentName = \markup { \bold "Piano" }
    connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      %\expressive
      \new Voice = "A" { \oneVoice \upperA }
      \new Voice = "B" { \voiceTwo \upperB }
    >>
    \new Dynamics { \dynamics }
    \new Staff = "lower" <<
      \new Voice = "C" { \oneVoice \lower }
      % \new Voice = "D" { \voiceTwo \lowerBass }
    >>
    \new Dynamics { \pedal }
  >>

\score {
    \keepWithTag #'(print original)
    \music
}
