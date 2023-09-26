\version "2.23.14"

global = {
  \key bes \major
  \time 4/4
}

upperA = {
  \global
  \clef treble
  \tempo \markup { "Solenne" }

  \relative c' {
    \voiceOne d4^\( es8 e \oneVoice <f c f,>4 <bes es, bes> |
    <d, bes>4 <f c a> <bes, f>\) <bes a f>-> |
    <bes g>4\( <es bes g> <d a> <g d g,>
    <f d a>4 <d bes g> <f d a>2\) |
    \voiceOne d4^\( es8 e f4 \oneVoice <bes e,! bes> |
    <a f c>4 <c g c,> <bes g d> <a fis d>\) |
    <g d>4^\( << { <a fis>8 <bes g> } \\ { d,4 } >> <b' as d,>4 <c as es>\) |
    <f bes, as f>4^\( \voiceOne <es es,>8 <f f,> <es es,>4 <d d,>\) |
    \oneVoice <g bes, g>4 \voiceOne <es es,>8 <d d,> <c c,>2 |
    \oneVoice <bes f d>4^\( \voiceOne as4 
    \oneVoice\phrasingSlurUp <g es bes>4\) <bes es, bes>\( |
    <d, bes>4\) <f c a>\( bes,4\) <bes a>^>
    <bes g>4\( <es bes g> <d bes>2\) |
    \change Staff = "lower" \voiceOne
    bes4( a2 g4) |
    %\set doubleSlurs = ##t
    <g es>1*1/2 _( <f d>1*1/2) |
  }
}

upperB = {
  \relative c' {
    \set fingeringOrientations = #'(left)
    <bes f\msBracket>2 s2 |
    s1 |
    \change Staff = "lower" \relative c {
        \voiceOne \crossStaff { es4 s fis4 s }
    }
    \change Staff = "upper" \voiceTwo
    s1 |
    <bes f\msBracket>2 <c f,>4 s4 |
    s1*2 |
    s4 <bes' as>4 <bes as>2 |
    \once \override PhrasingSlur.height-limit = #12
    \hideNotes g'4^>^\( \unHideNotes bes,4 bes4 as8 g\) |
    s4 <es c>8 <f bes,> s2 |
    \change Staff = "lower" \relative c {
        \voiceOne \crossStaff { s2 f4 f4 | es4 s f2 }
        \voiceTwo f2.( es4 ) |
    }
  }
}


lower = {
  \global
  \clef bass

  \relative c {
    bes2\( a4 g |
    f4 es d2\) |
    \voiceTwo es4\( c d bes |
    \oneVoice d4 g d2\) |
    bes'2\( a4 g |
    f4 es d d'8 c\) |
    bes4\( a8 g f4 es\) |
    d4\( c bes2\) |
    <es es,>4->\( <g g,> <as as,>2\) |
    <bes bes,>4\( <c c,>8 <d d,> <es es,>4\) g,\( |
    f4 es d2\) |
    \voiceThree
    es4_\( c d8 es f4\) |
    <f c''>1 |
    <bes, bes''> \breve *1/2
  }

  \bar "|."
}

dynamics = {
  \once \override DynamicText.X-offset = #0.8
  s4\p s2.\< |
  s2.\> s4\! |
  \once \override DynamicText.X-offset = #-0.3
  s4\mp s8 s8\< s2 |
  \dynamicTextNudgeRight
  s1\pp |
  \once \override DynamicText.X-offset = #0.8
  s4\p s2.\< |
  s1 |
  \dynamicTextNudgeRight
  s4\mf s8 s\< s2 |
  s4\f s2.\< |
  \once \override DynamicText.X-offset = #0.2
  s1\ff |
  s4\> s2 s4\p |
  s4 s2.\> |
  \once \override DynamicText.X-offset = #-0.3
  s1\pp |
  \once \override DynamicLineSpanner.Y-offset = #2.5
  s4\> s2. |
  \once \override DynamicText.X-offset = #1.5
  s1\ppp |

}

belowLower = {
  s1*8 |
  \once \override SustainPedal.X-offset = #-4.0
  s2\sustainOn s4.\sustainOff\sustainOn s8\sustainOff |
  s1*4 |
}

\score {
  \header {
    %piece = "Dojem" % pl. Dojmy
    opus = "Op.41, No.125" % or Op.41/III No.40
  }
  \new PianoStaff \with {
    instrumentName = \markup { \number {41} \fontsize #2 \bold "/" \number {125} }
    connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      \new Voice = "A" { \oneVoice \upperA }
      \new Voice = "B" { \voiceTwo \upperB }
    >>
    \new Dynamics { \dynamics }
    \new Staff = "lower" <<
      \lower
    >>
    \new Dynamics { \belowLower }
  >>
}
