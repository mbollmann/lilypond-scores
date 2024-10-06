\version "2.23.14"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Sakura Fantasy"
  subtitle = "[Marginalia No. 22]"
  %piece = "bar"
  composer = \markup { \caps { Fulvio Caldini } }
  %opus = "P.43"
  %copyright = \markup {
  %  \pad-to-box #'(0 . 0) #'(0 . 3)
  %  \line {
  %    "Typeset in 2022 by"
  %    \with-url "https://github.com/mbollmann/lilypond-scores/" {
  %      "Marcel Bollmann."
  %    }
  %    "Released under"
  %    \with-url "https://creativecommons.org/licenses/by/4.0/" {
  %      "CC-BY 4.0."
  %    }
  %  }
  %}
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
%  \context {
%    \Score
%    \override SpacingSpanner.common-shortest-duration =
%      #(ly:make-moment 1/4)
%  }
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
  \key a \minor

  % [A]
  \time 2/4
  s2*8 |
  \time 3/4
  s2. |
  \time 2/4
  s2 |
  % [A']
  s2*12 |
  s2*12 |
  s2*10 |
  s2*27 |
  s2*12 |
  s2*12 |
  s2*9 |
  \bar "||"
  \break
  s2*4 |
  \time 3/4
  s2.*2 |
  \time 2/4
  s2*5 |
  \time 3/4
  s2. |
  \time 2/4
  s2*4 |
  s2*14 |
  s2*8 |
  \time 3/4
  s2. |
  \time 2/4
  s2*3 |
  \bar "|."
}

upper = {
  \clef treble

  % [A]
  \relative c'' {
    a4( a |
    b2) |
    a4( a |
    b2) |
    a4( b |
    c4 b |
    a4) b8( a |
    f2 |
    g4) f16 a b c e f a b |
    <c e,>4.-> <b d,>8 |
  }
  % [B]
  << \relative c''' {
    a4 a |
    b2 |
    a4 a |
    b2 |
    a4 b |
    c4 b |
    a4 b8 a |
    f2 |
    e4 c |
    e4 f\fermata |
    e4 e8 c |
    b2 |
  } \\
  \relative c'' {
    c4. c8 |
    d4 c8 d |
    d8 e f e |
    d4 c8 b |
    c8. b16 d8 c |
    e8 f16 e g e c d |
    e8 c16 e g8 a |
    a,8 a d8. c16 |
    b4 a8 f16 g |
    a4 r16 c8. ~ |
    c8 c a16 g a f |
    e8 d c b |
  } >>
  % [A']
  \relative c'' {
    a4( a |
    b2) |
    a4( a |
    b2) |
    a4( b |
    c4 b |
    a4) b8( a |
    f2 |
    e4) << { c'4 } \\ { c,8 f } >> |
    << { d'4 f | <e e,>4 <e c e,>8 <c a c,> | <b b,>2 } \\
       { e,8 g f a | g16 a d8 s4 | g,4 e } >> |
  }
  % [B']
  << \relative c''' {
    a4 a |
    b2 |
    a4 a |
    b2 |
    e,4 f |
    b8 a f4 |
    e2 ~ |
    e2 ~ |
    e2 ~ |
    e2 |
  } \\
  \relative c'' {
    c4. c8 |
    d4 c8 d |
    d8 e f e |
    d4 c8 b |
    g8 f a b |
    d8. c16 g8 f |
    g4. a8 |
    c8 g a4 | \voiceFour
    d2 ~ |
    d2 |
  } >>
  % [C]
  << \relative c''' {
    a4 a |
    b4 g |
    c,4 \tuplet 3/2 { d4 g8 } |
    s2 |
    s2 |
    \tuplet 3/2 { f'4 d8 } e,16 c'8. |
    \tuplet 3/2 { a4 g8 ~ } \tuplet 3/2 { g8 f4 } |
  } \\ \relative c'' {
    \tuplet 3/2 { c8 d e ~ } e16 e d c |
    \tuplet 3/2 { e8 c d ~ } \tuplet 3/2 { d8 c a ~ } |
    a16 e g a ~ \tuplet 3/2 { a8 c g' } |
    \tuplet 3/2 { e8 d g } e16 d g a |
    \voiceOne\tuplet 3/2 { <g b>8 a c } \tuplet 3/2 { <d f,>8 c e }\voiceTwo |
    \tuplet 3/2 { a,8 f4 } e16 c'16.*2/3 d,16 c |
    \tuplet 3/2 { a'8 b,4 } \tuplet 3/2 { a4 g8 } |
  } >>
  % [C']
  \relative c''' { g16 e d c \tuplet 3/2 { e8 c d }} |
  << \relative c''' {
    a8 g16. a32 ~ a4 |
    b4 g |
    c,8.. b32 c8.. d32 |
    \tuplet 3/2 { e8 d4 } \tuplet 3/2 { b4 a16 b } |
    \tuplet 3/2 { c8 d8. e16 } \tuplet 3/2 { g4 a16 b } |
    c4 a |
    b4 g |
    c,4 \tuplet 3/2 { d4 g8 } |
    s2 |
    s2 |
    \tuplet 3/2 { f'4 d8 } e,16 c'8. |
    \tuplet 3/2 { a4 g8 ~ } \tuplet 3/2 { g8 f4 } |
    s2 |
    a8 g16. a32 ~ a4 |
    b4 g |
    c,8.. b32 c8.. d32 |
    \tuplet 3/2 { e8 d4 } \tuplet 3/2 { b4 a16 b } |
    \tuplet 3/2 { c8 d8. e16 } \tuplet 3/2 { g4 a16 b } |
    \oneVoice <c e, c>4. <b d, b>8 |
  } \\ \relative c'' {
    \tuplet 3/2 { c8 d e } \tuplet 3/2 { c8 d c } |
    \tuplet 3/2 { e8 c d ~ } \tuplet 3/2 { d8 c a } |
    \tuplet 3/2 { e8 c g' } \tuplet 3/2 { f8 e a } |
    \tuplet 3/2 { f4 as16 e } \tuplet 3/2 { d8 c4 } |
    \tuplet 3/2 { e4 c8 } \tuplet 3/2 { b'8 a4 } |
    \tuplet 3/2 { e'8 d e ~ } e16 e d c |
    \tuplet 3/2 { e8 c d ~ } \tuplet 3/2 { d8 c a ~ } |
    a16 g b a ~ \tuplet 3/2 { a8 c g' } |
    \tuplet 3/2 { e8 d g } e16 d g a |
    \voiceOne\tuplet 3/2 { <g b>8 a c } \tuplet 3/2 { <d f,>8 c e }\voiceTwo |
    \tuplet 3/2 { a,8 f4 } e16 c'16.*2/3 d,16 c |
    \tuplet 3/2 { a'8 b,4 } \tuplet 3/2 { a4 g8 } |
    g'16 e d c \tuplet 3/2 { e8 c d } |
    \tuplet 3/2 { c8 d e } \tuplet 3/2 { c8 d c } |
    \tuplet 3/2 { e8 c d ~ } \tuplet 3/2 { d8 c a } |
    \tuplet 3/2 { e8 c g' } \tuplet 3/2 { f8 e a } |
    \tuplet 3/2 { f4 as16 e } \tuplet 3/2 { d8 c4 } |
    \tuplet 3/2 { e4 c8 } \tuplet 3/2 { b'8 a4 } |
    s2 |
  } >>
  % [A'']
  << \relative c''' {
    a4 a |
    b2 |
    a4 a |
    b2 |
    a4 b |
    c4 b |
    a4 b8 a |
    f2 |
    e4 c |
    e4 f\fermata |
    e4 e8 c |
    b2 |
  } \\
  \relative c'' {
    <c a>4 d8 c |
    <d b>4 c8 d |
    d8 e f e |
    d4 c8 b |
    c8. b16 d8 c |
    e8 f16 e g e c d |
    e8 c16 e g8 a |
    a,8 a d8. c16 |
    b4 a8 f16 g |
    a4 r16 c8. ~ |
    c8 c a16 g a f |
    e8 d c b |
  } >>
  % [D]
  << \relative c''' {
    r16 c8. ~ c16 c8. |
    r16 d4.. |
    r16 c8. ~ c16 c8. |
    r16 d4.. |
    r16 c8. r16 d8. |
    r16 e8. r16 d8. |
    r16 c8. r16 d8 c16 |
    r16 a4.. |
    r8 d, c4 |
    d4 f |
    <e e,>4 <e c e,>8 <c a c,>8 |
    <b b,>2 |
  } \\ \relative c'' {
    a4 a |
    b2 |
    a4 a |
    b2 |
    a4 b |
    c4 b |
    a4 b8 a |
    f2 |
    e4 c8 f16 a |
    e8 g f a16 b |
    g16 a d8 s4 |
    g,4 e |
  } >>
  % [B'']
  << \relative c''' {
    a4 a |
    b2 |
    a4 a |
    b2 |
    e,4 f |
    b8 a f4 |
    e2 ~ |
    e2 ~ |
    e4 d8 e\fermata ~ |
    e4*1/2 % mid-measure here
  } \\
  \relative c'' {
    c4. c8 |
    d4 c8 d |
    d8 e f e |
    d4 c8 b |
    g8 f a b |
    d8. c16 g8 f |
    g4. a8 |
    c8 g a g |
    a8 b d4 |
    s8 % mid-measure here
  } >>
  % [E] + s8
  \relative c'' {
    \voiceOne a8 s a |
    s8 b s4 |
    s8 a s b |
    s8 c s b |
    s8 a << { b8 a16 b' f,8. f'16 } \\ { b,8 a f4.*2/3 } >> |
  }
  \relative c'' {
    << { e8 d e c e e16 c } \\
       { r8 d16 e, r8 c'16 e, e' f,8. } >>
  } |
  \relative c'' { b2 | <b g>2 } |
  \relative c'' {
    \voiceOne c8. b'16 ~ b8. <c e,>16 ~ |
    q8. <d f,>16 ~ q8. <c e,>16 ~ |
    q8. <b f>16 ~  q8. <c e,>16 ~ |
    q8. <d f,>16 ~ q8. <c e,>16 ~ q16 c,8 d16 |
    << { \tuplet 3/2 { e4 b8 } f'8. e16 |
         \tuplet 3/2 { b'8 a4 } \tuplet 5/4 { f8. e16 c } }
    \\ { \tuplet 3/2 { g8 a b } a16 g b e |
         \tuplet 3/2 { d8 a' c, } \tuplet 5/4 { f16.*2/3 b,16 a e' c }
    } >>
    << { e8 b d c } \\ { <a f>2 } >> |
    \oneVoice <f d'>8 <g e'> <a f'> <b g'> |
  }
  % [C]
  << \relative c''' {
    a4 a |
    b4 g |
    c,4 \tuplet 3/2 { d4 g8 } |
    s2 |
    s2 |
    \tuplet 3/2 { f'4 d8 } e,16 c'8. |
    \tuplet 3/2 { a4 g8 ~ } \tuplet 3/2 { g8 f4 } |
  } \\ \relative c'' {
    \tuplet 3/2 { c8 d e ~ } e16 e d c |
    \tuplet 3/2 { e8 c d ~ } \tuplet 3/2 { d8 c a ~ } |
    a16 e g a ~ \tuplet 3/2 { a8 c g' } |
    \tuplet 3/2 { e8 d g } e16 d g a |
    \voiceOne\tuplet 3/2 { <g b>8 a c } \tuplet 3/2 { <d f,>8 c e }\voiceTwo |
    \tuplet 3/2 { a,8 f4 } e16 c'16.*2/3 d,16 c |
    \tuplet 3/2 { a'8 b,4 } \tuplet 3/2 { a4 g8 } |
  } >>
  % [C' (short)]
  \relative c''' { g16 e d c \tuplet 3/2 { e8 c d }} |
  << \relative c''' {
    a8 g16. a32 ~ a4 |
    b4 g |
    c,8.. b32 c8.. d32 |
    \tuplet 3/2 { e8 d4 } \tuplet 3/2 { b4 a16 b } |
    \tuplet 3/2 { c8 d8. e16 } \tuplet 3/2 { g4 a16 b } |
    \oneVoice <c e, c>4. <b d, b>8 |
  } \\ \relative c'' {
    \tuplet 3/2 { c8 d e } \tuplet 3/2 { c8 d c } |
    \tuplet 3/2 { e8 c d ~ } \tuplet 3/2 { d8 c a } |
    \tuplet 3/2 { e8 c g' } \tuplet 3/2 { f8 e a } |
    \tuplet 3/2 { f4 as16 e } \tuplet 3/2 { d8 c4 } |
    \tuplet 3/2 { e4 c8 } \tuplet 3/2 { b'8 a4 } |
    s2 |
  } >>
  % [A''']
  << \relative c''' {
    a4 a |
    b2 |
    a4 a |
    b2 |
    c,4 d |
    e4 g |
    a4 b8 a |
    f4. e8 |
    g4 
  } \\
  \relative c'' {
    <c a>4 d8 c |
    d4 c8 d |
    e4 f8 e |
    d4 c8 b |
    a4 b |
    c4 b |
    c4 d8 c |
    a2 |
    b4
  } >>
  \relative c' {
    f16 a b c e f a b |
    <d f,>2\fermata |
    <c, g c,>2 ~ |
    q2\fermata |
  }
}

lowerToUpper = { \change Staff="upper" \voiceTwo }
lowerToLower = { \change Staff="lower" \oneVoice }

lower = {
  \clef bass

  % [A]
  \relative c' {
    a8 e' f e |
    g,8 d' e d |
    f,8 c' d c |
    g8 d' e d |
    a16 d e d g, d' e d |
    f,16 c' d c e, c' e c |
    f,16 c' e c e, c' d c |
    d,16 a' c a f a b a |
    << { e16 b' c e s2 | s2 } \\ { e,4 ~  e2 ~ | e2 } >>
  }
  % [B]
  \relative c' {
    a8 e' f e |
    g,8 d' e d |
    f,8 c' d c |
    g8 d' e d |
    a16 d e d g, d' e d |
    f,16 c' d c e, c' e c |
    f,16 c' e c e, c' d c |
    d,16 a' c a f a b a |
    c16 b a f e f a b |
    \clef treble c16 e f a ~ a8\fermata a16 f |
    \clef bass e16 c b a f4 |
    g2 |
  }
  % [A']
  \relative c' {
    a16 e' f e a, e' f e |
    g,16 d' e d g, d' e d |
    f,16 c' d c f, c' d c |
    g16 d' e d g, d' e d |
    a16 d e d g, d' e d |
    f,16 c' d c e, c' d c |
    f,16 c' e c e, c' d c |
    d,16 a' c a f a b a |
    c16 b a f e f a b |
    a16 a, e' f d e f a |
    b8 a16 b c b a f |
    e8 d c b |
  }
  % [B']
  \relative c {
    a8 e' d' e, |
    g,8 d' b' a |
    f,8 c' a' g |
    g,8 d' b'4 |
    f,8 c' a'4 |
    g,8 d' b'4 |
    e,,8 b' e f |
    a8 b c e |
    << { \change Staff="upper" \voiceTwo f2 ~ | f2 } \\
       { \oneVoice s2 | \ottava #-1 \relative c,, { e2 } \ottava #0 } >> |
  }
  % [C]
  \relative c {
    a16 e' b' c \tuplet 3/2 { e8 g a } |
    g16 e d c e b a e |
    \tuplet 3/2 { f,8 c' a' } f16 a c d |
    g,,16 d' a' b \tuplet 3/2 { c8 d f } |
    g,16 d' \lowerToUpper b' \lowerToLower e, f, c' \lowerToUpper a' \lowerToLower e |
    d,,16 a' f' a c e f a |
    g,,16 d' b' g b d e f |
  }
  % [C']
  \relative c, {
    \tuplet 3/2 { e8 b' g' } a16 e g b |
    a,16 e' b' c \clef "treble" e g a b |
    g16 e d c \clef "bass" e b a e |
    f,16 c' a' e d, a' f' a |
    g,16 d' b' g e, b' gis' b |
    d,,16 a' f' a g, d' b' d |
    a,16 e' b' c \tuplet 3/2 { e8 g a } |
    g16 e d c e c a e |
    \tuplet 3/2 { f,8 c' a' } f16 a c d |
    g,,16 d' a' b \tuplet 3/2 { c8 e f } |
    g,16 d' \lowerToUpper b' \lowerToLower e, f, c' \lowerToUpper a' \lowerToLower e |
    d,,16 a' f' a c e f a |
    g,,16 d' b' g b d e f |
    \tuplet 3/2 { e,,8 b' g' } a16 e g b |
    a,16 e' b' c \clef "treble" e g a b |
    g16 e d c \clef "bass" e b a e |
    f,16 c' a' e d, a' f' a |
    g,16 d' b' g e, b' gis' b |
    d,,16 a' f' a g, d' b' d |
    e,,8 b' a' b |
  }
  % [A'']
  \relative c {
    a8 e'' f e |
    g,8 d' e d |
    f,8 c' d c |
    g8 d' e d |
    a16 d e d g, d' e d |
    f,16 c' d c e, c' e c |
    f,16 c' e c e, c' d c |
    d,16 a' c a f a b a |
    c16 b a f e f a b |
    \clef "treble" c16 e f a ~ a8\fermata a16 f |
    \clef "bass" e16 c b a f4 |
    g2 |
  }
  % [D]
  \relative c' {
    a16 e' f e a, e' f e |
    g,16 d' e d g, d' e d |
    f,16 c' d c f, c' d c |
    g16 d' e d g, d' e d |
    a16 d e d g, d' e d |
    f,16 c' d c e, c' d c |
    f,16 c' e c e, c' d c |
    d,16 a' c a f a b a |
    c16 b a f \tuplet 5/4 { e16 f a b c } |
    a16 a, e' f \tuplet 5/4 { d16 e f a c } |
    b8 a16 b c b a f |
    \tuplet 5/4 { e8 d e c b } |
  }
  % [B'']
  \relative c {
    a8 e' d' e, |
    g,8 d' b' a |
    f,8 c' a' g |
    g,8 d' b'4 |
    f,8 c' a'4 |
    g,8 d' b'4 |
    e,,8 b' e f |
    a8 b c e |
    f2\fermata |
  }
  % [E]
  % half-measures & absolute notation!
  \ottava #-1 e,,16 \ottava #0 f' \lowerToUpper a' b''
  \lowerToLower e f' \lowerToUpper a' c''' |
  \lowerToLower d f' \lowerToUpper b' d'''
  \lowerToLower d a f' \lowerToUpper c''' |
  \lowerToLower e f' \lowerToUpper a' c'''
  \lowerToLower d f' \lowerToUpper b' d''' |
  \lowerToLower c e' \lowerToUpper c'' c'''
  \lowerToLower d f' \lowerToUpper b' d''' |
  \lowerToLower e f' \lowerToUpper a' c'''
  \lowerToLower d f'8. d'16 b c' a |
  \stemDown a,16 c'8. g,16 b8. f,16 a8 e,16 \stemNeutral |
  \relative c, { d16 a' f' a c \lowerToUpper e f a \lowerToLower } |
  \relative c  { g16 d' b' c \lowerToUpper d e f a \lowerToLower } |
  e16 f' \lowerToUpper a' b''
  \lowerToLower e f' \lowerToUpper a' e'' |
  \lowerToLower d f' \lowerToUpper b' f''
  \lowerToLower d a f' \lowerToUpper e'' |
  \lowerToLower e f' \lowerToUpper a' f''
  \lowerToLower e f' \lowerToUpper a' e'' |
  \lowerToLower d f' \lowerToUpper b' f''
  \lowerToLower d a f' \lowerToUpper e''
  \lowerToLower e b  \lowerToUpper g' d'' |
  \relative c { \lowerToLower
    a16 e' a c \tuplet 3/2 { g,8 d' b' } |
    f,16 c' f g a b c e |
    \tuplet 3/2 { e,,8 b' e } \tuplet 3/2 { f8 a d } |
    f2 |
  }
  % [C]
  \relative c {
    a16 e' b' c \tuplet 3/2 { e8 g a } |
    g16 e d c e b a e |
    \tuplet 3/2 { f,8 c' a' } f16 a c d |
    g,,16 d' a' b \tuplet 3/2 { c8 d f } |
    g,16 d' \lowerToUpper b' \lowerToLower e, f, c' \lowerToUpper a' \lowerToLower e |
    d,,16 a' f' a c e f a |
    g,,16 d' b' g b d e f |
  }
  % [C']
  \relative c, {
    \tuplet 3/2 { e8 b' g' } a16 e g b |
    a,16 e' b' c \clef "treble" e g a b |
    g16 e d c \clef "bass" e b a e |
    f,16 c' a' e d, a' f' a |
    g,16 d' b' g e, b' gis' b |
    d,,16 a' f' a g, d' b' d |
    e,,8 b' a' b |
  }
  % [A'']
  \relative c {
    a8 e'' f e |
    g,8 d' e d |
    f,8 c' d c |
    g8 d' e d |
    a16 d e d g, d' e d |
    f,16 c' d c e, c' e c |
    f,16 c' e c e, c' d c |
    d,16 a' c a f a b a |
    << { e16 b' c e s2 | s2 } \\ { e,4 ~  e2 ~ | e2\fermata } >> |
    <a, a,>2 ~ |
    <a a, a,>2\fermata |
  }

}

dynamics = {
  s4\p\< s4 |
  s2\> |
  s2\< |
  s2\> |
  s2\< |
  s4. s8\! |
  s8 s4.\> |
  s4.. s16\! |
  s4 s2\< |
  s4.\> s8\! |
  s2\< |
  s2 |
  s2 |
  s2\> |
  s2\< |
  s4 s4\> |
  s2 |
  s4.\! s8\< |
  s2 |
  s4 s16\f s8.\p |
  s4\< s4\! |
  s2\> |
  s2\pp\< |
  s2\> |
  s2\< |
  s2\> |
  s2\< |
  s2 |
  s2\> |
  s2 |
  s4.\! s8\< |
  s2 |
  s2 |
  s2 |
  s2\f |
  s2*5 |
  s4.\> s8\p |
  s2*3 |
  s2\p |
  s2\< |
  s2\mf |
  s4 s4\cresc |
  s2 |
  s2\f |
  s8 s4.\> |
  s2\p |
  s2 |
  s2\< |
  s2\mf |
  s2\f |
  s2\< |
  s2\ff |
  s2 |
  s8 s4.\> |
  s2 |
  s2\! |
  s2\p |
  s2 |
  s2\< |
  s2\mf |
  s2\< |
  s2\f |
  s2\< |
  s2 |
  s2\ff\> |
  s4\f s4\> |
  s2 |
  s2 |
  s2\p |
  s2\< |
  s4 s4\> |
  s2 |
  s2\! |
  s2\< |
  s4 s16\f s8.\p |
  s4\< s4\! |
  s2\> |
  s2\pp |
  s2*7 |
  s2\< |
  s2 |
  s2\mf\< |
  s2 |
  s2\f |
  s2*4 |
  s2\> |
  s4. s8\p |
  s2*2 |
  s4\pp |
  s4\< |
  s8 s4.\> |
  s8 s4.\< |
  s8 s4.\> |
  s2\! s8 s8\< |
  s2 s4\> |
  s2\< |
  s2\> |
  s4 s\< |
  s8. s16\> s4 |
  s8.\! s16\< s4 |
  s8. s16\> s2 |
  s2\< |
  s2 |
  s2\> |
  s2 |
  s2\p
  s2\< |
  s2\mf |
  s4. s8\< |
  s2 |
  s2\f |
  s4 s\> |
  s2\p |
  s2 |
  s2\< |
  s8\mf s4.\< |
  s2\f |
  s2\< |
  s2\ff\> |
  s4\f s4\> |
  s2 |
  s2 |
  s2\p |
  s2\< |
  s2 |
  s8 s8\! s4\> |
  s2 |
  s4\! s2\< |
  s2\! |
  s2\p |
  s2\pp |
}

accel = {\override TextSpanner.bound-details.left.text = "accel."}
rall = {}

expressive = {
  \tempo \markup { "Sognando, rubando" } % 4 = 68 ca.
  \override TextSpanner.dash-period = #1.5
  \override TextSpanner.dash-fraction = #0.4
  s2*7 | 
  s4 s4^\markup { \italic "rall." }
  s16\override TextSpanner.bound-details.left.text = "accel." \startTextSpan s2 s8 s16\stopTextSpan |
  \override TextSpanner.bound-details.left.text = "rall." s4.\startTextSpan s8\stopTextSpan |
  s2*6 |
  s4 \once \override TextSpanner.bound-details.right.text = "accel." s4\startTextSpan |
  s2\stopTextSpan |
  s2 |
  s4\startTextSpan s16\stopTextSpan
    \override TextSpanner.bound-details.left.text = "accel." \once \override TextSpanner.bound-details.right.text = "a tempo" s8.\startTextSpan |
  s4 s4\stopTextSpan |
  s2 | % rall.
  \tempo \markup { "Più scorrevole" } % 4 = 78
  s2*6 |
  s2 | % rall
  s2 | % accel
  s2 |
  s2 | % rall
  s2*2 |
  \tempo \markup { "Tempo primo" }
  s2*5 |
  s2 | % rall
  s2*4 |
  \tempo \markup { "Più largo" } % 4 = 64 ca.
  s2*6 |
  s2 | % rall
  s2 | % a tempo
  s2*17 |
  s2 | % rall
  s2 |
  \tempo \markup { "Tempo primo" } % 4 = 70 ca.
  s2*4 |
  s2*2 | % 4 = 68 ca.
  s2 | % rall
  s2 | % accel
  s2 |
  s2 | % rall/accel
  s2 | % a tempo
  s2 | % rall |
  \tempo \markup { "Meno mosso" } % 4 = 64
  s2*6 |
  s2 | % rall
  s2 | % a tempo
  s2*2 |
  s2*2 | % rall
  \tempo \markup { "Più mosso" } % 4 = 70 % which is Tempo primo???
  s2*5 |
  s2 | % rall
  s2*3 |
  \tempo \markup { "Lento, senza tempo, improvvisando" }
  s2*4 |
  s2.*2 |
  s2 | % accel
  s2 | % rall
  s2*3 |
  s2. |
  s2*3 |
  s2 | % rall
  \tempo \markup { "Tempo primo" }
  s2*6 |
  s2 | % rall
  s2 | % a tempo
  s2*6 |
  s2*3 | % 4 = 70 ca.
  s2 | % rall
  s2 | % accel
  s2 | % a tempo
  s2 | % rall
  s2 | % rall
  s2. | % accel/rall
  s2 |
  s2^\markup { \italic "largo" }
  s2
}

music = \new PianoStaff \with {
    %instrumentName = \markup { \number {41} \fontsize #2 \bold "/" \number 1 }
    %connectArpeggios = ##t
  } <<
    \accidentalStyle piano
    \new Staff = "upper" <<
      \global
      \expressive
      \upper
    >>
    \new Dynamics { \dynamics }
    \new Staff = "lower" <<
      \global
      \lower
    >>
  >>

