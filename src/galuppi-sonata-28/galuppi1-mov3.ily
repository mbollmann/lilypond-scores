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

upper = \relative c''' {
  \clef treble
  \key f \major
  \time 6/8

\repeat volta 2 {
  a8 f c c c c |
  a' f c c c c |
  a' <a c> <g bes> <f a> <e g> <d f> |
  <c e> <bes d> <a c> <g bes> <f a> <e g> |
  a8 f c c c c |
  a' f c c c c |
  a' <a c> <g bes> <f a> <e g> <d f> |
  <c e> <bes d> <a c> \change Staff = "lower" \voiceOne bes a g |
  f4. \change Staff = "upper" \oneVoice r4. |
  c''8 a' c a, f' a |
  bes, g' bes bes g bes, |
  bes g' bes g, e' g |
  a, f' a a f c |
  a f' a f, c' es |
  cis d fis fis g a |
  bes fis g d e f |
  e d c c4.^\orn |
  g'4^\orn ~ g16 fis32 g c4 g8 |
  \grace{ g } f2. |
  f4^\orn ~ f32 e f16 d'4 f,8 |
  e2. |
  e4^\orn ~ e32 d e16 g4 bes,8 |
  a8 cis d gis a b |
  <a c> <g b> <f a> <e g> <d f> <c e> |
  << { e8 g e d4 } \\ { c4. b4 } >> r8 |
  \repeat unfold 2 {
  << { s4. g'4 s8 | s4. g4 s8 } \\ { r8 e, g r e g | r e g r e g } >> |
  f4 r8 \switchToLower { r8 f, a | r f a r f a } |
  << { s4. f''4 s8 | s4. f4 s8 } \\ { r8 d, f r d f | r d f r d f } >> |
  e4 r8 \switchToLower { r8 e, g | r e g r e g } |
  c'8 b' c c, a' bes |
  c, gis' a cis, d e |
  e f gis a cis, d |
  a' cis, d a' f d |
  g b, c! g' e c |
  f a, b f' d b |
  }
  \alternative {
    { c8 g e r4. | }
    { c'8 g e c4 r8 | }
  }
  <e g c e>8 r r <g c e g> r r |
  <c e g c>8 r r r4. |
}


}

lower = \relative c' {
  %\clef bass
  \key f \major
  \time 6/8

\repeat volta 2 {
  \clef treble f8 a f e c e |
  f a f e c e |
  f4 r8 f,4 r8 |
  \clef bass
  c'4 r8 c,4 r8 |
  f8 a f e c e |
  f a f e c e |
  f4 r8 f,4 r8 |
  c'4 r8 \voiceTwo c,4 r8 |
  f8 a c f c a |
  \oneVoice f4 r8 \clef treble f''4. |
  << { g2. | g2. | f2. | f4. } \\ { f2. | e2. | e2. | d4. } >> \clef bass a4. |
  bes4. r |
  bes b |
  c c8 c, d |
  e c' e c, c' e |
  d, c' d d, c' d |
  d, b' d b, b' d |
  c, bes' c c, bes' c |
  a, a' c e, c' e |
  f,2. |
  f4. << { c'4. } \\ { f,4 fis8 } >> |
  g4. g, |
  \repeat unfold 2 {
  c'4 r8 s4 r8 |
  c,4 r8 s4 r8 |
  r8 f a \voiceTwo d,4 r8 |
  a4 r8 d,4 r8 |
  \oneVoice b''4 r8 s4 r8 |
  b,4 r8 s4 r8 |
  r8 e g \voiceTwo c,4 r8 |
  g4 r8 c,4 r8 |
  \oneVoice e'4. e |
  f r |
  f r |
  <f a d> <f a d> |
  <g c e> <g c e> |
  <g b d> <g b d> |
  }
  \alternative {
    { <c c,> c,8 e g | }
    { c,4 r8 r e g | }
  }
  c,8 e g c g e |
  c8 r r r4. |
}

}

lowerBass = \relative c {
  %\clef bass
  \key f \major
  \time 6/8

}


thirdMovement = \score {
  \header { piece = "Allegro molto" }
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
