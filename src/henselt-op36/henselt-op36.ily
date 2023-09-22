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

moreLeftSpace = \once \override NoteHead.extra-spacing-width = #'(-4 . 0)

% TODO: set priority for prall/trill to appear closer to note than slurs

upper = {
  \global
  \clef treble
  %\tempo \markup { "Lento ma non troppo" }

  \relative c'' {
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
    f4.\) gis,8\( a cis |
    d f a f' e d |
    c bes a e g f\) |
  } % [end of page 1]
  \repeat volta 2 {
    \relative c'' {
      d4. a8( \acciaccatura c8 bes8 a) |
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
      a2 e4 ~ |
      e8\( e dis e f e\) |
      e4 r r | % [a tempo]
      \oneVoice a4.\( bes8\trill a d |
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
      f4.\) gis,8\( a cis |
      d f a f' e d |
      \alternative {
        \volta 1 {
          c8 bes a e \acciaccatura e8 g8 f\) |
        }
        \volta 2 {
          d2 \voiceOne r4 |
        }
      }
    }
  }
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
      bes\prall a g) |
      g2 f4 ~ |
      f8( e dis e f e |
      e2) d4 ~ |
      d8( c b c d c) |
      c2-> b4 ~ |
      b8( gis a bis cis e) |
      g2\( a4 |
      bes\prall a g\) |
      g4 fis f ~ |
      f8( e dis e f e) |
      e4 es d ~ |
      d8( cis bis cis d c) |
      c2 b4 |
      bes8^( a cis e bes' a) | % [a tempo]
      s2.*3 |
      s2 f4 |
      e2 s4 |
      s2.*9 |
      \alternative {
        \volta 1 { s2. }
        \volta 2 { s2 f,4 }
      } |
    }
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
    r4 \change Staff = "upper" << { \voiceTwo bes'4->( a8 g) } \\ { \voiceFour <g cis,>2 } >> |
    \change Staff = "lower" r4 <f a,>2 |
    r4 <d g,>2 |
    s2.*3 |
  } % [end of page 1]
  \repeat volta 2 {
    \relative c' {
      r4 <a f'> r |
      r4 e'( f |
      g f e) |
      r4 <a, d>_( 
        %\change Staff = "upper" \voiceFour 
        <b gis'>) | 
        %\change Staff = "lower" \voiceOne 
      r4 <c a'>_( <a c>) |
      r4 <f bes>4_( <bes f'>) |
      r4 <e, a>4_( <a e'>) |
      s2.*2 |
      s4 e'( f |
      g f e) |
      r4 <a, d>_( 
        %\change Staff = "upper" \voiceFour 
        <b gis'>) | 
        %\change Staff = "lower" \voiceOne 
      r4 <a a'>_( <e a>) |
      r4 <f bes>_( <bes f'>) |
      r4 <e, a>_( <a e'>) |
      r4 <gis d'>_( <d' gis>) |
      s2. | % [a tempo]
      r4 f2 |
      r4 \change Staff = "upper" << { \voiceTwo bes4->( a) } \\ { \voiceFour <g cis,>2 } >> |
      \change Staff = "lower" r4 <f a,>2 |
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
      \alternative {
        \volta 1 { s2. }
        \volta 2 { r4 <f a,>4 s4 }
      }
    }
  }
}

lowerBass = {
  \relative c, {
    d2. |
    d'2. |
    d2 c4 |
    bes2. |
    c2. |
    R1*3/4 |
    cis2. |
    a2. |
    d,2. |
    d'2. |
    d2 c4 |
    b2 bes4 |
    \oneVoice
    a4 <a' d f> q |
    q q q |
    a,4 <a' cis g'> q |
  } % [end of page 1]
  \repeat volta 2 {
    \voiceTwo
    \relative c {
      d2 r4 |
      a4 <a' cis> q |
      q q q |
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
      c2. |
      R1*3/4 |
      cis2. |
      a2. |
      d,2. |
      d'2. |
      d2 c4-> |
      b2-> bes4-> |
      \oneVoice
      a4 <a' d f> q |
      q q q |
      \alternative {
        \volta 1 { a,4 <a' cis g'> q }
        \volta 2 { \voiceTwo d,,2 s4 }
      } |
    }
  }
}

dynamics = {
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
