class  UserSessionsController < ApplicationController
  def  create
    @user  =  login （params [ ：email ] 、 params [ ：password ] ）

    もし @userの
      redirect_back_or_to （：ユーザー、 予告：'ログイン成功' ）
    他の
      フラッシュ。now [ ：alert ]  =  'ログインに失敗しました'
      render  action：'new'
    end
  end

  def  destroy
    logout
    redirect_to （：users 、 notice：'ログアウトしました！' ）
  end
end
