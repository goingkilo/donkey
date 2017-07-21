class TaoController < ApplicationController

  layout "tao"

  def says
    @me = current_user

    @tao = %{
      Uncreated
      To name Tao is to name no-thing.
      Tao is not the name of (something created).
      "Cause" and "chance" have no bearing on the Tao.
      Tao is a name that indicates without defining.
      Tao is beyond words and beyond things.
      It is not expressed either in word or in silence.
      Where there is no longer word or silence
      Tao is apprehended.
      (25:11, p. 226)
    }

    @advice = %{
      What I discovered after this journey of learning is that it's not the languages that matter but what you do with them. Actually, I always knew that, but I'd get distracted by the languages and forget it periodically. Now I never forget it, and neither should you.
      Which programming language you learn and use doesn't matter. Do not get sucked into the religion surrounding programming languages as that will only blind you to their true purpose of being your tool for doing interesting things.
      Programming as an intellectual activity is the only art form that allows you to create interactive art. You can create projects that other people can play with, and you can talk to them indirectly. No other art form is quite this interactive. Movies flow to the audience in one direction. Paintings do not move. Code goes both ways.
      Programming as a profession is only moderately interesting. It can be a good job, but you could make about the same money and be happier running a fast food joint. You're much better off using code as your secret weapon in another profession.
      People who can code in the world of technology companies are a dime a dozen and get no respect. People who can code in biology, medicine, government, sociology, physics, history, and mathematics are respected and can do amazing things to advance those disciplines.
    }

    @i63 = %{
    This hexagram is the evolution of T'ai PEACE (11). The transition from
    confusion to order is completed, and everything is in its proper place even in
    particulars. The strong lines are in the strong places, the weak lines in the
    weak places. This is a very favorable outlook, yet it gives reason for thought.
    For it is just when perfect equilibrium has been reached that any movement
    may cause order to revert to disorder. The one strong line that has moved to
    the top, thus effecting complete order in details, is followed by the other lines.
    Each moving according to its nature, and thus suddenly there arises again the
    hexagram P'i, STANDSTILL (12).

    Hence the present hexagram indicates the conditions of a time of climax,
    which necessitate the utmost caution.
  }
  end



end
