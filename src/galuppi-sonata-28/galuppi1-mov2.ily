\version "2.23.4"  % necessary for upgrading to future LilyPond versions.

oldStyleTurn = #(define-music-function
    (pA pB pC pD) (ly:pitch? ly:pitch? ly:pitch? ly:pitch?)
  "Make an old-style turn out of four sequential pitches."
(make-music
  'SequentialMusic
  'elements
  (list (make-music
          'GraceMusic
          'element
          (make-music
            'SequentialMusic
            'elements
            (list (make-music
                    'SequentialMusic
                    'elements
                    '())
                  (make-music
                    'SequentialMusic
                    'elements
                    (list (make-music
                            'NoteEvent
                            'articulations
                            (list (make-music
                                    'SlurEvent
                                    'span-direction
                                    -1))
                            'pitch
                            pA
                            'duration
                            (ly:make-duration 3 0 1))))
                  (make-music
                    'SequentialMusic
                    'elements
                    '()))))
        (make-music
          'NoteEvent
          'pitch
          pB
          'duration
          (ly:make-duration 5 0 1))
    (make-music
          'NoteEvent
          'articulations
          (list (make-music
                  'SlurEvent
                  'span-direction
                  1))
          'pitch
          pC
          'duration
          (ly:make-duration 5 0 1))
    (make-music
          'NoteEvent
          'pitch
          pD
          'duration
          (ly:make-duration 4 0 1))
        ))
  )

switchToUpper = #(define-music-function
  (music)
  (ly:music?)
  #{
    \change Staff = "upper" \voiceTwo #music \change Staff = "lower" \oneVoice
  #}
)

switchToLower = #(define-music-function
  (music)
  (ly:music?)
  #{
    \change Staff = "lower" \voiceOne #music \change Staff = "upper" \oneVoice
  #}
)

upper = \relative c' {
  \clef treble
  \key f \major
  \time 3/8

\repeat volta 2 {
  \repeat unfold 2 {
    <f a c f>8 r \oldStyleTurn c' bes a bes |
    a8 r \oldStyleTurn c bes a bes |
    c8 r \oldStyleTurn c bes a bes |
    a8 r \oldStyleTurn c bes a bes |
    c8 r \oldStyleTurn c bes a bes |
    a8 r \oldStyleTurn d c bes c |
    d16 c bes a g f |
  }
  \alternative {
    { e8 d16 e c8 | }
    { <c e g c>8 r r | }
  }
  g''16 e c g r8 |
  r8. g16 c e |
  g g, f' g, e' g, |
  f' d b f r8 |
  r8. f16 b d |
  f g, e' g, d' g, |
  e' c g e r8 |
  r8. e16 g c |
  e e, d' d, c' c, |
  % manuscript page break
  b'8 r r |
  a'16 a, g' g, f' f, |
  g' g, f' f, e' e, |
  d'8 b4 |
  \voiceOne
  c8 r r |
  R1*3/8 |
  \oneVoice
  g16 g'([ fis g fis g)] |
  g,16 f'!([ e f e f)] |
  \voiceOne
  g,16 e'([ dis e dis e)] |
  g,16 d'!([ cis d cis d)] |
  \oneVoice
  g,16 g'([ fis g fis g)] |
  a16 a, g' g, f' f, |
  g' g, f' f, e' e, |
  d' f b,4 |
  c8 r \oldStyleTurn e d c d |
  e8 r \oldStyleTurn c b a b |
  c8 r \oldStyleTurn e d c d |
  e16( g e c d b) |
  c4 r8 |
}
\repeat volta 2 {
  << { c'8 } \\ { <g e c>8 } >> r8 \oldStyleTurn g f e f |
  e8 r \oldStyleTurn g f e f |
  g8 r \oldStyleTurn g f e f |
  e8 r \oldStyleTurn g f e f |
  g8 r \oldStyleTurn g f e f |
  e8 r \oldStyleTurn a g f g |
  a16 g f e d c |
  b a g8 r |
  r16 c b a g8 |
  R1*3/8 |
  r8. \change Staff = "lower" \voiceOne b,16[ \change Staff = "upper" cis e] \oneVoice |
  g[ bes cis] e[ g bes] |
  r8. \change Staff = "lower" \voiceOne bes,,16[ \change Staff = "upper" cis e] \oneVoice |
  g[ bes cis] e[ g bes] |
  g bes e, g cis, e |
  g bes e, g cis, e |
  g bes a g f e |
  f e d8 r |
  r16 g, f e d8 |
  R1*3/8 |
  r8. \change Staff = "lower" \voiceOne as16[ b \change Staff = "upper" d] \oneVoice |
  f[ as b] d[ f as] |
  r8. \change Staff = "lower" \voiceOne as,,16[ b \change Staff = "upper" d] \oneVoice |
  f[ as b] d[ f as] |
  f as d, f b, d |
  f as d, f b, d |
  f as g f e d |
  e8 c r |
  << { c'8[ bes] as32[ g as16] } \\ { c,4 s8 } >> |
  g'8 c, r |
  << { c'8[ bes] as32[ g as16] } \\ { c,4 s8 } >> |
  g'8 c,4 |
  << { c'8[ bes] as32[ g as16] } \\ { c,4 s8 } >> |
  <g c e g>8 r r |
  <f a c f>8 r \oldStyleTurn c' bes a bes |
  a8 r \oldStyleTurn c bes a bes |
  c8 r \oldStyleTurn c bes a bes |
  a8 r \oldStyleTurn c bes a bes |
  c8 r \oldStyleTurn d cis bes cis |
  d8 r \oldStyleTurn g fis e fis |
  \grace{ fis8 } g4 \oldStyleTurn c, b a b |
  \grace{ b8 } c4 \oldStyleTurn f e d e |
  f4 \oldStyleTurn bes, a g a |
  \grace{ a8 } bes4 \oldStyleTurn e d c d |
  \grace{ d8 } e4 \oldStyleTurn a, g f g |
  c16[ a f d] r8 |
  r8. c16[ f a] |
  c c, bes' c, a' c, |
  bes'[ g e c] r8 |
  r8. c16[ e g] |
  bes c, a' c, g' c, |
  a'[ f d b] r8 |
  r8. \change Staff = "lower" \voiceOne b16[ \change Staff = "upper" d f] \oneVoice |
  a16 bes, g' bes, f' bes, |
  e4 r8 |
  d'16 d, c' c, bes' bes, |
  c' c, bes' bes, a' a, |
  g'8 \grace{ f } e4 |
  f4 r8 |
  R1*3/8 |
  c16 c'[ b c b c] |
  c, bes'[ a bes a bes] |
  c, a'[ gis a gis a] |
  c, g'![ fis g fis g] |
  c, c'[ b c b c] |
  d d, c' c, bes' bes, |
  c' c, bes' bes, a' a, |
  g'8 \grace { f } e4 |
  f8 r \oldStyleTurn a g f g |
  a8 r \oldStyleTurn f e d e |
  f8 r \oldStyleTurn a g f g |
  a16( c a f g e) |
  f8 r r |
}
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 3/8

\repeat volta 2 {
  \repeat unfold 2 {
    f8 c e |
    f c g' |
    a c, e |
    f c e |
    a c, e |
    f c a' |
  }
  \alternative {
    { bes d b | c8. bes16 a g | }
    { bes4 b8 | c16 g e g d g | }
  }
  c,8 r e'16 c |
  g c e r8. |
  << { e8 d c } \\ { g4. } >> |
  g8 r d'16 b |
  g b d r8. |
  << { d8 c bes } \\ { g4. } >> |
  r4 c16 g |
  e g c r8. |
  << { c8 b a } \\ { g4 fis8 } >> |
  % manuscript page break
  g16 g' f, f' e, e' |
  f, f' e, e' d, d' |
  e, e' d, d' c, c' |
  f,8 g g, |
  c16 \switchToUpper { g''( fis g fis g) } |
  g,16 \switchToUpper { f'!( e f e f) } |
  g,16 e'([ dis e dis e)] |
  g, d'([ cis d cis d)] |
  g,16 \switchToUpper { g'([ fis g fis g)] } |
  g,16 \switchToUpper { f'!([ e f e f)] } |
  g,16 e'([ dis e dis e)] |
  f,16 f' e, e' d, d' |
  e, e' d, d' c, c' |
  f,8 g f |
  e g, b |
  c g d' |
  e g, b |
  c g' g, |
  c4 r8 |
}
\repeat volta 2 {
  c'8 g b |
  c g d' |
  e g, bes |
  c g d' |
  e g, bes |
  c g e' |
  f4 fis8 |
  g8 r16 e d c |
  b4 r16 a |
  g a g f e d |
  cis[ e g] r8. |
  R1*3/8 |
  cis,16[ e g] r8. |
  R1*3/8 |
  cis,4 r8 |
  cis4 r8 |
  cis4 r8 |
  d8 r16 bes' a g |
  f4 r16 g |
  f g f e d c |
  b[ d f] r8. |
  R1*3/8 |
  b,16[ d f] r8. |
  R1*3/8 |
  b,8 r r |
  b8 r r |
  b8 r r |
  c16 c' e, e' g, g' |
  as, \switchToUpper{ as' } g, \switchToUpper{ g' } f, \switchToUpper{ f' } |
  c, c' e, e' g, g' |
  as, \switchToUpper{ as' } g, \switchToUpper{ g' } f, \switchToUpper{ f' } |
  c, c' e, e' g, g' |
  as, \switchToUpper{ as' } g, \switchToUpper{ g' } f, \switchToUpper{ f' } |
  <c, e g c>8 r r |
  f8 c e |
  f c g' |
  a c, e |
  f c g' |
  a f a |
  bes16[ f d bes] d8 |
  e'16[ bes g e] g8 |
  a16[ e c a] c8 |
  d'16[ a f d] f8 |
  g16[ d bes g] bes8 |
  c'16[ g e c] e8 |
  f8 r a16 f |
  c[ f a] r8. |
  << { a8 g f | g4 } \\ { c,4 r8 | c4 } >> g'16 e |
  c[ e g] r8. |
  << { g8 f e } \\ { c4 r8 } >> |
  f4 f16 d |
  b16[ d f] r8. |
  << { f8 e d } \\ { bes4. } >> |
  c16 c' bes, bes' a, a' |
  bes, bes' a, a' g, g' |
  a, a' g, g' f, f' |
  << { bes8 \grace{ a } g4 } \\ { bes,8 c4 } >> |
  f16 c'[ b c b c] |
  c, bes'[ a bes a bes] |
  c, a'[ gis a gis a] |
  c, g'![ fis g fis g] |
  c, c'[ b c b c] |
  c, bes'![ a bes a bes] |
  c, a'[ gis a gis a] |
  bes, bes' a, a' g, g' |
  a, a' g, g' f, f' |
  bes,8 c c,  |
  f' c e |
  f c g' |
  a c, e |
  f c' c, |
  f r r |
}
}

lowerBass = \relative c {
  \clef bass
  \key f \major
  \time 3/8

}


secondMovement = \score {
  \header { piece = "Allegro" }
  \new GrandStaff <<
    \set GrandStaff.instrumentName = #""
    \set GrandStaff.connectArpeggios = ##t
    \new Staff = "upper" <<
      \new Voice = "melody" { \upper }
    >>
    \new Staff = "lower" <<
      \new Voice = "accompaniment" { \lower }
      \new Voice = "bass" { \lowerBass }
    >>
  >>
  \layout {
    \context {
      \GrandStaff
      \accepts "Lyrics"
    }
    \context {
      \Lyrics
      \consists "Bar_engraver"
    }
    \context {
      \Score
      \override Footnote.annotation-line = ##f
    }
  }
}
