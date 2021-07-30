class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :user_name, :student_id, presence: true

  validates :student_id, presence: true,
            format: { with:  /\A^[a-z0-9]+\z/, message: "ID should consist of lowercase letters and numbers(ex: s1300350)" }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }



  # def division
  #   for student in user do
  #     if student.student_id.include?("s")
  #         idS.push(student);
  #     else
  #         idM.push(student);
  #     end
  #   end
  # end
end
