\version "2.23.14"

global = {
  \key g \major
  \time 3/2
}

upperA = {
  \clef treble
  \tempo \markup { "Sostenuto e con anima" }

  \relative c'' {
    b2( <d a> g,4 <a fis>) |
    b1 b2 |
    e2.( a,4 b2) |
    e2.( a,4 b2) |
    c2( <e b> a,4 <d b>) |
    <g c,>1( <b, g>2) |
    a2.( e'4 d2) |
    a2.( e'4 d2) |
    d2( dis e |
    f2 es4 c as2) |
    as2( a b) |
    g2( b4 a b2) |
    b2.( e,4 fis2) |
    b2.( e,4 fis2) |
    g2( b4 c g a) |
    b2\( d \oneVoice <g, e b>4( <a fis c>)\) |
    <b g b,>1 <b gis d>2 |
    <e a, e>2.( <a, c,>4 <b gis d>2) |
    <e a, e>2.( <a, es>4 <b gis d>2) |
    <c a c,>2( <e b e,> <a, c,>4 <d b a d,>) |
    <g c, g>1( <b, g d>2) |
    \voiceOne a2.( e'4 d2) |
    a2.( e'4 d2) |
    c4 e a,2 b |
    g1. |
    g1 \oneVoice\tieUp <g es bes>2 ~ |
    <g d b>1 <g es bes>2 ~ |
    <g d b>1 <g es a,>2 ~ |
    <g d b>1. |
  }
}

upperB = {
  \relative c'' {
    g2( fis e4 <es c>) |
    g1 gis2 |
    <a e>1 <gis e>2 |
    <a e>1 <gis e>2 |
    a2( g <f a>) |
    e2( es d) |
    fis1 g2 |
    fis1 g2 |
    g1 g2 |
    as2 as as |
    ges2( fis fis) |
    e2( e dis) |
    <e b>1 <dis b>2 |
    <e b>1 <dis b>2 |
    <e b>2 <e c> <fis c> |
    <g b,>2 <a d,> s | 
    s1.*5 |
  }
  \relative c' {
    <fis e>2 d <g d> |
    <fis e>2 d <g d> |
    <e c>2 <g c,> <fis b,> |
    <e b>2( <f b,> <e c>) |
    <dis b>2( <e c>) s |
    s1.*3 |
  }
}


lower = {
  \clef bass

  \relative c' {
    s1. |
    << { d1 d2 } \\ { g,2( fis e) } >> |
    <e c'>1 <e d'>2 |
    <e c'>1 <e d'>2 |
    s1.*2 |
  }
  \relative c' {
    << { e2 d d | e d d } \\ { c1 b2 | c1 b2 } >> |
    << { d2( des des) | des2( c d) } \\ { bes1 as2 | as2( ges f) } >> |
    << { des'2( c d) | b2( fis fis) } \\ { es1( d2) | e2( c b) } >> |
    <b g'>1 <b a'>2 |
    <b g'>1 <b a'>2 |
    <e e,>2 <a, a,> <d d,> |
    <g g,>2( <fis fis,> <e e,>4 <d d,>) |
    <g g,>2( <fis fis,> <e e,>) |
    <c c,>2( <f f,> <e e,>) |
    <c c,>2( <f f,> <e e,>) |
    <a a,>2( <g g,> <f f,>) |
    <e e,>2( <es es,> <d d,>) |
    <c c,>1 <b b,>2 |
    <c c,>1 <b b,>2 |
    <a a,>2 <d d,>1 |
    <e e,>2( <d d,> <c c,>) |
    <g g,>2->( <c c,> <es es,>) |
    <g g,>1( <es es,>2) |
    <g g,>1 <c, c,>2 |
    <g g,>1. |
  }

  \bar "|."
}

dynamics = {
}

belowLower = {
}

\score {
  \header {
    %piece = "Dojem" % pl. Dojmy
    opus = "Op.41, No.86" % or Op.41/III No.40
  }
  \new PianoStaff \with {
    instrumentName = \markup { \number {41} \fontsize #2 \bold "/" \number {125} }
    connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      \global
      \new Voice = "A" { \voiceOne \upperA }
      \new Voice = "B" { \voiceTwo \upperB }
    >>
    \new Dynamics { \dynamics }
    \new Staff = "lower" <<
      \global
      \lower
    >>
    \new Dynamics { \belowLower }
  >>
}
