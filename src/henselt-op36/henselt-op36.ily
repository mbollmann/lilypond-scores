\version "2.25.4"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Valse Mélancolique"
  composer = \markup { \caps { Adolf von Henselt } }
  opus = "Op.36"
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
  \key d \minor
  \time 3/4
}

fullRest = { R1*3/4 }
middleUp = { \change Staff = "upper" \voiceTwo }
middleDown = { \change Staff = "lower" \voiceOne }
moreLeftSpace = \once \override NoteHead.extra-spacing-width = #'(-4 . 0)
prallInsideSlur = {
  \once \override Script.outside-staff-priority = ##f
  \once \override Script.avoid-slur = #'inside
}
raiseSlur = \shape #'(
             (0 . 1.5) (0 . -0.5) (0 . -0.5) (0 . 1.5)
            ) Slur

rit = \markup \italic { rit. }
ritAssai = \markup \italic { rit. assai }
pocoRit = \markup \italic { poco rit. }
atempo = \markup \italic { a tempo }

upper = {
  \global
  \clef treble
  %\tempo \markup { "Lento ma non troppo" }

  \relative c'' {
    \once \override PhrasingSlur.height-limit = #6
    a4.\( bes8\prall a d |
    \voiceOne cis8 e4 \moreLeftSpace g8 f e |
    \oneVoice d8 f a a, \acciaccatura c8 bes8 a\) |
    \voiceOne a4.\( g8 e' d\) |
    d4.\( c8\prall b c |
    \oneVoice e8 g e' d c bes\) |
    bes4.\( a8 g e |
    cis8 a gis a \acciaccatura c8 bes8 a\) |
    a4.\( bes8\prall a d |
    \voiceOne cis8 e4 \moreLeftSpace g8 f e |
    \oneVoice d8 f a d4\) a,8\( ~ |
    a8 fis g cis d e |
    f4.\) 
    \once \override PhrasingSlur.height-limit = #7
    gis,8\( a cis |
    d f a f' e d |
    c bes a e g f\) |
  } % [end of page 1]
  \repeat volta 2 {
    \relative c'' {
      \tag #'print { d4. }
      \tag #'tablet { \volta 1 { d4. }\volta 2 { d4.\) } }
      a8( \acciaccatura c8 bes8 a) |
      \voiceOne \acciaccatura a8 e'2. ~ |
      e2 f8\( e |
      e8 d cis d e d\) |
      c2. ~ |
      c8\( bes a bes c bes\) |
      a2 e4 ~ |
      e8\( e dis e f e\) |
      e2 r8 e8 |
      e'2. ~ |
      e4. e8( \acciaccatura g8 f8 e) |
      e8\( d cis d e d\) |
      cis2 c4 ~ |
      c8\( bes a bes c bes\) |
      a2^\rit e4 ~ |
      e8\( e dis e f e\) |
      e4^\ritAssai r r | % [a tempo]
      \oneVoice \once \override PhrasingSlur.height-limit = #6
      a4.\(^\atempo bes8\prall a d |
      \voiceOne cis8 e4 \moreLeftSpace g8 f e |
      \oneVoice d8 f a a, \acciaccatura c8 bes8 a\) |
      \voiceOne a4.\( g8 e' d\) |
      d4.\( c8\prall b c |
      \oneVoice e8 g e' d c bes\) |
      bes4.\( a8 g e |
      cis8 a gis a \acciaccatura c8 bes8 a\) |
      a4.\( bes8\prall a d |
      \voiceOne cis8 e g, g' f e\) |
      \oneVoice d8\( f a d\) r a,8\( ~ |
      a8 fis g cis d e |
      f4.\) \once \override PhrasingSlur.height-limit = #7
      gis,8\( a cis |
      d f a f' e d |
      c8 bes a e \acciaccatura e8 g8 f |
    }
  }
  d''2\) \voiceOne r4 |
  \section
  \key bes \major
  \relative c' {
    \voiceOne r4 \oneVoice <f bes d> q |
    r4 <f bes d> q |
    \voiceOne r4 <bes d> q |
    r4 <a d> <a c> |
    << { r4 <g bes> <e bes' d> } \\ { \voiceThree d2 s4 } >> |
    \oneVoice r4 <f a d> <a d> |
    << { d4 cis d | e4(^\pocoRit g8 f e es) } \\
       { <bes g>2. | <bes g>4 a2 } >> | % [a tempo]
    \voiceOne r4^\atempo \oneVoice <f bes d> q |
    r4 <f bes d> q |
    \voiceOne r4 <bes d> q |
    << { d4( cis c) } \\ { \voiceFour a2 a4 } >> |
    \voiceOne bes2 <bes es,>4 |
    \oneVoice <bes d,>4 <bes f> q |
    \voiceOne <a f>4 q <a f es> |
    <bes f d>4 r8 cis( d dis) |
    \voiceOne e2( d8 c) | % [end of page 3]
    c8( f a,4 d8 c) |
    \oneVoice bes8\( d g, c, a' g |
    f a, c f a c\) |
    \voiceOne e2( d8 c) |
    c8( f a,4 d8 c) |
    bes8\( d g, c, a' g\) |
    g4.(^\pocoRit es8 g f) | % [a tempo]
    \voiceOne r4^\atempo \oneVoice <f bes d> q |
    r4 <f bes d> q |
    \voiceOne r4 <b d> q |
    r4 <g b d> <a c> |
    bes2 <bes es,>4 |
    \oneVoice <bes d,>4 <bes es,> <bes f> |
    << { a2 a4 } \\ { \voiceThree ges4 f s } >> |
    \voiceOne bes4 r8 cis( d dis) |
    e2( d8 c) |
    c8( f a,4 d8 c) |
    \oneVoice bes8\( d g, c, a' g |
    f a, c f a c\) |
    \voiceOne e2( d8 c) |
    c8( f a,4 d8 c) |
    bes8\( d g, c, a' g\) |
    g4.(^\pocoRit es8 g f) | % [a tempo]
    \voiceOne r4^\atempo \oneVoice <f bes d> q |
    r4 <f bes d> q |
    \voiceOne r4 <b d> q |
    r4 <b d> <f c'> |
    <f bes>2 <es bes'>4 | % [end of page 4]
    \oneVoice <d bes'>4 <es bes'> <f bes> |
    \voiceOne a2 a4 |
    bes2 \oneVoice r4 |
  }
  \section
  \key d \minor
  % This is essentially a "da capo"
  \relative c'' {
    a4.\(^\markup \italic { espress. } bes8\prall a d |
    \voiceOne cis8 e4 \moreLeftSpace g8 f e |
    \oneVoice d8 f a a, \acciaccatura c8 bes8 a\) |
    \voiceOne a4.\( g8 e' d\) |
    d4.\( c8\prall b c |
    \oneVoice e8 g e' d c bes\) |
    bes4.\( a8 g e |
    cis8 a gis a \acciaccatura c8 bes8 a\) |
    a4.\( bes8\prall a d |
    \voiceOne cis8 e4 \moreLeftSpace g8 f e |
    \oneVoice d8 f a d4\) a,8\( ~ |
    a8 fis g cis d e |
    f4.\) gis,8\( a cis |
    d f a f' e d |
    cis bes a e g f\) |
    d4. a8( \acciaccatura c8 bes8 a) | % [like repeat volta 1]
    \voiceOne \acciaccatura a8 e'2. ~ |
    e2 f8\( e |
    e8 d cis d e d\) |
    c2. ~ |
    c8\( bes a bes c bes\) |
    a2 e4 ~ |
    e8\( e dis e f e\) |
    e2 r8 e8 |
    e'2. ~ |
    e4. e8( \acciaccatura g8 f8 e) |
    e8\( d cis d e d\) |
    cis2 c4 ~ |
    c8\( bes a bes c bes\) |
    a2^\markup \italic { poco rall. } e4 ~ |
    e8\( e dis e f e\) |
    e4 r r | % [a tempo]
    \once \override PhrasingSlur.height-limit = #6
    \oneVoice a4.\(^\atempo \prallInsideSlur bes8\prall a d |
    cis8 e g, g' f e |
    d8 f a a, \acciaccatura c8 bes8 a\) |
    \voiceOne a4.\( g8 e' d\) |
    \once \override PhrasingSlur.height-limit = #5
    \once \override PhrasingSlur.eccentricity = #-0.5
    d4.\( c8\prall b c |
    \oneVoice e8 g e' d c bes\) |
    bes4.\( a8 g e |
    cis8 a gis a \acciaccatura c8 bes8 a\) |
    a4.\( bes8\prall a d |
    \voiceOne cis8 e g, g' f e\) |
    \oneVoice d8\( f a d4\) a,8\( ~ |
    a8 fis g cis d e |
    f4.\) gis,8\( a cis |
    d f a f' e d | % [end of page 6]
  }
  \relative c''' {
    c8 bes a g f e\) |
    d( cis d e fis g) |
    bes8( a g fis es d |
    c b c d e f) |
    a8->( g f e d cis) |
    e8->( d a f e d) |
    << { c'8->([ bes g es c8. bes16]) | bes8(^\markup \italic { rall. } a f' e bes' a) } \\
       { s4. es4-> s8 | s4. e4-> ~ e8 } >> | % [a tempo]
    <a d,>4^\atempo <a f>-.( q-.) |
    <g e>4( <bes g>) q |
    r4 <a f>-.( q-.) |
    <g e>4( <bes g>) q |
    r4 <a f>-.( q-.) |
    <g e>4( <bes g>) q |
    r4 <a f>-.( q-.) |
    r4 <a f>-.( q-.) |
    r4 <a f>-.( q-.) |
    r4 <a f>-.( q-.) |
    <a f>4 r4 s4 |
    s2. |
    s4 r4 r4 |
    <a f>2. |
    <f d' f>4 r r |
  }
  \bar "|."
}

middle = {
  s2.*3
  \relative c' {
    s2 f4 ~ |
    f4 e4 s4 |
  }
  s2.*10 | % [end of page 1]
  \repeat volta 2 {
    s2. |
    \relative c'' {
      r4 g( a |
      \prallInsideSlur bes\prall a g) |
      g2 f4 ~ |
      f8( e dis e f e |
      e2) d4 ~ |
      d8( c b c d c) |
      c2-> b4 ~ |
      b8( gis a bis cis e) |
      g2\( a4 |
      \prallInsideSlur bes\prall a g\) |
      g4 fis f ~ |
      f8( e dis e f e) |
      e4 es d ~ |
      d8( cis bis cis d c) |
      c2 b4 |
      bes8^( a cis e bes' a) | % [a tempo]
      s2.*3 |
      s2 f4 |
      e2 s4 |
      s2.*10 |
    }
  }
  s2 f4
  \key bes \major
  \relative c' {
    \tag #'print { \once \override PhrasingSlur.height-limit = #14 }
    \tag #'tablet { \once \override PhrasingSlur.height-limit = #10 }
    d4_\( \middleDown c8 bes a g |
    f4 bes d\) |
    \middleUp f4( g d) |
    f2( es4) |
    \once \override PhrasingSlur.height-limit = #10
    \once \override PhrasingSlur.eccentricity = #-0.5
    d4_\( \middleDown c8 bes a g\) |
    \once \override Slur.height-limit = #1.4
    f8_( a_\cresc d4 f4->) ~ |
    \once \override PhrasingSlur.height-limit = #1.4
    f4_\(_\f e d |
    cis\> \voiceThree c \voiceOne f,\)\! | % [a tempo]
    \tag #'print { \once \override PhrasingSlur.height-limit = #14 }
    \tag #'tablet { \once \override PhrasingSlur.height-limit = #24 }
    \once \override PhrasingSlur.eccentricity = #-3
    \middleUp d'4_\( \middleDown c8 bes a g |
    f4 bes d\) |
    \middleUp f4( g d) |
    f4( e es) |
    \tag #'print { 
      \once \override PhrasingSlur.height-limit = #3
      \once \override PhrasingSlur.eccentricity = #-2.5
    }
    \tag #'tablet {
      \shape #'(
             (0.2 . 5) (-1 . -1) (-1 . -1) (0 . 2)
            ) PhrasingSlur
    }
    d4_\( c8 bes a \middleDown g |
     f8 bes c4 d\) |
    \once \override Slur.height-limit = #18
    \middleUp es8_( \middleDown a, \middleUp d4 c) |
    bes4 s2 |
    <e g>2. | % [end of page 3]
    f2 s4 |
    s2.*2 |
    <e g>2. |
    f2 s4 |
    s2 e4 |
    << { \voiceFour es2 s4 } \\ { \voiceTwo a,4. s4. } >> | % [a tempo]
    \once \override PhrasingSlur.height-limit = #16
    \once \override PhrasingSlur.ratio = #0.36
    \once \override PhrasingSlur.eccentricity = #1.8
    \voiceTwo d4_\( c8 bes a \middleDown  g |
    f4 bes \middleUp d\) |
    f4( g d) |
    f2( es4) |
    d4_\( c8 bes a \middleDown g\) |
    f8_( bes c4 d4) |
    \middleUp es8_( \middleDown a, \middleUp d4 <c es>) |
    <bes d>4 s2 |
    <e g>2. |
    f2 s4 |
    s2.*2 |
    <e g>2. |
    f2 s4 |
    s2 e4 |
    << { \voiceFour es2 s4 } \\ { \voiceTwo a,4. s4. } >> | % [a tempo]
    \middleUp d4_\( \middleDown c8 bes a g |
    f4 bes \middleUp d\) |
    f4( g d) |
    f2( es4) |
    \once \override PhrasingSlur.height-limit = #6
    \once \override PhrasingSlur.eccentricity = #-1
    d4\( c8 bes a \middleDown g | % [end of page 4]
    f8 bes c4 d\) |
    \middleUp <es g>8_( \middleDown a, \middleUp <d f>4 <c es>) |
    <bes d>2 s4 |
  }
  \key d \minor
  s2.*3
  \relative c' {
    s2 f4 |
    e2 s4 |
  }
  s2.*11
  \relative c'' {
    r4 g( a |
    \prallInsideSlur bes\prall a g) |
    g2 f4 ~ |
    f8( e dis e f e |
    e2) d4 ~ |
    d8( c b c d c) |
    c2-> b4 ~ |
    b8( gis a bis cis e) |
    g2\( a4 |
    \prallInsideSlur bes\prall a g\) |
    g4 fis f ~ |
    f8( e dis e f e) |
    e4 es d ~ |
    d8( cis bis cis d c) |
    c2 b4 |
    \shape #'(
             (0.6 . 0) (0.4 . 0) (0 . 0) (0 . 0)
            ) Slur
    bes8^( a cis e bes' a) | % [a tempo]
    s2.*3 |
    s2 f4 ~ |
    f4 e4 s4 |
    s2.*9 |
  } % [end of page 6]
  s2.*8 |
  \middleDown
  \relative c {
    \voiceThree a4. \voiceOne bes8\(\prall a d |
    bes d g, g' f e\) |
    a,8( d f a) a,4 |
    bes4.( g8 e' d) |
    a( d f d') a,4 |
    bes4.( g8 e' d) |
    a( d f a) a,4 ~ |
    a8( d f d') a,4 ~ |
    a8( d f a) a,4 ~ |
    a8( d f d') a,4 ~ |
    a8\( d f a \middleUp \oneVoice d f |
    a d f a d f |
    a4\) s2 |
    s2.*2
  }
}

lowerChords = {
  \global
  \clef bass

  \relative c' {
    r4 << { f2 } \\ { \voiceFour a,4( d) } >> |
    r4 \change Staff = "upper" << { \voiceTwo bes'4->( a) } \\ { \voiceFour <g cis,>2 } >> |
    \change Staff = "lower" r4 <f a,>2 |
    r4 <d g,>2 |
    r4 <g bes,>4 <g e bes> |
    q q q |
    r4 <g e a,> q |
    r4 <g cis, a> q |
    r4 << { f2 } \\ { \voiceFour a,4( d) } >> |
    r4 \change Staff = "upper" << { \voiceTwo bes'4( a8 g) } \\ { \voiceFour <g cis,>2 } >> |
    \change Staff = "lower" r4 <f a,>2 |
    r4 <d g,>2 |
    s2.*3 |
  } % [end of page 1]
  \repeat volta 2 {
    \relative c' {
      r4 <a f'> r |
      r4 \raiseSlur e'( f |
      g f e) |
      r4 <a, d>_( 
        %\change Staff = "upper" \voiceFour 
        <b gis'>) | 
        %\change Staff = "lower" \voiceOne 
      r4 <c a'>_( <a c>) |
      r4 <f bes>4_( <bes f'>) |
      r4 <e, a>4_( <a \parenthesize e'>) |
      s2.*2 |
      s4 \raiseSlur e'( f |
      g f e) |
      r4 <a, d>_( 
        %\change Staff = "upper" \voiceFour 
        <b gis'>) | 
        %\change Staff = "lower" \voiceOne 
      r4 <a a'>_( <e a>) |
      r4 <f bes>_( <bes f'>) |
      r4 <e, a>_( <a \parenthesize e'>) |
      r4 <gis d'>_( <d' gis>) |
      s2. | % [a tempo]
      r4 f2 |
      r4 \change Staff = "upper" << { \voiceTwo bes4->( a) } \\ { \voiceFour <g cis,>2 } >> |
      \change Staff = "lower" r4 <f a,>2 |
      r4 <d g,>2 |
      r4 <g \parenthesize e bes>4 <g e bes> |
      q q q |
      r4 <g e a,> q |
      r4 <g cis, a> q |
      r4 << { f2 } \\ { \voiceFour a,4( d) } >> |
      r4 << { bes'4( a8 g) } \\ { \voiceFour cis,2 } >> |
        %\change Staff = "upper" << { \voiceTwo bes'4->( a8 g) } \\ { \voiceFour cis,2 } >> \change Staff = "lower" 
      r4 <f a,>2 |
      r4 <d g,>2 |
      s2.*3 |
    }
  }
  \relative c' { r4 <f a,>4 s4 }
  \key bes \major
  s2.*15 |
  \relative c { 
    \voiceOne r8 f8_( d' bes g' f) |
    <bes, c>2. | % [end of page 3]
    <a c>2 <fis dis'>4 |
    <g e'>2 <e bes'>4 |
    r8 c8_( f a c4) |
    <bes c>2. |
    <a c>2 <fis dis'>4 |
    <g e'>2 bes4 |
    c,8_( f a2) | % [a tempo]
    s2.*7 |
    \voiceOne r8 f8_( d' bes g' f) |
    <bes, c>2. | 
    <a c>2 <fis dis'>4 |
    <g e'>2 <e bes'>4 |
    r8 c8_( f a c4) |
    <bes c>2. |
    <a c>2 <fis dis'>4 |
    <g e'>2 bes4 |
    c,8_( f a2) | % [a tempo]
    s2.*5 | % [end of page 4]
    s2.*3
  }
  \key d \minor
  % This is essentially a "da capo"
  \relative c' {
    r4 << { f2 } \\ { \voiceFour a,4( d) } >> |
    r4 \change Staff = "upper" << { \voiceTwo bes'4( a8 g) } \\ { \voiceFour <g cis,>2 } >> |
    \change Staff = "lower" r4 <f a,>2 |
    r4 <d g,>2 |
    r4 <g \parenthesize e bes>4 <g e bes> |
    q q q |
    r4 <g e a,> q |
    r4 <g cis, a> q |
    r4 << { f2 } \\ { \voiceFour a,4( d) } >> |
    r4 \change Staff = "upper" << { \voiceTwo bes'4->( a8 g) } \\ { \voiceFour <g cis,>2 } >> |
    \change Staff = "lower" r4 <f a,>2 |
    r4 <d g,>2 |
    s2.*3 |
  }
  \relative c' {
    r4 <a f'> r |
    r4 \raiseSlur e'( f |
    g f e) |
    r4 <a, d>_( 
      %\change Staff = "upper" \voiceFour 
      <b gis'>) | 
      %\change Staff = "lower" \voiceOne 
    r4 <c a'>_( <a c>) |
    r4 <f bes>4_( <bes f'>) |
    r4 <e, a>4_( <a \parenthesize e'>) |
    s2.*2 |
    s4 \raiseSlur e'( f |
    g f e) |
    r4 <a, d>_( 
      %\change Staff = "upper" \voiceFour 
      <b gis'>) | 
      %\change Staff = "lower" \voiceOne 
    r4 <a a'>_( <e a>) |
    r4 <f bes>_( <bes f'>) |
    r4 <e, a>_( <a \parenthesize e'>) |
    r4 <gis d'>_( <d' gis>) |
    s2. | % [a tempo]
    r4 f2 |
    r4 << { \voiceOne bes4 a8-> g-> } \\ { \voiceFour cis,2 } >> |
    \voiceOne
    r4 <f a,>2 |
    r4 <d g,>2 |
    r4 <g bes,>4 <g e bes> |
    q q q |
    r4 <g e a,> q |
    r4 <g cis, a> q |
    r4 << { f2 } \\ { \voiceFour a,4( d) } >> |
    r4 << { bes'4( a8 g) } \\ { \voiceFour cis,2 } >> |
      %\change Staff = "upper" << { \voiceTwo bes'4->( a8 g) } \\ { \voiceFour cis,2 } >> \change Staff = "lower" 
    r4 <f a,>2 |
    r4 <d g,>2 |
    s2.*2 |
  } % [end of page 6]
  \voiceOne
  \relative c' {
    r4 <d e> r |
    r4 <cis e> r |
    r4 <c es> r |
    r4 <b d> r |
    r4 <bes cis> r |
    r4 <a d> r |
    s2.*2 |
    s2.*4 |
    s4 \voiceFour f2 |
    s2.*2 |
    s4 f2 |
    s2. |
    s4 f2 |
    s2.*5 |
  }
}

lowerBass = {
  \relative c, {
    d2. |
    d'2. |
    d2 c4 |
    bes2. |
    c2. ~ |
    c2. |
    cis2. |
    a2. |
    d,2. |
    d'2. |
    d2 c4-> |
    b2-> bes4-> |
    \oneVoice
    a4 <a' d f> q |
    q q q |
    a,4 <a' cis g'> q |
  } % [end of page 1]
  \repeat volta 2 {
    \voiceTwo
    \relative c {
      d2 r4 |
      a4 <a' cis>_\< q |
      q_\> q q\! |
      a,2. |
      a2. |
      d,2. |
      e2. |
      \oneVoice e4 <gis' d'> q |
      a,4 <e' cis'> r |
      a,,4 \voiceTwo <a'' cis> q |
      q q q |
      a,2. |
      a2. |
      d,2. |
      e2. |
      e2. |
      \oneVoice <cis'' g'>4 a,, r | % [a tempo]
      \ottava #-1 \set Staff.ottavation = \markup \concat { 8 \tiny { vb } } \stemUp d,4 
      \ottava #0 \voiceTwo a'''4( d) |
      d,2. |
      d2 c4 |
      bes2. |
      c2. ~ |
      c2. |
      cis2. |
      a2. |
      d,2. |
      d'2. |
      d2 c4-> |
      b2-> bes4-> |
      \oneVoice
      a4 <a' d f> q |
      q q q |
      a,4 <a' cis g'> q |
    }
  }
  \voiceTwo d,2 s4
  \section
  \key bes \major
  \relative c { 
    <bes bes,>2. |
    \fullRest |
    bes2. |
    f2. |
    g2. |
    a2. |
    \fullRest |
    << { \voiceOne s4 f''2 } \\ { \voiceTwo \fullRest } >> | % [a tempo]
    \voiceTwo bes,,2. |
    \fullRest |
    bes2. |
    <f f'>2 <fis fis'>4 |
    <g g'>2 es4 |
    f2. |
    f2 f4 |
    bes2 r4 |
    c2. | % [end of page 3]
    r4 c2 |
    r4 c,2 |
    f2. |
    c'2. |
    r4 c,2 |
    r4 c'2 |
    f,2. | % [a tempo]
    bes2. |
    r2 as4-> |
    g2. |
    c2 fis,4 |
    g2 es4 |
    f2. |
    f2 f4 |
    bes2 r4 |
    c2. |
    r4 c2 |
    r4 c,2 |
    f2. |
    c'2. |
    r4 c,2 |
    r4 c'2 |
    f,2. | % [a tempo]
    bes2. |
    \fullRest
    g2.\(_\markup { \italic { marcato } } |
    \prallInsideSlur
    gis2-> a4 |
    bes2 es,4\) | % [end of page 4]
    f2 r4 |
    f2 f4 |
    \oneVoice
    bes4 bes, r4 |
  }
  \section
  \key d \minor
  % This is essentially a "da capo"
  \voiceTwo
  \relative c, {
    d2. |
    d'2. |
    d2 c4 |
    bes2. |
    c2. ~ |
    c2. |
    cis2. |
    a2. |
    d,2. |
    d'2. |
    d2 c4-> |
    b2-> bes4-> |
    \oneVoice
    a4-> <a' d f> q |
    q q q |
    a,4 <a' cis g'> q |
  }
  \voiceTwo
  \relative c {
    d2 r4 |
    a4 <a' cis>_\< q |
    q_\> q q\! |
    a,2. |
    a2. |
    d,2. |
    e2. |
    \oneVoice e4 <gis' d'> q |
    a,4 <e' cis'> r |
    a,,4 \voiceTwo <a'' cis> q |
    q q q |
    a,2. |
    a2. |
    d,2. |
    e2. |
    e2. |
    \oneVoice <cis'' g'>4 a, r | % [a tempo]
    << { \voiceFour <d, d,>2 r4 } \\ { \voiceTwo s4 a''4_( d) } >> |
    \voiceTwo
    d,2. |
    d2 c4 |
    bes2. |
    c2. |
    \fullRest |
    cis2. |
    a2. |
    d,2. |
    d'2. |
    d2 c4-> |
    b2-> bes4-> |
    \oneVoice
    a4 <a' d f> q |
    q q q |
  } % [end of page 6]
  \voiceTwo
  \relative c' {
    <g g,>2 <bes bes,>4 |
    <a a,>2 <g g,>4 |
    <fis fis,>2 <a a,>4 |
    <g g,>2 <f f,>4 |
    <e e,>2. |
    <f f,>2. |
    \oneVoice
    <g, g,>4 <g' bes> r |
    <a, a,>4 <g' cis> r |
    \voiceTwo
    << { f4 s2 } \\ { d,2. } >> |
    s2. %\fullRest |
    d2. |
    s2. %\fullRest |
    d2. |
    s2. %\fullRest |
    d4 r r |
    d4 r r  |
    d4 r r  |
    d4 r r  |
    d4 r r  |
    \oneVoice
    \fullRest |
    \fullRest |
    <a'' d>2. |
    <a d, d,>4 r r |
  }
  \bar "|."
}

dynamics = {
  s2.-\markup { espress. } |
  s2.*4 |
  s8\< s s2 |
  s8\> s s4. s8\! \revert DynamicLineSpanner.Y-offset |
  s2.*2 |
  \override DynamicLineSpanner.Y-offset = #-3
  s8 s\< s4 s8 s\! \revert DynamicLineSpanner.Y-offset |
  s2.\< |
  s2.\f |
  s4. s8\< s4 |
  s2. |
  s8\> s s4. s8\! | % [end of page 1]
  \repeat volta 2 {
    \tag #'tablet {
      \volta 1 { s4.\> s4 s8\! | }
      \volta 2 { s2. | }
    }
    \tag #'print { s4.\> s4 s8\! | }
    s4-\markup { espress. } s2 |
    s8 s s4 s |
    s2.*6 |
    \tag #'tablet { \pageBreak }
    s2.*5 |
    s2.-\markup { dimin. } |
    s2. |
    s2.\< | % [a tempo]
    s2.\p |
    s2.*4 |
    s8\< s s2 |
    s2.\! |
    s2.*5 |
    s4. s4.\< |
    s2 s8 s\! |
    s8\> s s4. s8\!
  }
  s2 \once \override DynamicText.X-offset = #'-2.0 s4\p
  \tag #'tablet { \break }
  s8 s-\markup { dolce } s2 |
  s2.\< |
  s2. |
  s2.\> |
  s2.\! |
  s2.*2 |
  s4 s8 
  \tag #'print { \override DynamicLineSpanner.Y-offset = #1.5 } 
  s\> s s\! | % [a tempo]
  s2. |
  s2.\< |
  s2. |
  \tag #'print { \revert DynamicLineSpanner.Y-offset }
  s2\> s4\! |
  s2.*5 | % [end of page 3]
  \tag #'print { \pageBreak }
  \tag #'print { \once \override TextScript.Y-offset = #'0.5 }
  s2.-\markup { dolcissimo } |
  s2.*5 |
  s4\< s8 s4\> s8\! | % [a tempo]
  s2.*2 |
  s4\< s s\! |
  s2\> s4\! |
  s2.*3 |
  \override DynamicLineSpanner.Y-offset = #2
  s8 s\< s4 s8\> s\! \revert DynamicLineSpanner.Y-offset |
  s2.*7 |
  s8 s\< s s\> s s\! | % [a tempo]
  s2.*2 |
  s4\< s s\! |
  s4\> s s\! |
  s2. | % [end of page 4]
  s2.*3 |
  % \key d \minor
  \tag #'tablet { \break }
  s2.*5 |
  s2.\< |
  s2\> s8 s\! |
  s2.*2 |
  s4 s\< s8 s\! |
  s4. s\f |
  s2. |
  s4.
  \tag #'tablet { \once \override DynamicLineSpanner.Y-offset = #1 }
  s4.\< |
  s2. |
  s2.\> |
  s8 s\! s2 |
  s8
  \tag #'tablet {
     \once \override TextScript.X-offset = #'-2.5
  }
  s2-\markup { espress. } s8 |
  s2.*7 | % [end of page 5]
  s2.*5 |
  s8 s2-\markup { dim. } s8 |
  s2.
  s2.\< | % [a tempo]
  \tag #'tablet { \pageBreak }
  s2.\p
  s4.\< s4\> s8\! |
  s2.*3 |
  s2.\< |
  s2\> s8 s\! |
  s2.*2 |
  s4.\< s4\> s8\! |
  s2.\< |
  s2.\< |
  s2.\f |
  s2. | % [end of page 6]
  s2.-\markup { \italic { sempre } \dynamic f } |
  s2.\< |
  s2.\> |
  s2.\< |
  s2.\> |
  s2.\! |
  \tag #'print  { \once \override TextScript.Y-offset = #-3.5 }
  \tag #'tablet { \once \override TextScript.Y-offset = #-4 }
  s2.-\markup { con forza } |
  s2. | % [a tempo]
  s8_\markup \whiteout { marcato ma piano } s\pp s2 |
  s2.*5 |
  \tag #'print  { \once \override TextScript.Y-offset = #-2.5 }
  \tag #'tablet { \once \override TextScript.Y-offset = #-2.5 }
  s2.-\markup { \italic { sempre } \dynamic p } |
  s2.*3 |
  \once \override DynamicText.X-offset = #'0.4
  s2.\pp |
  s2.-\markup \italic { perdendosi } |
  s2. |
  \once \override DynamicText.X-offset = #'0.0
  s2.\pp |
  s2.
}

music = \new PianoStaff \with {
    instrumentName = \markup { \bold "Piano" }
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
      \new Voice = "C" { \voiceOne \lowerChords }
      \new Voice = "D" { \voiceTwo \lowerBass }
    >>
  >>
