class RL
  def detect(term)
    rights = 0
    lefts = 0

    term.chars.each{ |char|
      rights += 1 if right? char
      lefts += 1 if left? char
    }

    [lefts, rights]
  end

  protected

  RIGHTS = %W(
    ^ & * ( ) _ +
    6 7 8 9 0 - =
    Y U I O P { } |
    y u i o p [ ] \
    H J K L : "
    h j k l ; '
    N M < > ?
    n m , . /
  )

  LEFTS = %W(
    ~! @ # $ %
    ` 1 2 3 4 5
    Q W E R T
    q w e r t
    A S D F G
    a s d f g
    Z X C V B
    z x c v b
  )

  def right? char
    RIGHTS.include? char
  end

  def left? char
    LEFTS.include? char
  end
end
