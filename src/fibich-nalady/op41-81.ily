\version "2.23.14"

global = {
  \key bes \minor
  \time 4/8
}

parallelNotesA = {
  \grace { c16( es ges) } bes8( a) \grace { c,16 es ges } bes8( c) |
  \grace { ges16 bes c } es8( des16 es c8 bes) |
  \grace { c,16( es ges) } bes8( a) \grace { c,16 es ges } bes8( c) |
  \grace { ges16 bes c } es8( des16 es) c8( bes) |
  \grace { ges16 bes c } es8( f) \grace { bes,16 c es } as16( ges f es) |
  \grace { ges,16 bes c } es8( f) \grace { bes,16 c es } as16( ges f es) |
  \grace { es,16 ges bes } des8( c16 bes) \grace { es,16 ges bes } des8( c16 bes) |
}

parallelNotesB = {
  \grace { d16 f as } c8( bes) \grace { des,16 es g } c16( bes as\prall g) | %% why is the c given a natural sign in the OS?
  \grace { ges16 as c } f8( es16 c) \grace { f,16 as c } es8( des) |
  \clef treble
  \grace { bes16 des fes } as8( ges)
  \key cis \minor
  \grace { a,16 b dis } gis16( fis e\prall dis) | %% b natural is b sharp in treble in the OS
  \grace { d16 e gis } cis8\( b16 gis \grace { cis,16 e gis } b8 a\) |
  \grace { b,16 d f } a8( gis) \grace { d16 f a } c8( b) |
  \grace { b,16 d f } a8( gis) \grace { d16 f a } c8( b) |
  \key bes \minor
  \grace { c,16 es ges } bes8( a) \grace { es16 ges bes } des8( c) |
  \grace { c,16 es ges } bes8( a) \grace { es16 ges bes } des8( c) |
}

upper = {
  \global
  \clef treble
  \tempo \markup { "Andante con anima" }

  \repeat volta 2 {
    \relative c' { \parallelNotesA }
    \relative c' { \grace { es16[ ges bes] } des4( c) }
    \alternative {
      \volta 1 { \relative c' { \parallelNotesB } }
    }
  }
  \relative c' { \parallelNotesA }
  \relative c' {
    \grace { es16[ f a] } des4( c) |
    \grace { d,16[ f as] } c4( bes) |
    \grace { es,16[ g] } c4( bes) |
    \grace { d,16 f } c'8( bes) a16( bes d f) |
    \voiceOne
    \grace { bes,16 d } g8( bes) bes4 |
    \grace { bes,16 d g } bes8( d) \grace { d,16[ ges] } d'4 |
    << { <d f, d>2\arpeggio } \\ { \crossStaff { <bes, f>2 } } >> |
    <d f, d>2\arpeggio |
    \crossStaff { d,2\arpeggio } |
  }
}

lower = {
  \global
  \clef bass

  \repeat volta 2 {
    \relative c { \parallelNotesA }
    \relative c { \grace { as16 es' ges bes } des4( c) }
    \alternative {
      \volta 1 { \relative c { \parallelNotesB } \clef bass }
    }
  }
  \relative c { \parallelNotesA }
  \relative c {
    \grace { f,16[ f'] } des'4( c) |
    \grace { bes,16 f' as! } c4( bes) |
    \grace { bes,16[ es g] } c4( bes) |
    \grace { bes,16 f' } c'8( bes) a16( bes d f) |
    \change Staff = "upper" \voiceTwo
    \grace { bes,16 d }
    g8( bes) bes4 |
    \grace { g,16 d' g } bes8( d) \grace { g,,16[ d' g bes] } d4 |
    \change Staff = "lower"
    bes,2 |
    <bes f bes,>2 |
    << { \crossStaff { <f d>2\arpeggio } } \\ { <bes, f bes,>2 } >> |
  }

  \bar "|."
}

dynamics = {
  %\once \override DynamicText.X-offset = #-4
  \repeat volta 2 {
    \grace { s8.\p^\markup { \italic "molto espress." } } s8 s\< s s\! |
    s8\> s4 s8\! |
    s8 s\< s s\! |
    s8\> s4 s8\! |
    \grace { s8.\< } s4 s8\f\> s16 s\! | \break
    \grace { s8.\< } s4 s8\f\> s16 s\! |
    \grace { s8.\< } s8\mf s16\> s\! \grace { s8.\< } s8\p s16\> s\! |
    \grace { s8.\< } s8.\! s8.\> s8\! |
    \alternative {
      \volta 1 {
        \grace { s8. } s8\p s\< s16\! s\> s s\! |
        s4 \grace { s8.\< } s4 | \break\autoBreaksOff
        \grace { s8. }
        s8 s\! s16 s\> s s\! |
        s8 s\> s4 |
        \grace { s8.\< } s4. s8\! |
        s2\< | \break\autoBreaksOn
        \grace { s8. }
        s8 s\! s4 |
        s2\f |
      }
    }
  }
  \grace { s8. } s8\p s\< s s\! |
  s8\> s4 s8\! |
  s8 s\< s s\! | \break
  \grace { s8. } s8\> s4 s8\! |
  \grace { s8.\< } s4 s8\f\> s16 s\! |
  \grace { s8.\< } s4 s8\f\> s16 s\! |
  s2 |
  s8\p s\> s s\! | \break
  \grace { s8. } s2*3 |
  \once \override DynamicText.X-offset = #0.3
  \grace { s8\pp } s8 s\> s4 |
  s4 s\! |
  \once \override DynamicText.X-offset = #-4.8
  \once \override DynamicText.whiteout = ##t
  s2\ppp |
  s2*2 |
}

belowLower = {
  \repeat volta 2 {
    \grace { s8. }
    s2^\markup { \italic "sempre Ped." }
    s2*7 |
    \alternative { \volta 1 { \grace { s8. } s2*8 } }
  }
  \grace { s8. } s2*7 |
  \grace { s8.^\markup { \italic "con Ped." } } s2 |
}

\score {
  \header {
    opus = "Op.41, No.81" % or Op.41/II No.37
  }
  \new PianoStaff \with {
    instrumentName = \markup { \number {41} \fontsize #2 \bold "/" \number {81} }
    connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" { \upper }
    \new Dynamics { \dynamics }
    \new Staff = "lower" { \lower }
    \new Dynamics { \belowLower }
  >>
}
