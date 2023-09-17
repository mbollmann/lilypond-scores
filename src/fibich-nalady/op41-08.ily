\version "2.23.14"

global = {
  \key es \major
  \time 6/8
}

upperA = {
  \global
  \clef treble
  \tempo \markup { "Adagio" }

  \relative c'' {
    \oneVoice
    g4. g4 g8 |
    g8( bes ges f4) bes,8( |
    g'4.) \voiceOne c4 c8 |
    g4.( g'8) \oneVoice r8 \voiceOne bes,8( |
    <g' g,>4. <f f,>4) bes,8( |
    bes'4. es,4) bes8( |
    <g' g,>4. <f f,>4) bes,8( |
    bes'4. es,4.) |

    es8( ges as, des4 d8) |
    es8( ges bes, ces des es) |
    es4. ~ es4 es8 |
    es4. ~ es4 des8 |
    es4. ~ es4 es8 |
    es4.( ~ es8 bes b) |

    \oneVoice
    \acciaccatura { c,8 c16[ es as] } c4. c4 c8 |
    c8( es ces bes4) es,8( |
    c'4.) \voiceOne f4 f8 |
    c4.( c'8) \oneVoice r8 r |
    <c as>8( <bes g> <g e>) \voiceOne <as f>8 r r |
    \oneVoice <as, f>8( <bes g> <c as>) <c as>( <d bes> <es c>) |
    <bes ges>4^(^\( <c ges>8) <as f>4.\) |
    <as fes>4^( <bes fes>8 ges8) as^( a) |
    <bes es,>4 q8( <es as, es> <as, es> <bes f d>) |
    <es, c>4.-- <f d>-- |

    \oneVoice
    \acciaccatura { g,16[ bes es] } g4. g4 g8 |
    g8( bes ges f4) bes,8( |
    g'4.) \voiceOne c4 c8 |
    g4.( g'8) \oneVoice r8 \voiceOne bes,8 |
    <g' g,>4.( <f f,>4) bes,8( |
    bes'4. es,4) bes8( |
    <g' g,>4. <f f,>4) bes,8( |
    bes'4. es,4.) |

    es8( ges as, des4 d8) |
    es8( ges bes, ces des es) |
    es4. ~ es4 es8 |
    \oneVoice <es g, es>8( <f bes, f> <g es g,>) \voiceOne <es c>( <f d> <g es>) |
    \oneVoice <g, es>8( <as f> <bes g>) <f as,>( <es g,> <d f,>) |
    <es g,>( <f bes,> <g es>) \voiceOne es( <f d> <g es>) |
    \change Staff = "lower"
    <g, es>8( <as f> <bes g>) <f as,>( <es g,> <d f,>) |
    es16^\( g c bes32 \change Staff = "upper" es g16 c
            bes32 es g16 c bes32 es g16 c\) |
    bes8 \oneVoice r8 r
    \resetRelativeOctave c''
    <g bes es g>4\arpeggio r8 |
    <g es bes g>2.\arpeggio |
  }
}

upperB = {
  \relative c'' {
    s2.*2 |
    s4. g4. |
    g4. ~ g8 s8 bes8 ~ |
    bes4. s4 bes8 ~ |
    bes4. ~ bes4 bes8 ~ |
    bes4. ~ bes4 bes8 ~ |
    bes4. ~ bes4. |

    r4 as8 ~ as ases4 |
    ges4 bes8 as ases ges! |
    << { \voiceTwo es4. ~ es4 } \\ { \voiceFour as4. as4^> } >> r8 |
    << { \voiceTwo es4. ~ es4 } \\ { \voiceThree as4.( g4_>) } >> r8 |
    << { \voiceTwo es4. ~ es4 } \\ { \voiceThree as4.( f4_>) } >> r8 |
    << { \voiceTwo es8 r r s4 } \\ { \voiceThree as8_( g f es4) } >> r8 |

    s2.*2 |
    s4. c'4. |
    c4. ~ c8 s s |
    s4. <c as>8 <bes g> <g e> |
    s2.*2 |
    s4. es8 es4 |
    s2.*4 |
    s4. g4. |
    g4. ~ g8 s bes ~ |
    bes4. s4 bes8 ~ |
    bes4. ~ bes4 bes8 ~ |
    bes4. s4 bes8 ~ |
    bes4. ~ bes4. |

    r4 as8 ~ as ases4 |
    ges4 bes8 as ases ges! |
    << { \voiceTwo es4. ~ es4 } \\ { \voiceFour as4. as4^> } >> r8 |
    s4. as4. |
    s2. |
    s4. <as, c>4. |
    s2.*4 |
  }
}


lower = {
  \global
  \clef bass

  \relative c, {
    \stemUp es8[ \stemDown <bes'' es>8 q] q q q |
    <as bes d>8 q q q q <as d> |
    \stemUp es,8[ \stemDown <bes'' es>8 q] <a es'> q q |
    g,8 <g' bes d> q q q q |
    ges,8 <as' bes c>( <as bes cis> <as bes d> <as bes g'> <as bes as'>) |
    bes, <g' bes d>( <g bes f'> <g bes es> <g bes d> <g bes c>) |
    \stemUp bes,, \stemDown <as'' bes c>( <as bes cis> <as bes d> <as bes g'> <as bes as'>) |
    bes, <g' bes d>( <g bes f'> <g bes es> <g bes d> <g bes es>) |

    ges,8 <ges' bes fes'> q q q q |
    ges, <ges' ces es> q q q q |
    <f, f,> <f' ces'> q q q q |
    <fes, fes,> <fes' ces'> q q q q |
    <es, es,> <es' as ces> q q q q |
    <es, es,> <es' bes' des> <es as des> <es g des'>4. |

    <as, as,>8 <es' as c>( <e as c> <g as c> <f as c> <fes as c>) |
    <as, as,>8 <es' g des'> q q <f as des> <g bes des> |
    <as, as,>8 <es' as c> q <d d,> <as' c f> q |
    <c, c,>8 <g' c es> q q q q |
    \stemUp <f, f,>8 \stemDown <as' c f> q q q q |
    \stemNeutral
    <f f,>8 \noBeam <as c> <fes fes,> <es es,> \noBeam <c' es> \noBeam <c, c,> |
    <es es,> \noBeam <bes' es> <as as,> <des, des,> \noBeam <as' c> <as des> |
    <des, des,> \noBeam <as' des> <ges ges,> <ces, ces,> << { f8( fis) } \\ { ces4-> } >> |
    << { g'8( bes d c f, as) } \\ { bes,4. bes8 bes4 } >> |
    <c g'>4.-- <bes as'>4.-- |

    % identical to the first 11 bars
    \stemUp es,8[ \stemDown <bes'' es>8 q] q q q |
    <as bes d>8 q q q q <as d> |
    \stemUp es,8[ \stemDown <bes'' es>8 q] <a es'> q q |
    g,8 <g' bes d> q q q q |
    ges,8 <as' bes c>( <as bes cis> <as bes d> <as bes g'> <as bes as'>) |
    bes, <g' bes d>( <g bes f'> <g bes es> <g bes d> <g bes c>) |
    \stemUp bes,, \stemDown <as'' bes c>( <as bes cis> <as bes d> <as bes g'> <as bes as'>) |
    bes, <g' bes d>( <g bes f'> <g bes es> <g bes d> <g bes es>) |
    ges,8 <ges' bes fes'> q q q q |
    ges, <ges' ces es> q q q q |
    <f, f,> <f' ces'> q q q q |

    \stemNeutral
    bes,,8 \noBeam bes'' bes, bes, \noBeam bes'' bes, |
    bes,8 \noBeam bes'' bes, bes, \noBeam bes'' bes, |
    r8 bes bes, r bes' bes, |
    \voiceTwo
    r8 bes' bes, r bes' bes, |
    es16\( bes' es g bes es \change Staff = "upper" g bes es g bes es\) |
    g8 s4 \change Staff = "lower"
    \resetRelativeOctave c
    \oneVoice
    <es bes' es>4\arpeggio r8 |
    <es bes es,>2.\arpeggio |
  }

  \bar "|."
}

dynamics = {
  s2.\p^\markup { ben tenuto } |
  s8\< s8 s\> s8\! s4 |
  s4. s8\< s4 |
  s8\mf s\> s\! s8 s8\< s |
  \once \override DynamicText.X-offset = #-0.8
  s8\f s8\> s\! s4. |
  s8\p s4 s4 s8\f |
  s8\> s4 s8\! s4 |
  s2.\p |
  s2\p^\markup { espress. } s8\< s\! |
  s8\< s\> s\! s8\< s s\! |
  s2.\mf |
  s2. |
  s2.\p |
  s2. |
  s2.\p |
  s8\< s8 s\> s8\! s4 |
  s8\< s4 s8\rfz s4 |
  s8\> s4 s8\! s4 |
  \once \override DynamicText.X-offset = #0.2
  s2.\pp |
  s8\< s2 s8\! |
  s8\< s8 s\> s8\! s4 |
  s8\< s8 s\> s8\! s8\< s8\! |
  s2. |
  s4.\> s\! |
  s2.\pp |
  s8\< s8 s\> s8\! s4 |
  s4. s8\< s4 |
  s8\mf s\> s\! s8 s8\< s |
  \once \override DynamicText.X-offset = #-0.8
  s8\f s\< s4. s8\! |
  s4.\p s8\> s4 |
  s8\mf s\< s s\! s4 |
  s8\mf s\> s s\! s4 |
  s8^\markup { espr. } s2 s8 |
  s8\< s\> s\! s8\< s s\! |
  s8\f s\< s4. s8\! |
  s4.\p s8\> s4 |
  s8 s\! s2 |
  \once \override DynamicText.X-offset = #0.6
  s2.\pp |
  \once \override DynamicLineSpanner.Y-offset = #2.6
  s8\> s2 s8\! |
  s4.
    \once \override DynamicLineSpanner.Y-offset = #1.6
    s16\> s s8. s16\! |
  s2.*2
}

expressive = {
  s2.*2 |
  s4. s^\rfz |
  s2.*10 |
  s4. s^\markup { \italic { poco rit. } } |
  s2.^\markup { \italic { a tempo } } |
  s2.*11 |
  s4. s^\rfz |
  s2. |
  s8 s^\> s s\! s4 |
  s2.*13 |
}

\score {
  \header {
    %piece = "Nálada"
    opus = "Op.41, No.8"
  }
  \new PianoStaff \with {
    instrumentName = \markup { \number {41} \fontsize #2 \bold "/" \number 8 }
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
