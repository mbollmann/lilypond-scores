\version "2.23.4"  % necessary for upgrading to future LilyPond versions.

upper = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4

\repeat volta 2 {
  c4 bes16.^\orn a32 g16.^\orn f32 d'2 |
  bes'4 a16.^\orn g32 f16.^\orn e32 \grace{ e16 g } f2 |
  a,32( bes c8.) bes16.^\orn a32 g16.^\orn f32
      d'8.( c16 d16. f32 e16. g32) |
  f16.^\orn e32 d16.^\orn c32 <bes g>8 <a f> \grace{ bes8 } <a f>4^\prallprall <g e>4 |
  es'32( f g8.) f16.^\orn es32 d16.^\orn c32
      \footnote
          "a)" #'(0 . 2)
          \markup { "a) The manuscript has"
                    \score { \relative c'' { \makeBlank c16 b! b4. } \layout { indent = 0.0 } }
                    "while at least one recording has"
                    \score { \relative c'' { \makeBlank c8. b!16 b4 } \layout { indent = 0.0 } }
                  }
      c16. b32 b4. |
  f'32( g as8.) g16.^\orn f32 es16.^\orn d32 d16. c32 c4. |
  es32( f g8.) f16.^\orn es32 d16.^\orn c32 as'16 as,8 as'16 g16 g,8 g'16 |
  f16 f,8 f'16 es16 c c' es, \grace{ f8 } es4^\prallprall d4 |
  e32( f g8.) f16.^\orn e32 d16.^\orn c32 \grace{ c8 } b8. c16 d4 |
  e16 g g c c g f e d32^\orn c b a g4. |
  es'32( f g8.) f16.^\orn es32 d16.^\orn c32 \grace{ c8 } b8. c16 d4 |
  d16( c) es( c) c' es,( d c) \grace{ c8 } b8. a16 g4 |
  e'32( f g8.) f16.^\orn e32 d16.^\orn c32 <a' a,>4 ~ a16. a,32 d16. f32 |
  e16. g32 c,16. e32 d16. f32 b,16. d32 c8 r32 c d es d8 r32 d es f |
  es8 r32 es f g b,8 r32 b c d c8 r32 c d es d8 r32 d es f |
  es8.( f32 g) f16.^\orn es32 d16.^\orn c32 b16 a32 b g16 g g8 r8 |
  e'32( f g8.) f16.^\orn e32 d16.^\orn c32 <a' a,>4 ~ a16. a,32 d16. f32 |
  e16. g32 c,16. e32 d16. f32 b,16. d32 c4 r4 |
}
\repeat volta 2 {
  g'8 ~ g32 a g fis g8 c c( fis,) fis8.^\orn g16 |
  a16 g fis es es d d c c b b4. |
  f'8 ~ f32 g f e f8 bes bes( e,) e8.^\orn f16 |
  g16 f e des des c c bes a16. a'32 f16. a32 des,4 |
  r16. d32 bes16. d32 g,4 r16. bes'32 g16. bes32 e,4 |
  r16. a32 f16. a32 d,16. a'32 c,16. a'32 bes,4 r4 |
  r16. f'32 e16. d32 b'16.^\orn f32 e16.^\orn d32 cis16. b64 cis a16. a32 a4 |
  f'32( g a8.) g16.^\orn f32 e16.^\orn d32 \grace{ d8 } cis8. d16 e4 |
  e16( d f e) a f e d \grace{ d8 } cis8. b16 a4 |
  fis'32( g a8.) g16.^\orn fis32 es16.^\orn d32 c8. b16 c32 a bes c d e fis g |
  a32 bes c bes c bes a g a g fis es d c bes c c8.^\orn bes16 bes4 |
  e32( f g8.) f16.^\orn e32 d16.^\orn c32 bes8. a16 bes32 g a bes c d e f |
  g32 a bes a bes a g f g f e d c bes a bes a16. c32 f16. a32 f16. a,32 g16. f32 |
  <c e g c>8 r r4 a'32( bes c8.) bes16.^\orn a32 g16.^\orn f32 |
  \grace{ f8 } e8. f16 g4 a16 c c f f c \grace{ c8 } bes16 a |
  g32( f e d) c4. as'32( bes c8.) bes16.^\orn as32 g16.^\orn f32 |
  \grace{ f8 } e8. f16 g4 f16( f' b, as') f as,( g f) |
  \grace{ f8 } e8. f16 g8 r a32( bes c8.) bes16.^\orn a32 g16.^\orn f32 |
  \grace{ e8 } <d d'>4 ~ d'16. d,32 g16. bes32 a16. c32 f,16. a32 g16. bes32 e,16. g32 |
  f8 r32 f g as g8 r32 g as bes as8 r32 as bes c e,8 r32 e f g |
  f8 r32 f g as g8 r32 g as bes as16 as' f c' b as \grace{ as8 } g16 f |
  << {c'8} \\ {<g e c>8} >> r8 r4 a,32( bes c8.) bes16.^\orn a32 g16.^\orn f32 |
  \grace{ e8 } <d d'>4 ~ d'16. d,32 g16. bes32 a16. c32 f,16. a32 g16. bes32 e,16. g32 |
  f16. f'32 c16. f32 a,16. f'32 f,16. a32 g16. d'32 c16.^\orn bes32 a16.^\orn g32 f16.^\orn e32 |
  a16. f32 c16. f32 \change Staff = "lower" \voiceOne a,16. d32 c16. bes32 a16. d32 c16. bes32
      a16.^\orn g32 f16.^\orn e32 |
  f4 \change Staff = "upper" \oneVoice r4 r2 |
}
}

lower = \relative c {
  \clef bass
  \key f \major
  \time 4/4

\repeat volta 2 {
  \voiceOne
  f8 a c a f bes d bes |
  g bes e bes a c f c |
  f, a c a \voiceTwo f[ bes] f[ g] |
  a[ f] bes[ b] \voiceOne c, e g c |
  es,[ g] c[ g] d[ f] as[ f] |
  d[ f] bes[ f] es[ g] c[ g] |
  es[ g] c[ g] r8 d'4 c8 |
  c b c4 c8 c b d |
  g,8[ c] e[ c] g[ b] f'[ d] |
  g,[ c] e[ c] g[ b] d[ b] |
  g[ c] es[ c] g[ b] f'[ d] |
  as[ c] fis[ c] r d b4 |
  e,8[ g] c[ g] f[ a] d[ b] |
  c[ e] b[ d] r es g,[ b] |
  g[ c] g[ d'] g,[ es'] g,[ b] |
  c[ es] as,[ fis'] g,[ b] d[ b] |
  e,[ g] c[ g] f[ a] d[ b] |
  c[ e] b[ d] s2 |
}
\repeat volta 2 {
  \clef treble
  es8[ g] c[ g] d[ fis] c'[ a] |
  d,[ fis] c'[ a] d,[ f] b[ f] |
  des[ f] bes![ f] c[ e] bes'[ g] |
  \oneVoice
  c,[ e] g[ e] f4 \clef bass r16. f,32 d16. f32 |
  bes,4 r16. g'32 e16. g32 cis,4 r16. e'32 g,16. e'32 |
  f,4 r4 r16. f32 d16. f32 bes,16. f'32 a,16. f'32 |
  \voiceOne
  gis,4 gis' a8[ cis] e[ cis] |
  a[ d] f[ d] a[ cis] g'[ e] |
  a,[ d] f4 a,8[ cis] e4 |
  fis,8[ a] d[ a] fis[ a] c[ a] |
  fis[ a] d[ a] g[ bes] d4 |
  e,8[ g] c[ g] e[ g] bes[ g] |
  e[ g] c[ e,] s2 |
  c8[ e] g[ e] c[ f] a[ f] |
  c[ g'] bes[ g] c, f a bes |
  c,[ e] g[ e] c[ f] as[ f] |
  c[ e] g[ e] des[ f] b[ f] |
  c[ e] g4 a,8[ c] f[ c] |
  bes[ d] g[ d] f \oneVoice r \voiceOne e \oneVoice r \voiceOne |
  \oneVoice f8([ c)] e([ c)] f([ c)] g'([ e)] |
  as([ c,)] e([ c)] \voiceOne r8 as'4 b8 |
  c,8 e g4 a,8[ c] f[ c] |
  bes[ d] g[ d] f \oneVoice r \voiceOne e \oneVoice r \voiceOne |
  s2 r8 f4 e8 |
  f4. \voiceThree e8 f4. e8 |
  s1 |
}
}

lowerBass = \relative c {
  \clef bass
  \key f \major
  \time 4/4

\repeat volta 2 {
  \voiceTwo
  f2 f |
  g a |
  f \voiceOne s4. bes8 |
  s2 \voiceTwo c,2 |
  es d |
  d es |
  es f4 es |
  d4 r8 fis g2 |
  g g |
  g g |
  g g |
  as g4. f?8 |
  e2 f |
  g g4 g |
  g g g g |
  c as g4. f8 |
  e2 f |
  g c,4 \oneVoice r4 |
}
\repeat volta 2 {
  \voiceTwo
  es'2 d |
  d d |
  des c |
  c s |
  s1*2 |
  gis,2 a' |
  a a |
  a4. gis8 a4. g8 |
  fis2 fis |
  fis g4. f8 |
  e2 e |
  e \oneVoice <c' f,>8 r <b d,>8 r \voiceTwo |
  c,2 c |
  c c |
  c c |
  c des |
  c4. bes8 a2 |
  bes2 c8 s c s |
  s1 |
  s2 f4 des4 |
  c4. bes8 a2 |
  bes2 c8 s c s |
  \oneVoice <f f,>4 r8 a, \voiceTwo bes4 c4 |
  f,4 r8 a bes4 c4 |
  <f, a c>4 \oneVoice r4 r2 |
}
}


firstMovement = \score {
  \header { piece = "Andante" }
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
