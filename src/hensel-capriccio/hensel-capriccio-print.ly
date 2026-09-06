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
  title = "Capriccio"
  composer = \markup { { Fanny Hensel } }
  opus = "H.349"
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

\markup {
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
  \key d \major
  \time 4/4
}


% rit = \markup \italic { rit. }

upper = {
  \global
  \clef treble
  \tempo \markup { "Andante" }

  \relative c'' {
    % \once \override PhrasingSlur.height-limit = #6
    fis2 e8 d cis\turn d16 b |
    b4 ais2 ~ ais8 b |
    <cis g'>2 fis8 e dis\turn e16 cis |
    \voiceOne e4 dis r2 |
    b'4. b8 a g fis g16 e |
    e8 cis d4 \oneVoice r8 fis <e ais> <fis b> |
    << { d'4 cis8 b } \\ gis2 >> ais8 b cis, d | % [p1, r2]
    <d fis,>2 ~ <cis fis,>8 <cis ais fis> <d b fis> <e cis e,> |
    <fis d b d,>2 << { e8 d cis d16 b } \\ { b8 a g fis } >> |
    <b e, cis>4 <ais e cis> r8 <cis ais g>8 <d b fis> <e cis e,> |
    <fis d b d,>2 << { e8 d cis d16 b } \\ { b8 a g fis } >> |
    <fis' d b fis>4 <eis d b eis,> r8 <gis, e>8 <a fis> <b gis> |
    <cis a fis>4 r16 <a' cis, a>16 <eis cis a> <fis cis a> <fis d a>4 r16 <a d, a>16 <eis d a> <fis d a> |
    <fis cis a>4 r16 <a cis, a>16 <eis cis a> <fis cis a> <fis d a>4 r16 <a d, a>16 <eis d a> <fis d a> | % [p1, r3]
    r16 \textMark "?" <c' fis, c>8 <b fis b,> <ais fis ais,> <a fis a,>16 r16 <g b, g>8 <fis b, g> <dis b g> <e b g>16 |
    r16 <es' a, es>8 <d a d,> <cis a cis,> <c a c,>16 ~ q16 <b d, b>8 <a d, b> <fis d b> <g d b>16 |
    r16 <b e, b>8 <a e b> <fis e b> <g e b>16 ~ q16 <b eis, b>8 <d eis, b> <cis eis, b> <b eis, b>16 |
    {
      \set beamExceptions = #'()
      \set beatBase = #1/8
      \set beatStructure = 1,1,1,1,1,1,1,1
      ais32^\markup \italic { leggiero } fis g cis, e ais, cis g ais e g cis, \stemUp e ais, cis \change Staff="lower" g \allowBreak
      \stemNeutral \voiceOne ais g e cis ais cis e g ais cis \change Staff="upper" \oneVoice e g ais cis e g |
      \appoggiatura fis16 fis'32 d e cis d b cis ais b fis g eis fis cis b ais \allowBreak
      b fis d b \change Staff="lower" \voiceOne fis d b d fis b \change Staff="upper" \oneVoice d fis b d fis b | % [p2, r1]
      \appoggiatura d,16 d'32 b cis ais b fisis gis cis, d ais b fisis gis d e cis \allowBreak
      \stemUp d \change Staff = "lower" \voiceOne b gis eis \stemNeutral d b gis eis gis b d eis gis b \change Staff = "upper" \oneVoice d eis | 
      d'32 b gis eis \stemUp d \change Staff = "lower" \voiceOne b gis eis \stemDown gis b \change Staff = "upper" \oneVoice \stemDown d eis gis b d eis \stemNeutral \allowBreak
      \voiceOne fis2 |
      \unset beamExceptions
      \unset beatBase
      \unset beatStructure
    }
    e8 d cis d16 b b4 ais ~ |
    ais8 b eis, fis g4. fis8 |
    e8 d cis \times 2/3 { e16 d b } b4 ~ b16 ais e' cis |
    b32[^\markup \italic { "ad libitum" } ais g' e] d[ cis cis' a] g[ fis e' cis] b[ a cis e] \allowBreak % [p2, r2]
    g8[ eis]\fermata eis[ fis] |
  } 
  \bar "||"

  \tempo \markup { "Allegro molto" }
  \relative c'' {
    \repeat unfold 2 {
      fis16_> d e b d a cis g b fis a e g d fis cis |
      eis16 cis fis cis <g' e>-> cis, <fis e> cis <g' e>-> cis, <fis e> cis <g' e>-> cis, <fis e> cis |
    }
  }
  \tag #'original {
    \relative c' {
      r16 d <fis b> d <fis ais> d <fis b> d <g d'> e g e <g cis> e <g ais> e | % [p2, r3]
      r16 d <fis b> d <fis ais> d <fis b> d <g d'> e g e <g cis> e <g ais> e |
      r16 d <fis b> d <fis ais> d <fis b> d fis' g, b g e' g, d' bes |
    }
  }
  \tag #'edition {
    \relative c'' {
      << { r8 b8 ais b d4 cis8 ais } \\ { r16 d, fis d fis d fis d g e g e g e g e } >> | % [p2, r3]
      << { r8 b'8 ais b d4 cis8 ais } \\ { r16 d, fis d fis d fis d g e g e g e g e } >> |
      << { r8 b'8 ais b fis'4 e8 d } \\ { r16 d, fis d fis d fis d fis'16 g, b g e' g, d' bes } >> |
    }
  }
  \relative c'' {
    d16 a d a e' a, cis a d a fis d fis a d fis |
    \voiceOne a16 fis g d fis d e cis d a cis g bes g a e |
    \oneVoice gis16 e a e <g bes>-> e <g a> e <g bes>-> e <g a> e <g bes>-> e <g a> e | % [p3, r1]
    \voiceOne a'16 fis g d fis d e cis d a cis g bes g a e |
    \oneVoice gis16 e a e <g bes>-> e <g a> e <g bes>-> e <g a> e <g bes>-> e <g a> e |
  }
  \tag #'original {
    \relative c' {
      r16 fis <a d> fis <a cis> fis <a d> fis fis' g, bes g <bes e> g bes e, |
      r16 fis <a d> fis <a cis> fis <a d> fis fis' g, bes g <bes e> g bes e, |
      r16 fis <a d> fis <a cis> fis <a d> fis a' bis, a' bis, gis' bis, fis' bis, | % [p3, r2]
    }
  }
  \tag #'edition {
    \relative c'' {
      << { r8 d8 cis d fis4 e8 bes } \\ { r16 fis a fis a fis a fis fis' g, bes g bes g bes e, } >>
      << { r8 d'8 cis d fis4 e8 bes } \\ { r16 fis a fis a fis a fis fis' g, bes g bes g bes e, } >>
      << { r8 d'8 cis d } \\ { r16 fis, a fis a fis a fis } >> a' bis, a' bis, gis' bis, fis' bis, | % [p3, r2]
    }
  }
  \relative c'' {
    fis16 cis fis cis gis' cis, eis cis fis cis a fis cis a cis fis |
    a16_> c, a' c, g' c, fis c g' e b g b e g b |
    e16_> g, e' g, d' g, cis g d' b fis d fis b d fis |
    b16 b, d' b, cis' b, b' b, a' b, g' b, fis' b, eis b |
    fis'16 ais, cis fis, d' fis, eis' b fis' ais, cis fis, d' fis, e' b |
    fis'16 ais, cis fis, d' fis, eis' b fis' cis ais fis cis fis ais cis | % [p3, r3]
    fis16 a, c a fis' a, fis' a, fis' a, e' a, cis e, a e |
    fis'16 a, c a fis' a, fis' a, fis' a, e' a, cis e, a e |
    a'16 a, c a a' c, a' c, a' c, g' b, fis' a, e' b |
    d16 a dis a e' a, eis' a, fis' d a fis d fis a d |
    a'16 a, c a a' c, a' c, a' c, g' b, fis' a, e' b | % [p4, r1]
    d16 a dis a e' a, fis' a, g' a, e' a, dis a cis a |
  }
  \relative c'' {
    \voiceOne <d fis,>8 q q q <d g,> <cis g> <d g,> <e g,> |
    <fis fis,>8 <d fis,> q q <d g,> <cis g> <d g,> <e g,> |
    <fis fis,>8 <cis fis,> <d fis,> <e fis,> <fis bis,> <eis bis> <fis bis,> <gis bis,> |
    <a cis,>8 <cis cis,> <b cis,> <a cis,> q <gis cis,> <fis cis> <eis cis> |
    <fis a,>8 q q q <fis b,> <eis b> <fis b,> <gis b,> | % [p4, r2]
    <a a,>8 <fis a,> q q <fis b,> <eis b> <fis b,> <gis b,> |
    <a a,>8 <fis a,> q q q q q q |
    <fis a,>8 <eis a,> <fis a,> <eis a,> <fis a,> <a a,> <g a,> <fis a,> |
    <g g,>8 <e g,> q q q q q q |
    <e g,>8 <dis g,> <e g,> <dis g,> <e g,> <g g,> <fis g,> <e g,> |
    <fis fis,>8 <d fis,> q q <d g,> <cis g> <d g,> <e g,> |
    <fis fis,>8 <cis fis,> \appoggiatura e16 <d fis,>8 <cis fis,> <d g,> <cis g> <d g,> <e g,> | % [p4, r3]
    <fis fis,>8 <d fis,> q r <a' fis,> fis, fis r |
    <fis d'>8 fis fis r \oneVoice d-! fis-! a-! d-! |
  }
  \relative c'' {
    \repeat unfold 2 {
      fis16 d e b d a cis g b fis a e g d fis cis |
      eis16 cis fis cis <e g> cis <e fis> cis <e g> cis <e fis> cis <e g> cis <e fis> cis |
    } % [p5, r1]
    \repeat unfold 2 { r16 d <fis b> d <fis ais> d <fis b> d <g d'> e g e <g cis> e <g ais> e | }
    r16 d <fis b> d <fis ais> d <fis b> d fis' g, b g e' g, d' bes |
    d16 a d a e' a, cis a d a fis d fis a d fis |
  }
  \relative c''' {
    \voiceOne a16 fis g e fis c e b dis a c g b fis a dis, | % [p5, r2]
    \oneVoice g16 e <fis a> e <g ais> e <g b> e <g ais> e <g b> e <g ais> e <g b> e |
    \voiceOne b''16 gis a fis gis d fis cis eis b d a cis gis b eis, |
    \oneVoice a16 fis <gis b> fis <a bis> fis <a cis> fis <a bis> fis <a cis> fis <a bis> fis <a cis> fis |
    r8 <fis a d> <fis a cis> <fis a d> <fis bes fis'>4 <e e'>8 bes' |
    a8 <fis a d> <fis a cis> <fis a d> <fis bes fis'>4 <e e'>8 bes' |
    a8 <fis a d> <fis a cis> <fis a d> \grace { fis16[ c' dis] } a'16 dis, c fis, r fis a c | % [p5, r3]
    fis16 c a dis, r dis fis a dis a fis dis r dis fis a |
    g8 <g b e> <g b dis> <g b e> <a c g'>4 <a c fis>8 dis |
    <g, b>8 <g b e> <g b dis> <g b e> <a c g'>4 <a c fis>8 dis |
    <g, b>8 <g b e> <g b dis> <g b e> \grace { g16[ c e] } bes'16 e, c g r g bes des |
    g16 des bes e, r e g bes e bes g e r e g bes |
  }
  \key g \minor
  \relative c'' {
    as8 <as c f> <as c e> <as c f> <as des as'>4 <g des' g>8 e' | % [p6, r1]
    <as, c>8 <as c f> <as c e> <as c f> <as des as'>4 <g des' g>8 e' |
    <as, c>8 <as c f> <as c e> <as c f> \textMark "?" <des as' f'>4-! <c e c'>-! |
    <bes f' bes>4-! <as c as'>-! <g des' g>-! <f as f'>-! |
    \voiceOne <e g e'>8 <e c'> q q q <e bes'> <e c'> <e d'> |
    <e e'>8 <e c'> q q q <e bes'> <e c'> <e d'> |
    <es es'>8 <es c'> q q q <es b'> <es c'> <es d'> |
    <g es'>8 <g c> <g b> <g c> <a a'> <a es'> <a d> <a c> | % [p6, r2]
    \oneVoice \stemUp
    <g bes>8 <g g'> q q q <g fis'> <g g'> <g a'> |
    <g bes'>8 <g g'> q q q <g fis'> <g g'> <g a'> |
    <g bes'>8 <g g'> q q q <g fis'> <g g'> <g a'> |
    <bes bes'>8 <bes g'> <bes fis'> <bes g'> \stemNeutral \textMark "?" <es e'> <es bes'> <es a> <es g> |
    <f d'>8 <a c> <f es'> <es f> <c a'> <a c> <f es'> <es f> |
    <c es a>4-! <bes d bes'>-! <c g' c>-! <cis g' cis>-! |
    <d f d'>8-! <a'' c>[ <f es'> <es f>] <c a'> <a c> <f es'> <es f> | % [p6, r3]
    <a, c a'>4-! <bes d bes'>-! <c g' c>-! <cis g' cis>-! |
    <d g bes d>2. <bes' d g>4-! |
    <a c fis>4-! <g bes es>-! <f a d>-! <e g cis>-! |
    <es fis c'>4-! <d g bes>-! <c es a>-! <bes d g>-! |
    <a c g'>2-> <a c fis>-> |
  }
  \relative c'' {
    \appoggiatura d16 \voiceOne d'16 bes c a bes g a f g d bes g bes d g bes |
    d16 bes c a bes g a f g d bes g bes d g bes | % [p7, r1]
    d16 b c a b g a fis g d b g b d g b |
    d16 b c a b g a fis g d b g b d g b |
  }
  \key d \major
  \relative c''' {
    d16 b c a b f a e gis d f c e b d a |
    \oneVoice c16[ a r a] b[ f r f] a[ e r e] gis[ d r d] |
    \appoggiatura e'16 \voiceOne e'16 c d b c a b gis a e c a c e a c | % [p7, r2]
    e16 c d b c a b gis a e c a c e a c |
    e16 cis d b cis g b fis ais e g d fis cis e b |
    \oneVoice \stemUp d16[ b r b] cis16[ g r g] b16[ fis r fis] ais16[ e r e] |
    fis'[^\markup { \italic { ritard. } } fis, r fis] fis'[ e, r e] fis'[ d, r d] fis'[ cis, r cis] |
    fis'^>[ b,, r b] eis'[ b, r b] d'[ b, r b] b'[ b, r b] \stemNeutral | % [p7, r3]
    ais'16^\markup { \italic { "a tempo" } } e cis ais r4 r4 cis16 e g ais |
    cis16 ais g e r4 r4 g16 ais cis e |
    \voiceOne g16 e cis ais r4 r4 cis16 e g ais |
    cis16 ais g e r4 r4 g16 ais cis e | % [p8, r1]
    g16 e cis ais r4 g16 e cis ais r4 |
    g16 e cis ais r4 g'16 e cis b \change Staff = "lower" g e cis b |
    ais16 cis e fis ais cis \change Staff = "upper" e fis g e cis \change Staff = "lower" ais g e cis b |
    ais16 cis e fis ais \change Staff = "upper" b e fis g e cis \change Staff = "lower" ais g e cis b |
    ais16 cis e fis g e r8 ais16 g r8 cis16 ais r8 |
    \change Staff = "upper" e'16 cis r8 g'16 e r8 ais16 g r8 cis16 ais r8 | % [p8, r2]
    \repeat unfold 2 {
      \oneVoice <d fis>16 b <cis e> g <b d> fis <ais cis> e <fis b> d <fis ais> c <e g> b <d fis> b |
      <d eis>16 b <d fis> b <d g> b <cis fis> ais <d g> b <cis fis> ais <d g> b <cis fis> ais |
    } % [p8, r3]
    \repeat unfold 2 {
      r16 d <fis b> d <fis ais> d <fis b> d <g d'> e g e <g cis> e <g ais> e |
    }
    r16 d <fis b> d <fis ais> d <fis b> d \textMark "?" <g d' g>4 <fis d' fis> |
    <e bes' e>4 <d a' d> <cis g' cis> <bes e g bes> |
    r16 e <g a> e <g as> e <g a> e << { e'4 d8 bes } \\ { g16 e g e g e g e } >> | % [p9, r1]
    r16 e <g a> e <g as> e <g a> e << { e'4 d8 bes } \\ { g16 e g e g e g e } >> |
    r16 e <g a> e <g as> e <g a> e \voiceOne <cis' e cis'>4 <d fis d'> |
    <ais cis ais'>4 <b d b'> <fis ais fis'> <g b g'> |
    \oneVoice <dis fis dis'>4 <e g e'> <cis e cis'> <dis fis dis'> |
    <ais cis ais'>4 <b d b'> <d fis d'> <e fis ais> |
    <d fis b>2 ~ q8 <d fis d'> <d fis ais> <d fis b> |
    <d g b>2 ~ q8 <d g d'> <d g ais> <d g b> | % [p9, r2]
    <d fis b>2 ~ q8 <fis b fis'> <fis b e> <fis b d> |
    \textMark "?" <eis fis d'>2 ~ q8 <eis fis cis'> <eis fis eis'> <eis fis ais> |
    r8 <d fis b>4 q8 ~ q <d fis d'> <d fis ais> <d fis b> |
    r8 <d g b>4 q8 ~ q <d g d'> <d g ais> <d g b> |
    r8 <d fis b>4 q8 ~ q <fis b fis'> \textMark "?" <fis b e> <fis b d> |
    r8 <eis fis d'>4 q8 ~ q <eis fis cis'> <eis fis eis'> <es fis ais> |
    <d fis b>8 <g ais> <fis b> <ais cis> <b d> <b dis> <b e> <b cis eis> |
    <b d fis>4 <b d b'>-! <cis g' b>-! <cis fis ais>-! | % [p9, r3]
    <d fis b>8 <g, ais> <fis b> <ais cis> <b d> <b dis> <b e> <b cis eis> |
    <b d fis>4 <b d b'>-! <cis g' b>-! <cis fis ais>-! |
    r4 <b, d b'>-! <cis g' b>-! <cis fis ais>-! |
    \change Staff = "lower" \voiceOne r4 <d, b'> <cis g' b>^\markup { \italic "ritard." } <cis fis ais> |
    \change Staff = "upper" \oneVoice
  }
  \relative c'' {
    fis16^\markup { \italic "a tempo" } d e b d a cis g b fis a e g d fis cis |
    eis16 cis fis cis <e g> cis <e fis> cis <e g> cis <e fis> cis <e g> cis <e fis> cis |
    fis'16 d e b d a cis g b fis a e g d fis cis |
    eis16 cis fis cis <e g> cis <e fis> cis <e g> cis <e fis> cis <e g> cis <e fis> cis |
    % [p10, r1]
    <g' b>16 e <g ais> e <g b>16 e <g ais> e <ais d> g <ais cis> g <ais d> g <ais cis> g |
    <cis g'>16 ais <cis fis> ais <cis g'>16 ais <cis fis> ais <e' b'>16 cis <e ais> cis <e b'> cis <e ais> cis |
    <g' fis'>16 e <g e'> e <e b'> cis <e ais> cis <cis g'> ais <cis fis> ais <ais e'> g <ais d> g |
    <g d'>16 e <g cis> e <g b> e <g ais> e <g e'> e < g cis> e <g b> e <g ais> e | % [p10, r2]
  }
  \relative c' {
    \repeat unfold 2 { % orig: volta
      \voiceOne <d b'>8 q q q <e b'> <e ais> <e b'> <e cis'> |
      <d d'>8 <d b'> q q <e b'> <e ais> <e b'> <e cis'> |
      <d d'>8 <d ais'> <d b'> <d cis'> <g d'> <g dis'> <g e'> <g eis'> |
      <fis fis'>8 q <fis e'> <fis d'> <g d'> <g cis> <g e'> <g ais> |
    }
    \repeat unfold 2 { % orig: volta
      <d b'>8 q q q b'8 b b b |
      <dis, c'>8 <dis b'> <dis c'> <dis b'> <dis c'>8 <dis b'> <dis c'> <dis b'> | % [p10, r3]
      <e cis'>8 <e b'> <e cis'> <e b'> <e cis'> <e b'> <e cis'> <e b'> |
      <e d'>8 <e cis'> <e d'> <e cis'> <e e'> <e cis'> <e b'> <e ais> |
    }
    <d b'>8 <d ais'> <d cis'> <d b'> <e d'> <e cis'> <e e'> <e ais> |
    <d b'> <d ais'> <d cis'> <d b'> <e d'> <e cis'> <e e'> <e ais> |
    \oneVoice r16 <d fis b>8 q q q16 ~ q q8 q q q16 |
    r16 <b d b'>8 q <b dis b'>8 q16 ~ q <b e b'>8 q <b eis b'> q16 |
    <b d fis b>8 \voiceOne r16 b''8 fis d8 b8 fis d \change Staff = "lower" b16 ~ |
    b16 fis8 d b fis16 r4 <cis' e ais>4 |
    <d fis b>4 r4 \change Staff = "upper" \oneVoice <ais'' e' fis ais>4 r4 |
    <b d fis b>4 r4 % [end]
  }

  \bar "|."
}

middle = {
  \relative c'' {
    s1 |
    s1 |
    s1 |
    c4. c8 b a g a16 fis |
    fis8 dis e4. b8 e g |
    b4. \change Staff = "lower" \voiceOne fis8 e d cis d16 b |
    b4 cis8 d cis b ais b | % [p1, r2]
    % [... not using this for the rest of the piece ...]
  }
}

lower = {
  \global
  \clef bass

  % Andante
  \relative c' {
    s1 |
    fis2 e8 d cis\turn d16 b |
    << { e2 fis8 g fis g } \\ ais,1 >> |
    <a fis'>1 |
    g1 |
    fis1 |
    \voiceTwo eis1 | % [p1, r2]
    \oneVoice <fis b>2 ~ <fis ais>8 <e e'> <d d'> <cis cis'> |
    <b b,>8 fis' b d g fis e d |
    <fis,, fis,>8 fis' cis' g' fis e d cis |
    <b, b,>8 fis' b d g fis e d |
    <cis, cis,>8 gis' b d cis b a gis |
    \stemDown <a, a,>8 fis' a cis <b, b,> fis' a d |
    <cis, cis,>8 fis a cis <d, d,> fis a d | % [p1, r3]
    <dis, dis,>8 fis b dis <e, e,> g b e |
    <fis, fis,>8 a d fis <g, g,> b d g |
    <g, g,>8 b e g <g, g,> b d g \stemNeutral |
    <fis fis,>4 \voiceTwo <fis,, fis,>2. |
    \oneVoice <fis' b d f>4 \voiceTwo <fis, fis,>2. | % [p2, r1]
    \oneVoice \textMark "?" <fis' gis cis gis'>4 \voiceTwo <fis, fis,>2. ~ |
    <fis fis,>2 \change Staff = "upper" r8 d''' b a |
    g8 fis e eis fis cis fis eis |
    e8 d cis b ais eis' d b \change Staff = "lower" \oneVoice |
    g8 fis e eis fis4 fis, ~ |
    fis1\fermata | % [p2, r2]
  }

  % Allegro molto
  \relative c {
    \repeat unfold 2 {
      \stemUp <b b,>8-> \stemDown g''[ fis e] d cis b ais |
      fis, <fis' ais> q-> q q-> q q-> q |
    }
    \stemNeutral b,8 <fis' b> q q <b, e g b>2 | % [p2, r3]
    b8 <fis' b> q q <b, e g b>2 |
    b8 <fis' b> q q << { r4. g'8 | fis8 fis g e fis4 } \\ { <g, g,>2 | a2 d4 } >> r4 |
    <d, d,>8 \change Staff = "upper" \voiceTwo bes'' a g fis e d cis |
    \change Staff = "lower" \oneVoice a,8 <a' cis> q q q q q q | % [p3, r1]
    <d, d,>8 \change Staff = "upper" \voiceTwo bes'' a g fis e d cis |
    \change Staff = "lower" \oneVoice a,8 <a' cis> q q q q q q |
    d,8 <a' d> q q <d, bes' d>4. cis'8 |
    d,8 <a' d> q q <d, bes' d>4. cis'8 |
    d,8 <a' d> q q << { fis'4 gis8 a } \\ d,2 >> | % [p3, r2]
    \clef treble << { a'8 a b gis a4 } \\ { cis,2 fis4 } >> r4 \clef bass |
    dis,,8-> <dis' fis> <dis g> <dis a'> <e g>4 r |
    <ais ais,>8-> <ais cis> <ais d> <ais e'> <b d>4 r |
    <g g,>8 <g d' g> q q q q q q |
    << { cis8 ais b d cis ais b d | cis ais b d } \\ { fis,2 fis | fis } >> <fis cis'>4 r | % [p3, r3]
    <fis c' fis>4 q8 q <g a cis e>4 r |
    <fis c' fis>4 q8 q8 <g cis e>4 r |
    <fis dis'>4 q8 q << { dis'8 e fis g | fis bis, cis a } \\ { g2 | a2 } >> d4 <d, d,>8 r |
    <fis dis'>4 q8 q << { dis'8 e fis g | fis bis, cis dis e g fis e } \\ { g,2 | a1 } >> | % [p4, r1]
  }
  \relative c' {
    \change Staff = "upper" \voiceTwo r16 <d a'>8 q q q16 ~ q <d bes'>8 q q q16 |
    r16 <d a'>8 q q q16 ~ q <d bes'>8 q q q16 |
    r16 <d a'>8 q q q16 ~ q q8 q q q16 |
    r16 <cis a'>8 q q q16 ~ q <cis b'>8 q q q16 |
    r16 <fis cis'>8 q q q16 ~ q <fis d'>8 q q q16 | % [p4, r2]
    r16 <fis cis'>8 q q q16 ~ q <fis d'>8 q q q16 |
    r16 cis'8 fis, cis' fis,16 ~ fis c'8 e, c' e,16 |
    r16 b'8 dis, b' dis,16 ~ dis b'8 dis, b' dis,16 |
    r16 b'8 e, b' e,16 ~ e bes'8 d, bes' d,16 |
    r16 a'8 cis, a' cis,16 ~ cis a'8 cis, a' cis,16 |
    r16 a'8 d, a' d,16 ~ d bes'8 d, bes' d,16 |
    r16 a'8 d, a' d,16 ~ d bes'8 d, bes' d,16 | % [p4, r3]
    r16 a'8 d, a' r16 r a8 d, a'8 r16 |
    r16 a8 d, a' r16 \change Staff = "lower" \oneVoice r2 |
  }
  \relative c {
    \repeat unfold 2 {
      <b b,>8 g''[ fis e] d cis b ais |
      fis,8 <fis' ais> q-> q q-> q q-> q |
    } % [p5, r1]
    b,8 <fis' b> q q <b, e g b>2 |
    b8 <fis' b> q q <b, e g b>2 |
    b8 <fis' b> q q g,4. << g''8 \\ r8 >> |
    << { fis8 fis g e } \\ a,2 >> <d fis>4 r |
    <b, b,>8 \change Staff = "upper" \voiceTwo b''8 a g fis e dis b | % [p5, r2]
    \change Staff = "lower" \oneVoice <b e,>8 <c e,> q <b e,> <c e,> <b e,> <c e,> <b e,> |
    <cis, cis,>8 \change Staff = "upper" \voiceTwo cis'' b a gis fis eis cis |
    \change Staff = "lower" \oneVoice fis,8 <fis d'> q <fis cis'> <fis d'> <fis cis'> <fis d'> <fis cis'> |
    \repeat tremolo 4 { <fis a>16 d' } <g, bes> d' <g, bes> d' <g, bes> cis <g bes> cis |
    \repeat tremolo 4 { <fis, a>16 d' } <g, bes> d' <g, bes> d' <g, bes> cis <g bes> cis |
    \repeat tremolo 4 { <fis, a>16 d' } <b, b,>4 dis'16 r r8 | % [p5, r3]
    r4 c16 r r8 r4 b16 r r8 |
    \repeat tremolo 4 { <b e,>16 e } \repeat tremolo 4 { <c a e>16 e } |
    \repeat tremolo 4 { <b e,>16 e } \repeat tremolo 4 { <c a e>16 e } |
    \repeat tremolo 4 { <b e,>16 e } <c, c,>4 e'16 r r8 |
    r4 des16 r r8 r4 c16 r r8 |
  }
  \key g \minor
  \relative c' {
    \repeat tremolo 4 { <c f,>16 f } \repeat tremolo 4 { <des bes f>16 f } | % [p6, r1]
    \repeat tremolo 4 { <c f,>16 f } \repeat tremolo 4 { <des bes f>16 f } | 
    \repeat tremolo 4 { <c f,>16 f } f,8 as' es, g' |
    des,8 f' c, es' bes, des' b, d' |
    <c c,>8 r16 \change Staff = "upper" \voiceTwo <c g'>8 q q16 ~ q q8 q q q16 |
    r16 <bes g'>8 q q q16 ~ q16 q8 q q q16 |
    r16 <a fis'>8 q q q16 ~ q q8 q q q16 |
    \change Staff = "lower" \oneVoice r16 <g es'>8 q q q16 ~ q <fis es'>8 q q q16 | % [p6, r2]
    \tag #'original {
      <g g,>8 \clef "treble" r16 <bes' d>8 q q16 ~ q q8 q q q16 |
      \stemDown f16 <bes d>8 q q q16 ~ q q8 q q q16 |
      e,16 <bes' cis>8 q q q16 ~ q q8 q q q16 |
      \stemNeutral d,16 <bes' d>8 q q q16 cis,16 <bes' cis>8 q q q16 |
      <d d,>8 <es es,> <c c,> <a a,> \clef "bass" <f f,> <es es,> <c c,> <a a,> |
      <f f,>4-! <g g,>-! <e e,>-! <es es,>-! |
      <d d,>8-! \clef "treble" <es'' es,>[ <c c,> <a a,>] \clef "bass" <f f,> <es es,> <c c,> <a a,> | % [p6, r3]
      <fis fis,>4-! <g g,>-! <e e,>-! <es es,>-! |
      \repeat tremolo 4 { d,16 d' } \repeat tremolo 4 { d,16 d' } |
      \repeat tremolo 4 { d,16 d' } \repeat tremolo 4 { d,16 d' } |
      \repeat tremolo 4 { d,16 d' } \repeat tremolo 4 { d,16 d' } |
      \repeat tremolo 4 { d,16 d' } \repeat tremolo 4 { d,16 d' } |
    }
    <g g,>8 \change Staff = "upper" \voiceTwo es''8 d c bes4 r |
    \change Staff = "lower" \oneVoice <g, g,>8 \change Staff = "upper" \voiceTwo es''8 d c bes4 r | % [p7, r1]
    \change Staff = "lower" \oneVoice <f, f,>8 \change Staff = "upper" \voiceTwo es''8 d c b4 r | 
    \change Staff = "lower" \oneVoice <f, f,>8 \change Staff = "upper" \voiceTwo es''8 d c b4 r |
    \change Staff = "lower" \oneVoice
  }
  \key d \major
  \relative c {
    <e e,>8 \change Staff = "upper" \voiceTwo e''8 d c b a gis f |
    \change Staff = "lower" \oneVoice e8 e, d' e, c' e, b' e, |
    <a a,>8 \change Staff = "upper" \voiceTwo f'' e d c4 r | % [p7, r2]
    \change Staff = "lower" \oneVoice <g, g,>8 \change Staff = "upper" \voiceTwo f'' e d c4 r |
    \change Staff = "lower" \oneVoice <fis,, fis,>8 \change Staff = "upper" \voiceTwo fis'' e d cis b ais g |
    \change Staff = "lower" \oneVoice fis8 fis, e' fis, d' fis, cis' fis, |
    d'8 fis,, cis'' fis,, b' fis, a' fis, |
    gis'8 fis, gis' fis, gis' fis, gis' fis, | % [p7, r3]
    <fis fis'>8 r g'16 e cis ais cis e g ais r4 |
    <fis fis,>8 r cis'16 ais g e g ais cis e r4 |
    <fis, fis,>8 \change Staff = "upper" \voiceTwo r g'16 e cis ais cis e g ais r4 |
    \change Staff = "lower" \oneVoice <fis, fis,>8 \change Staff = "upper" \voiceTwo r cis''16 ais g e g ais cis e r4 | % [p8, r1]
    r4 g16 e cis ais r4 g16 e cis ais \change Staff = "lower" \oneVoice |
    r4 g16 e cis ais \voiceTwo <e e,>2 |
    <fis fis,>2 <e e,> |
    <fis fis,>2 <e e,> |
    <fis fis,>4 r8 cis'16 ais r8 e'16 cis r8 g'16 e |
    \change Staff = "upper" r8 \textMark "?" ais16 g r8 cis16 ais r8 e'16 cis r8 g'16 e | % [p8, r2]
    \change Staff = "lower"
  }
  \relative c, {
    \repeat unfold 2 {
      \oneVoice <fis fis,>8 <ais ais,> <b b,> <cis cis,> <d d,> <dis dis,> <e e,> <fis fis,> |
      <g g,>8 <fis fis,> <eis eis,> <fis fis,> <eis eis,> <fis fis,> <eis eis,> <fis fis,> |
    } % [p8, r3]
    <b, b,>8 <b fis' b> q q <b e g b>2 |
    <b b,>8 <b fis' b> q q <b e g b>2 |
    <b b,>8 <b fis' b> q q \stemUp bes8 \stemDown d' \stemUp a, \stemDown d' |
    \stemUp g,,8 \stemDown cis' \stemUp fis,, \stemDown a' \stemUp e, \stemDown g' \stemUp d, \stemDown g' |
    \stemNeutral cis,,8 <cis' e g a> q q <d e g bes>2 | % [p9, r1]
    cis,8 <cis' e g a> q q <d e g bes>2 |
    cis,8 <cis' e g a> q q \stemUp g'8 \change Staff = "upper" \stemDown ges' \change Staff = "lower" \stemUp fis, \change Staff = "upper" \stemDown a' \change Staff = "lower" |
    \stemUp e,8 \change Staff = "upper" \stemDown g' \change Staff = "lower" \stemUp d, \change Staff = "upper" \stemDown fis' \change Staff = "lower" \stemUp cis, \change Staff = "upper" \stemDown es' \change Staff = "lower" \stemUp b, \change Staff = "upper" \stemDown d' \change Staff = "lower" |
    \stemUp a,8 \stemDown cis' \stemUp g, \stemDown b' \stemUp g, \stemDown ais' \stemUp fis, \stemDown b' |
    \stemUp e,,8 \stemDown g' \stemUp eis, \stemDown gis' \stemUp fis, \stemDown b' \stemUp fis, \stemDown cis'' |
    \stemNeutral <b, b,>8 <d d,> <fis fis,> <ais ais,> <b b,>2 |
    <g, g,>8 <b b,> <d d,> <fis fis,> <g g,>2 | % [p9, r2]
    <fis, fis,>8 <b b,> <d d,> <eis eis,> <fis fis,>2 |
    <fis, fis,>8 <ais ais,> <cis cis,> <eis eis,> <fis fis,>2 |
    <b, b,>8 <d d,> <fis fis,> <ais ais,> <b b,>2 |
    <g, g,>8 <b b,> <d d,> <fis fis,> <g g,>2 |
    <fis, fis,>8 <b b,> <d d,> <eis eis,> <fis fis,>2 |
    <fis, fis,>8 <ais ais,> <cis cis,> <eis eis,> <fis fis,>2 |
    \repeat unfold 2 {
      <b, b,>8 <e' e,> <d d,> <cis cis,> <b b,> <a a,> <gis gis,> <g g,> |
      <fis fis,>4 <g g,>-! <e e,>-! <fis fis,>-! | % [p9, r3]
    }
    r4 <g g,>-! <e e,>-! <fis fis,>-! | 
    \voiceTwo r4 g, e fis |
    \oneVoice <b b,>8 g''[ fis e] d cis b ais |
    fis,8 <fis' ais> q q q q q q |
    <b, b,>8 g''[ fis e] d cis b ais | % [p10, r1]
    fis,8 <fis' ais> q q q q q q |
    \repeat unfold 4 { <fis cis'>8 } \repeat unfold 4 { <fis cis' e>8 } |
    \repeat unfold 8 { <fis cis' e>8 } |
    \repeat unfold 4 { <fis cis' e>8 r8 } |
    <fis cis'>8 r r4 <fis cis'>8 r r4 | % [p10, r2]
  }
  \relative c' {
    \repeat unfold 2 { % orig: volta
      \change Staff = "upper" \voiceTwo r16 <b fis'>8 q q q16 ~ q <b g'>8 q q q16 |
      r16 <b fis'>8 q q q16 ~ q <b g'>8 q q q16 |
      r16 <b fis'>8 q q q16 ~ q <g b e>8 q q <g b>16 |
      \change Staff = "lower" \oneVoice r16 <fis b d>8 q q q16 ~ q <fis ais e'>8 q <fis cis' e> q16 |
    }
    \repeat unfold 2 { % orig: volta
      \change Staff = "upper" \voiceTwo r16 fis'8 b, fis' b,16 ~ b fis'8 b, fis' b,16 |
      r16 a'8 b, a' b,16 ~ b a'8 b, a' b,16 |
      r16 g'8 b, g' b,16 ~ b g'8 b, g' b,16 |
      r16 g'8 b, g' b,16 ~ b g'8 b, g' b,16 |
    }
    r16 fis'8 b, fis' b,16 ~ b g'8 b, g' b,16 |
    r16 fis'8 b, fis' b,16 ~ b g'8 b, g' b,16 |
    \change Staff = "lower" \oneVoice
    <b b,>8 <a a,> <g g,> <fis fis,> <e e,> <d d,> <cis cis,> <b b,> |
    <ais ais,>8 <b b,> <a a,> <b b,> <gis gis,> <b b,> <g g,> <b b,> |
    <fis fis,>8 \change Staff = "upper" \voiceTwo fis'''8[ d b] fis d b \change Staff = "lower" fis |
    d8 b fis d b4 <fis' fis,> |
    <b b,>4 r4 \oneVoice <fis' fis,>4 r4 |
    <b, b,>4 r4 % [end]
  }

}

dynamics = {
  % Andante
  s2\p s2 |
  s1*6 |
  s2 s2\< |
  s1\f |
  s1*5 | % [p1, r3]
  s16 s\> s2. s16 s\! |
  s16 s\> s2. s16 s\! |
  s1 |
  s1\p |
  s1 | % [p2, r1]
  s1*6 |

  % Allegro molto
  s1\p |
  s1*3 |
  s2 s\sfz |
  s2 s\sfz |
  s1*4 | % [p3, r1]
  s1*2 |
  s2 s16\> s\! s4. |
  s2 s16\> s\! s4. |
  s1*4 |
  s1\f |
  s4 s\dim s2 |
  s2 s\p |
  s1*5 | % [p4, r1]
  s1 |
  s2\p s\< |
  s\! s\< |
  s\! s\< |
  s4\! s\> s4. s8\! |
  s1*2 |
  s2 s\< |
  s2. s4\! |
  s1\< |
  s2 s\! |
  s1\p |
  s1*2 |
  s2 s\p |
  s1*4 | % [p5, r1]
  s1*4 |
  s4 \once \override TextScript.extra-offset = #'(0.0 . -2.75)
  s2.-\markup { cresc. } |
  s1*2 |
  s1-\markup { sempre cresc. } |
  s1*2 |
  s2 s\f |
  s1*6 | % [p6, r1]
  s1*3 |
  s4\fp s2. |
  s1*3 |
  s1\fp |
  s1\fp |
  s1\f |
  s1*5 |
  s1\ff |
  s1*3 |
  \once \override DynamicText.extra-offset = #'(-0.75 . 0.0)
  s1\p |
  s1 | % [p7, r1]
  s1*2 |
  \once \override DynamicText.extra-offset = #'(-0.75 . 0.0)
  s1\f |
  s1 |
  \once \override DynamicText.extra-offset = #'(-0.75 . 0.0)
  s1\p |
  s1 |
  \once \override DynamicText.extra-offset = #'(-0.5 . 0.0)
  s1\f |
  s4\< s2. |
  s1\!\f |
  s1*5 | % [p8, r1]
  s1*6 |
  s1\ff |
  s1*8 | % [p9, r1]
  s1*5 |
  s1\f |
  s1*7 |
  s1-\markup { sempre \dynamic f } |
  s1*3 |
  s2 s\dim |
  s4 s\p s2 |
  s1\p |
  s1*2 | % [p10, r1]
  s1 |
  s2 s\cresc |
  s1 |
  s2. s4\dim |
  s1 |
  \repeat unfold 2 { s1\p | s1 | s4 s\< s2 | s1\! | }
  \repeat unfold 2 { s1\p | s1 | s2. s4\< | s1 | }
  s2\! s\< |
  s2 s\! |
  s1\< |
  s1 |
  s1\f |
  s2 s\ff |
  s1 |
  s2
}

pedal = {
  % Andante
  s1*8 |
  s2..\sustainOn s8\sustainOff |
  s8\sustainOn s2..^\markup { simile } |
  s1*7 |
  s1\sustainOn |
  s8\sustainOff\sustainOn s2.. | % [p2, r1]
  s1*5 |
  s1\sustainOn |
  s1 |

  % Allegro molto
  s1*54 |
  s2 s\sustainOn |
  s1*21 |
  s1\sustainOn |
  s1*29 |
  s1\sustainOn
  % [... no pedal marks for the rest of the piece ...]
}

music = \new PianoStaff \with {
    % instrumentName = \markup { \bold "Piano" }
    connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      %\expressive
      \new Voice = "A" { \oneVoice \upper }
      \new Voice = "B" { \voiceTwo \middle }
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
