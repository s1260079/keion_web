class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true

  validates :user_name, :student_id, presence: true

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
