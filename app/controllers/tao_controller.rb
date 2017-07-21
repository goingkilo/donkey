class TaoController < ApplicationController
    before_filter :authenticate_user!
    layout "tao"

  def Om
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

    @me = current_user
  end

  def logout
    sign_out current_user
    redirect_to free_Content_path
  end

end
