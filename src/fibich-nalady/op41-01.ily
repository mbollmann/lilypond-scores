\version "2.23.14"

global = {
  \key es \major
  \time 3/4
}

upperA = {
  \global
  \clef treble
  \tempo \markup { "Adagio" }

  \relative c' {
    g8\( bes g'4 <ges a> |
         <a a,>8 <c c,> <bes bes,>8.\) q16 b8[ b] |
    <c as f c>4.-- f,8 b[ b] |
    <c as f c>2.-- |
    es,8\( g es'4 <d f> |
           <g g,>8 <c c,> bes8.\) g16( f8 bes,) |
    bes'4\arpeggio ~ bes8. g,16( f8 bes,) |
    <g es' bes'>2.\arpeggio |
    f'8\( as f'4\arpeggio g |
          <g g,>8 <bes bes,> <as as,>4\) es8( f |
    <g es>4) ~ q8 r f,8( bes,) |
    bes8-- c-- d2 |
    bes8\( d bes'4 <c a>4 |
           <d d,>8 <g g,> <f f,>8.\)
    <d d,>16\( c8 f, |
               f'4.\) d8\( c[ f,] |
                           g8. bes16 f2\) |
    g,8\( bes g'4 <ges a> |
          <a a,>8 <c c,> <bes bes,>8.\) q16 b8[ b] |
    <c es, c>4. e,8 b'[ b] |
    <c es, c>2. |
    f,8\( as <as f'>4\arpeggio g' |
          <g g,>8 <bes bes,> <as as,>4\) es8 <es f> |
    <es g>4 ~ q8 r f,8( bes,) |
    bes'4.\arpeggio g8\( f bes, |
                         c8. es16 bes8\) bes8--[( bes-- bes--]) |
    bes4. bes8--[( bes-- bes--]) |
    bes4. bes8--[( bes-- bes--]) |
    \oneVoice
    <des f,>4 <des f>8[ <f as> <as des>8. <des f>16] |
    <des f>4 <f as>2\fermata |
    <a es as,>2. |
    <bes es, bes>8 r r \voiceOne g,8\( f bes, |
                                       c8. es16 bes8[\)
    \change Staff = "lower"
    \override Slur.positions = #'(0 . -1)
    g^( <f bes,> bes,] |
    <bes es>2.) |
  }
}

upperB = {
  \relative c' {
    g2 a4 |
    f'2 <f b,>4 |
    s2 <f b,>4 |
    s2. |
    es2 <f as>4 |
    <bes es>8 s bes4 as |
    <g es'>4\arpeggio ~ q8 r as,4 |
    s2. |
    f'4 <f as>\arpeggio <g fes'> |
    es'2 a,8 as |
    g8([ c] bes8.) g16 as,4 |
    g8 ges f2 |
    bes2 c4 |
    bes'4 s es, |
    <d bes'>2 es4 |
    d2. |
    g,2 a4 |
    f'2 <f b,>4 |
    s2 <f b,>4 |
    s2. |
    f4 f\arpeggio <g fes'> |
    es'2 a,8 as |
    g([ c] bes8.) g16 as,4 |
    <g es'>2\arpeggio as4 |
    g4( bes8) s4. |
    \change Staff = "lower" \voiceOne
    \crossStaff { d,4. } s4. |
    \crossStaff { d4. } s4. |
    s2.*3 |
    \change Staff = "upper" \voiceTwo
    s4. r8 as'4 |
  }
}


lower = {
  \global
  \clef bass

  \relative c {
    <es es,>2. |
    <d d,>2 <des des,>4 |
    <c f,>2 <des des,>4 |
    <c f,>2. |
    <c c,>2 <ces ces,>4 |
    <bes bes,>2 <bes' d>4 |
    <bes es>2\arpeggio <d, bes>4 |
    <es es,>2.\arpeggio |
    <des des,>2 <des des,>4 |
    <c c,>2 q8 <ces ces,>8 |
    <bes bes,>2 <bes d>4 |
    es8-- ~ <es a,>-- bes2 |
    <g' g,>2 <ges ges,>4 |
    <f f,>2 <a f,>4 |
    <bes f,>2 <a f,>4 |
    <f bes,>2. |
    <es es,>2. |
    <d d,>2 <des des,>4 |
    <as as,>2 <des des,>4 |
    <as as,>2. |
    <des des,>2 <des des,>4 |
    <c c,>2 q8 <ces ces,>8 |
    <bes bes,>2 <bes d>4 |
    <bes es>2\arpeggio <bes d>4 |
    <bes es,>4 ~ q8 <<
      { g'8[ f es] } \\ { <bes es,>8 <as es> <g es> }
    >> |
    <<
      { \forceShiftLeft f'8.( g16 f8) g[ f es] | \forceShiftLeft f8.( g16 f8) g[ f es] } \\
      { <bes es,>4. q8 <as es> <g es> | <bes es,>4. q8 <as es> <g es> }
    >> |
    <as des,>2. ~ |
    q\fermata
  }

  \clef violin
  \relative c' {
    <c es f>2. |
    << { \set tieWaitForNote = ##t \tieDown g'8.( ~ c16 <bes g>8) } \\ { <es, bes>4 ~ q8 } >> r8
  }
  \clef bass
  \relative c {
    <bes d>4 |
    <<
      { g'4 ~ g8 s4. } \\
      { <bes, es,>4 ~ q8 r8 <as es>4 }
    >> |
    \voiceTwo <g es>2.\fermata |
  }

  \bar "|."
}

dynamics = {
  \autoBreaksOff
  s8\p\< s s2 |
  s4 s8 s\! s4\pp |
  \once \override DynamicText.extra-offset = #'(1.4 . 0.7)
  s2\ppp
  \once \override DynamicText.extra-offset = #'(0.7 . 0.7)
  s4\pp |
  \once \override DynamicText.extra-offset = #'(1.4 . 0.7)
  s2\ppp s4 |
  \once \override DynamicLineSpanner.Y-offset = #1.4
  s8\p\< s s2 |
  s8 s8\!
  \once \override DynamicText.Y-offset = #0.5
  s8\mf s
  \once \override DynamicLineSpanner.Y-offset = #1.4
  s\> s16 s\! | \break
  \once \override DynamicText.extra-offset = #'(0.6 . 1.6)
  s2.\p |
  \dynamicTextNudgeRight s\pp |
  s8\p\< s s2 |
  s16 s\! s s16\> s8 s\! s16 s\< s8 |
  s8. s16\! s4 s8\> s16 s\! |
  s2. |
  s8\< s s2 | \break
  s16 s\! s s\> s8. s16\! s4 |
  s8\< s4 s16\! s s8\> s16 s\! |
  s16\< s\! s\> s\! s2 |
  s8\< s4. s8. s16\! |
  s2 s4\pp |
  \dynamicTextNudgeRight s2\ppp \dynamicTextNudgeRight s4\pp |
  \dynamicTextNudgeRight s2.\ppp | \break
  s8\mf\< s s4. s8\! |
  s8\f\> s16 s\! s4 s8\< s |
  s16 s\! s s\> s8. s16\! s4 |
  s2 s8\> s16 s\! |
  s16\< s\! s\> s\! s8
  \once \override DynamicText.Y-offset = #0.4
  s4.\pp |
  s2. | \break
  s4. s8\< s s\! |
  s8\f s\> s4 s8. s16\! |
  \once \override DynamicLineSpanner.Y-offset = #1.0
  s4\pp\> s4. s8\! |
  \once \override DynamicText.Y-offset = #0.4
  s2.\sfz |
  \once \override DynamicLineSpanner.Y-offset = #1.4
  s8.\p\< s16\!\> s16 s\! s8 s\> s16 s\! |
  \once \override DynamicLineSpanner.Y-offset = #1.4
  s8\< s16\!
  \once \override DynamicLineSpanner.Y-offset = #1.4
  s\> s8\! s8\> s s16 s\! |
  \dynamicTextNudgeRight s2.\ppp |
  \autoBreaksOn
}

expressive = {
  s2.*31 | s4 s8^\markup { \italic "perdendosi" }
}

\score {
  \header {
    piece = "Nálada"
    opus = "Op.41, No.1"
  }
  \new PianoStaff \with {
    instrumentName = \markup { \number {41} \fontsize #2 \bold "/" \number 1 }
    connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      \expressive
      \new Voice = "A" { \voiceOne \upperA }
      \new Voice = "B" { \voiceTwo \upperB }
    >>
    \new Dynamics { \dynamics }
    \new Staff = "lower" \lower
  >>
}
