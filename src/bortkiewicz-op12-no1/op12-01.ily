\version "2.25.4"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)
#(ly:set-option 'point-and-click #f)

\header {
  title = "Mazurka"
  composer = \markup { \caps { Sergei Bortkiewicz } }
  opus = "Op.12, No.1"
  % copyright = \markup {
  %   \pad-to-box #'(0 . 0) #'(0 . 3)
  %   \line {
  %     "Typeset in 2023 by"
  %     \with-color "dodgerblue" {
  %       \with-url "https://github.com/mbollmann/lilypond-scores/" {
  %         "Marcel Bollmann."
  %       }
  %     }
  %     "Released under"
  %     \with-color "dodgerblue" {
  %       \with-url "https://creativecommons.org/licenses/by/4.0/" {
  %         "CC-BY 4.0."
  %       }
  %     }
  %   }
  % }
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

\paper {
  %ragged-last-bottom = ##f
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
  \key e \minor
  \time 3/4
}

fromBass = {
  \tag #'changestaff { \voiceOne }
}
fromBassEnd = {
  \tag #'changestaff { \oneVoice }
}
toTreble = {
  \tag #'changeclef { \clef treble }
  \tag #'changestaff { \change Staff="upper" \voiceTwo }
}
toBass = {
  \tag #'changeclef { \clef bass }
  \tag #'changestaff { \change Staff="lower" \oneVoice }
}

upperA = {
  \global
  \clef treble
  \tempo \markup { "Lento ma non troppo" }

  \relative c''' {
    r4 \fromBass g( e) \fromBassEnd |
    r4 \fromBass g8.( fis16 e4) \fromBassEnd |
    r8 \fromBass g8\( b, e g b |
    e2.--\) ~ |
    e8 \once \override PhrasingSlur.height-limit = #4.0 g[\( \acciaccatura { fis16 g } fis8 e g, a] |
    b8[ d \acciaccatura { c16 d } c8 b e, fis] \fromBassEnd | 
    \voiceOne s4 g4. dis8 |
    dis8[ fis] e\) \oneVoice r8 r4 | % [8]
    r4 \fromBass g( e) \fromBassEnd |
    r4 \fromBass g8.( fis16 e4) \fromBassEnd |
    r8 \fromBass g8( b, e g b |
    e2.) ~ |
    e8 fis\( g g, a ais |
    b8 d c b e, fis \fromBassEnd |
    \voiceOne s4 g4. dis8 |
    dis8[ fis] e\) \oneVoice r8 r4 | % [16]
    f4( \fromBass gis,4.) 
    % manual fix for a buggy broken (cross-line) slur
           \shape #'(
             ((0 . 0) (0.5 . 1.2) (2.2 . 1.5) (3 . 1))
             ((1 . 1) (1 . 0) (1 . 0.5) (0 . 0))
           ) Slur
           f'8^( | \break
    g,8 f' e4) r \fromBassEnd |
    g4( \fromBass ais,4.) g'8( \fromBassEnd |
    a,8 g' \fromBass fis4) r \fromBassEnd |
    a4( \fromBass c,4.) a'8( \fromBassEnd |
    \tuplet 3/2 { <g e>8 b e) } <g g,>8 r8\fermata g,,8\( a |
    <b g e>2 <b fis dis>4 |
    e,2\) r4 | % [24]
  }
  \repeat segno 2 {
  \relative c'' {
    \fromBass <c e>4-.( q-. q-.) |
    <a c dis>2.-- \fromBassEnd |
    <f b d>4 <f b e>4.( <f b d>8) |
    <e c'>2 r4 | % [end of page 3 in original score]
    \voiceOne <a c>2 q4 \oneVoice |
    <dis, a' b>2.( |
    <d gis b>4) \acciaccatura d'8 \stemUp <c>4.^( <d, gis>8) \stemNeutral | % HACK for grace note
    <c e b'>2^( <c e a>8) r8 | % [32]
    \fromBass <c' e>4-.( q-. q-.) |
    <a c dis>4( \fromBassEnd a'8) r r4 |
    <f, b d>4 \stemUp \acciaccatura f'8 e4.^( <f, d'>8) | % HACK as above
    <e c'>2 r4 |
    \voiceOne <a c>2 q4 \oneVoice |
    <dis, a' b>2.( |
    <d gis b>4) \acciaccatura d'8 \stemUp <c>4.^( <d, gis>8) \stemNeutral | % HACK as above
    <c e b'>2^( <c e a>8) r8 | % [40] poco più vivo
    r4^\markup { \italic { poco più vivo } } <f a>4.->( e8) |
    \voiceOne e8[^\( <f a> <f a> d] d[ <f a> |
    <f a>8 des] des[ <f a> <f a> c]\) \oneVoice |
    r4 \voiceOne <f' a>4.->( <cis e>8) |
    <cis e>8[( <e g>]) <e g>[( <d f>]) <d f>[( <a cis>]) |
    \oneVoice <e cis'>8[( <f d'>]) <f d'>16 r r8 <f d'>4-- | % [46]
    r4 <bes d>4.->( a8) |
    \voiceOne a8[^\( <bes d> <bes d> g] g[ <bes d> |
    <bes d> f] f[ <bes d> <bes d> e,]\) \oneVoice |
    r4 <bes' d>4.->( <fis a>8) |
    <fis a>8[( <g bes>]) <g bes>[( <a, fis'>]) <a fis'>[( <bes g'>]) |
    <b gis'>8[( <c a'>]) <c a'>16 r r8 <c a'>4-- | % [52]
    r4 <f a>4.->( e8) |
    \voiceOne e8[^\( <f a> <f a> d] d[ <f a> |
    <f a>8 des] des[ <f a> <f a> c]\) \oneVoice | % [end of page 4 in original score]
    r4 \voiceOne <f' a>4.->( <cis e>8) |
    <cis e>8[( <e g>]) <e g>[( <d f>]) <d f>[( <a cis>]) |
    \oneVoice <e cis'>8[( <f d'>]) <f d'>16 r r8 <f d'>4-- | % [58]
    r8 <f d'>8 <f d'>[( <d' bes'>]) <d bes'>4 ~ |
    <d bes'>8 <c a'> q <bes g'> q <a f'> |
    q8( <g e'> <e' c'>4.) <es b'>8\( |
    <d bes'> <cis a'> <e cis'> <d bes'> \voiceOne d[ e]\) |
    e8( g f16) \oneVoice r16 r8 \voiceOne f4-- \oneVoice | % [63] vivace
  }
  \repeat volta 2 {
  \relative c'' {
    r8^\markup { \larger \italic { vivace }}_\markup {
    \center-align \concat { \italic ( \dynamic f \italic ) } } e-. \acciaccatura e8 dis8[( b] d4) |
    r8 cis-. \acciaccatura cis8 \stemDown c8[( g] b4) \stemNeutral |
    r8 bes-. \acciaccatura bes8 a8[\( e g e] |
    g fis cis dis\) s4 |
    r8 e''-. \acciaccatura e8 dis8[( b] d4) |
    r8 cis-. \acciaccatura cis8 c8[( g] b4) |
    r8 bes-. \acciaccatura bes8 a8[\( e g e] |
    g fis cis dis e4\)^\markup { \halign #-0.3 \concat { "( " \fermata " )" } } |
  }
  } % [71] Tempo I
  } % [end of page 6 in original score]

  % exact repeat of 1–24, except for the last bar
  %\bar "||"
  \tempo \markup { "Lento" }
  \relative c''' {
    r4 \fromBass g( e) \fromBassEnd |
    r4 \fromBass g8.( fis16 e4) \fromBassEnd |
    r8 \fromBass g8\( b, e g b |
    e2.--\) ~ |
    e8 g[\( \acciaccatura { fis16 g } fis8 e g, a] |
    b8[ d \acciaccatura { c16 d } c8 b e, fis] \fromBassEnd | 
    \voiceOne s4 g4. dis8 |
    dis8[ fis] e\) \oneVoice r8 r4 |
    r4 \fromBass g( e) \fromBassEnd |
    r4 \fromBass g8.( fis16 e4) \fromBassEnd |
    r8 \fromBass g8\( b, e g b |
    e2.\) ~ |
    e8 fis\( g g, a ais |
    b8 d c b e, fis \fromBassEnd |
    \voiceOne s4 g4. dis8 |
    dis8[ fis] e\) \oneVoice r8 r4 |
    f4( \fromBass gis,4.) f'8\( \fromBassEnd |
    g,8 f' \fromBass e4\) r \fromBassEnd |
    g4( \fromBass ais,4.) g'8( \fromBassEnd |
    a,8 g' \fromBass fis4) r \fromBassEnd |
    a4( \fromBass c,4.) a'8( \fromBassEnd |
    \tuplet 3/2 { <g e>8 b e) } <g g,>8 r8\fermata g,,8\( a |
    <b g e>2 <b fis dis>4 |
    e,4.\)^\markup \italic { "a tempo" } e8-. \acciaccatura e8 dis8[\( b] | % [coda]
    d4.\) \clef bass cis8-. \acciaccatura cis8 c8[\( g] |
    b4.\) bes8-. \acciaccatura bes8 a8[\( e] |
    g8 fis cis dis e4\) |
    <g b>2--( <fis ais>8-.) r8 |
    <f a>2--( <e gis>8-.) r8 |
    \voiceOne g2-- fis4-- ~ |
    fis4 ~ fis2( |
    e4) \oneVoice r4 r |
    <e g>2. ~ |
    <e g>2. |
    <e g>2. |
    <e g>4-. r r | \clef treble
    \voiceOne e'''\arpeggio \oneVoice r4 r\fermata |
  }
}

upperB = {
  \relative c''' {
    s2.*6 |
    g8[ b,] ~ b[ ais] a4 ~ |
    a4 g8 s4. |
  } % [8]
  \relative c''' {
    s2.*6 |
    g8[ b,] ~ b[ ais] a4 ~ |
    a4 g8 s4. |
  } % [16]
  s2.*8 | % [24]
  \repeat segno 2 {
  \relative c' {
    s2.*4 |
    e4\( f e\) |
    s2. |
    s4 \voiceOne <d gis>4. \voiceTwo s8 | % HACK for grace note
    s2. | % [32]
    s2.*2 |
    s4 \voiceOne <f b>4. \voiceTwo s8 | % HACK as above
    s2. |
    e4\( f e\) |
    s2. |
    s4 \voiceOne <d gis>4. \voiceTwo s8 | % HACK for grace note
    s2. | % [40] poco più vivo
    s2. |
    e4 s d |
    s4 des s |
    s2.*3 | % [46]
    s2. |
    a'4 s g |
    s4 f s |
    s2.*3 | % [52]
    s2. |
    e4 s d |
    s4 des s |
    s2.*3 | % [58]
    s2.*3 |
    s2 bes'4 |
    bes4( a16) s8. a4-- | % [63] vivace
    \repeat volta 2 { s2.*8 }
  } % [71] Tempo I
  }

  % exact repeat of 1–24
  \relative c''' {
    s2.*6 |
    g8[ b,] ~ b[ ais] a4 ~ |
    a4 g8 s4. |
  }
  \relative c''' {
    s2.*6 |
    g8[ b,] ~ b[ ais] a4 ~ |
    a4 g8 s4. |
  }
  s2.*13 |
  e2 ~ e4 ~ |
  e4 dis2( |
  e4) s2 |
  s2.*4 | \clef treble
  \relative c'' {
    <g b g'>4\arpeggio s2
  }
}

lower = {
  \global
  \clef bass

  \relative c {
    e4 \toTreble <b' e g>( <e g b>) \toBass |
    e,4 \toTreble <ais c g'>( <b e g>) \toBass |
    e,4 \toTreble <b' e g> \toBass d, |
    cis4 \toTreble <b' e g>( <e g b>) \toBass |
    c,4 \toTreble <ais' e' g>( <e' g c>) \toBass |
    b,4 \toTreble <b' e g>( <e g b>) \toBass |
    b,4 b' ~ <b dis> |
    e,4 \clef treble <b' e>^( <b e g>) \clef bass | % [8]
    e,4 \toTreble <b' e g>( <e g b>) \toBass |
    e,4 \toTreble <ais c g'>( <b e g>) \toBass |
    e,4 \toTreble <b' e g> \toBass d, |
    cis4 \toTreble <b' e g>( <e g b>) \toBass |
    c,4 \toTreble <ais' e' g>( <e' g c>) \toBass |
    b,4 \toTreble <b' e g>( <e g b>) \toBass |
    b,4 b' ~ <b dis> |
    e,,4 \clef treble <g' b e>( <b e g>) \clef bass | % [16]
    e,4 \toTreble <b' d>^( <b d gis>) \toBass |
    e,4 \toTreble <ais cis>^( <ais cis g'>) \toBass |
    e4 \toTreble <cis' e>^( <cis e ais>) \toBass |
    e,4 \toTreble <c' dis>^( <c dis a'>) \toBass |
    e,4 \toTreble <a c fis>( <c fis a>) \toBass |
    <e, b' g'>4\arpeggio <c g' ais e'>8 r8\fermata r4 |
    b'4( b,) <b a'> |
    e4( e,) r | % [24]
  }
  \repeat segno 2 {
  \relative c {
    \tuplet 3/2 4 {
      a8\(_\markup { \italic legatiss. } e' a \toTreble \omit TupletNumber c e a b a e\) |
      fis8\( dis c \toBass a gis b a fis dis\) |
      a8\( f' gis b d e d b gis\) |
      a8\( a, e' a b c b a e\) |
      fis,8\( c' e a b c b a e\) |
      b8\( fis' ais b d c b fis dis\) |
      e,8\( b' dis e f fis g gis b\) |
      e,8\( a, dis e fis gis a e c\) | % [32]
      a8\( e' a \toTreble \omit TupletNumber c e a b a e\) |
      fis8\( dis c \toBass a gis b a fis dis\) |
      a8\( f' gis b d e d b gis\) |
      a8\( a, e' a b c b a e\) |
      fis,8\( c' e a b c b a e\) |
      b8\( fis' ais b d c b fis dis\) |
      e,8\( b' dis e f fis g gis b\) |
      e,8\( a, dis e fis gis a e c\) | % [40] poco più vivo
    }
    f,4-. <f' a>4.->( e8) |
    << { e4 s d | s des s } \\
       { e8[_\( <f a> <f a> d] d[ <f a> | <f a> des] des[ <f a> <f a> c]\) }
    >> |
    f,4-. \change Staff="upper" \voiceTwo <f'' a>4.->(_\markup { \whiteout \italic { rubato assai } } <cis e>8) |
    <cis e>8[( <e g>]) <e g>[( <d f>]) \stemDown <d f>[( \stemUp \change Staff="lower" <a cis>]) \oneVoice \stemNeutral |
    bes,4( <f' d'>16) r r8 <bes d>4-- | % [46]
    g,4-. <bes' d>4.->( a8) |
    << { a4 s g | s f s } \\
       { a8[_\( <bes d> <bes d> g] g[ <bes d> | <bes d> f] f[ <bes d> <bes d> e,]\) }
    >> |
    c4-. <bes' d>4.->( <fis a>8) |
    <fis a>8[( <g bes>]) <g bes>[( <a, fis'>]) <a fis'>[( <bes g'>]) |
    f4( <c' a'>16) r r8 <f a>4-- | % [52]
    f,4-. <f' a>4.->( e8) |
    << { e4 s d | s des s } \\
       { e8[_\( <f a> <f a> d] d[ <f a> | <f a> des] des[ <f a> <f a> c]\) }
    >> | % [end of page 2 in original score]
    f,4-. \change Staff="upper" \voiceTwo <f'' a>4.->(_\markup { \whiteout \italic { rubato assai } } <cis e>8) |
    <cis e>8[( <e g>]) <e g>[( <d f>]) \stemDown <d f>[( \stemUp \change Staff="lower" <a cis>]) \oneVoice \stemNeutral |
    bes,4( <f' d'>16) r r8 <bes d>4-- | % [58]
    g,4-. <d' g bes>( <g bes d>) |
    <bes d g>4 r r |
    c,4( <g' bes c>) <bes c e> |
    \clef treble <c e bes'>4 r \clef bass c,4( |
    f,4) <c' f a>16 r r8 <a' c f>4-- | % [63] vivace
  }
  \repeat volta 2 {
  \relative c' {
    << { e4-. fis-. f-. | e-. dis-. d-. | cis-. c-. b-. | ais-. <a fis> ~ <a fis b>-> } \\
       { e2. ~ e2. ~ e2. ~ e2. } >> | \clef treble
%    << { e''4-. fis-. f-. | e-. dis-. d-. | cis-. c-. b-. | ais( <a fis> <b g>) } \\
%       { e,2. ~ e2. ~ e2. ~ e2. } >> | \clef bass
    << { e''4-. fis-. f-. | e-. dis-. d-. } \\
       { e,2. ~ e2. ~ } >> |
    \clef treble
    << { cis'4-. c-. b-. | ais( <a fis> 
         \once \override TextScript.outside-staff-priority = #2500
         <b g>)^\markup { \halign #-0.3 \concat { "( " \fermata " )" } }_\markup \center-align { \italic "   senza rep." } } \\
       { e,2. ~ e2. } >> | \clef bass
  }
  }
  }
  
  % exact repeat of 1–24, except for the last bar
  %\bar "||"
  \relative c {
    e4 \toTreble <b' e g>( <e g b>) \toBass |
    e,4 \toTreble <ais c g'>( <b e g>) \toBass |
    e,4 \toTreble <b' e g> \toBass d, |
    cis4 \toTreble <b' e g>( <e g b>) \toBass |
    c,4 \toTreble <ais' e' g>( <e' g c>) \toBass |
    b,4 \toTreble <b' e g>( <e g b>) \toBass |
    b,4 b' ~ <b dis> |
    e,4 \clef treble <b' e>^( <b e g>) \clef bass |
    e,4 \toTreble <b' e g>( <e g b>) \toBass |
    e,4 \toTreble <ais c g'>( <b e g>) \toBass |
    e,4 \toTreble <b' e g> \toBass d, |
    cis4 \toTreble <b' e g>( <e g b>) \toBass |
    c,4 \toTreble <ais' e' g>( <e' g c>) \toBass |
    b,4 \toTreble <b' e g>( <e g b>) \toBass |
    b,4 b' ~ <b dis> |
    e,,4 \clef treble <g' b e>( <b e g>) \clef bass |
    e,4 \toTreble <b' d>^( <b d gis>) \toBass |
    e,4 \toTreble <ais cis>^( <ais cis g'>) \toBass |
    e4 \toTreble <cis' e>^( <cis e ais>) \toBass |
    e,4 \toTreble <c' dis>^( <c dis a'>) \toBass |
    e,4 \toTreble <a c fis>( <c fis a>) \toBass |
    <e, b' g'>4\arpeggio <c g' ais e'>8 r8\fermata r4 |
    b'4( b,) <b a'> |
    << { e4 ~ e fis4-. | f-. e-. dis-. | d-. cis-. c-. | b( <a fis> <b g>) } \\
       { e4 e,2 ~ | e2. ~ | e2. ~ | e2. }
    >> |
    r8 e'[( dis b] d) r |
    r8 d[( cis a] c) r |
    r8 c\( b ais c b |
    ais b c b fis b,\) |
    e4. e8\( dis b |
    e dis b e dis b |
    e4.\) e8\( dis b |
    e dis b^\markup { \italic rit. } e dis b\) |
    e,4-.\sustainOn r r |
    <e'' b' e>4\arpeggio r r\fermata\sustainOff |
  }

  \bar "|."
}

roundF = \markup {
    \center-align \concat { \bold { \italic ( }
           \dynamic f \bold { \italic ) } } }

dynamics = {
  \once \override TextScript.Y-offset = #-0.6
  \tag #'changestaff { \once \override TextScript.X-offset = #-3.6 }
  s4^\markup { \italic "dolce" } s\> s\! |
  s4 s\> s\! |
  s16 s\< s8 s4. s8\! |
  s2.*3 |
  s4. \tag #'changestaff { \once \override DynamicLineSpanner.Y-offset = #'2.0 } 
    s8\> s4 |
  s8 s8\! s2 | % [8]
  s4^\p s\> s\! |
  s4 s\> s\! |
  s16 s\< s8 s4. s8\! |
  s2.*3 |
  s4. \tag #'changestaff { \once \override DynamicLineSpanner.Y-offset = #'2.0 } 
    s8\> s4 |
  s8 s8\! s2 | % [16]
  s4^\p s2 |
  s2. |
  s4\cresc s2\! |
  s2. |
  s4\< s4. s8\! |
  s4 s8\mf s8 s4\p |
  s2.*2 | % [24]
  \break
  \repeat segno 2 {
  s4^\p s2 |
  s2.*3 |
  s4\< s4\!\> s4\! |
  s2.*3 | % [32]
  s2.*2 | \break
  s2.*2 |
  s4\< s4\!\> s4\! |
  s2.*3 | % [40] poco più vivo
  s4^\mf s2 |
  s8 s\cresc s2 |
  s2 s8 s\!
  s2.*2 |
  s8\> s4 s8\! s4 | % [46]
  s2. |
  s8 s8\cresc s2 |
  s2 s8 s\! |
  s2.*2 |
  s8\> s4 s8\! s4 | % [52]
  s4^\mf s2 |
  s8 s\cresc s2 |
  s2 s8 s\! |
  s2.*3 | % [58]
  s4\f s2 |
  s2. |
  s8\< s s2\! |
  s2 s4\> |
  s4 s8\! s8 s4 | % [63] vivace
  \once \override Score.Footnote.annotation-line = ##f
  \footnote \markup { \small { † } } #'(0.1 . 8) \markup { \super † Expressions in braces only on \italic { D.S. } repeat. } Staff.BarLine
  \repeat volta 2 {
  s2. | 
  s2.*5 |
  \set decrescendoText = \markup { \smaller \whiteout \italic { dim. e (molto) rit. } }
  \set decrescendoSpanner = #'text
  s16 s8.\> s2 | s2 s4\! |
  }
  }

  \unset decrescendoText
  \unset decrescendoSpanner
  \pageBreak
  \autoPageBreaksOff

  % exact repeat of 1–24
  \once \override TextScript.Y-offset = #-0.6
  \tag #'changestaff { \once \override TextScript.X-offset = #-2.8 }
  s4^\markup { \italic "dolce" } s\> s\! |
  s4 s\> s\! |
  s16 s\< s8 s4. s8\! |
  s2.*3 |
  s4. \tag #'changestaff { \once \override DynamicLineSpanner.Y-offset = #'2.0 } 
    s8\> s4 |
  s8 s8\! s2 |
  s4^\p s\> s\! |
  s4 s\> s\! |
  s16 s\< s8 s4. s8\! |
  s2.*3 |
  s4. \tag #'changestaff { \once \override DynamicLineSpanner.Y-offset = #'2.0 } 
    s8\> s4 |
  s8 s8\! s2 |
  s4^\p s2 |
  s2. |
  s4\cresc s2\! |
  s2. |
  s4\< s4. s8\! |
  s4 s8\mf s8 s4\p |
  s2\> s8 s8\! |
  s4. s\p |
  s2.*2 |
  s8\> s4. s4\! |
  s8\p s\> s4 s8\! s |
  s4\> s s8\! s |
  s2. |
  s4\> s4. s8\! |
  \once \override DynamicText.X-offset = #'0.3
  s2.\pp |
  s2. |
  s4. s\> |
  s2 s8 s\! |
  \once \override DynamicText.X-offset = #'0.3
  s2.\ppp |
  s2. |
  
  \autoPageBreaksOn
}

music = \new PianoStaff \with {
    instrumentName = \markup { \bold "Piano" }
    connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      %\expressive
      \new Voice = "A" { \oneVoice \upperA }
      \new Voice = "B" { \voiceTwo \upperB }
    >>
    \new Dynamics { \dynamics }
    \new Staff = "lower" \lower
  >>
