def register_user(params)
  user = Data.new(params)
  user.role = "admin"

  if user.password.blank?
    user.gen_pass
  end

  raise Error::InvalidUserError if invalid_user?
  raise Error::DuplicateUser if duplicate_user?

  user.save
  user.sendmailcnfrm
  user
  end

  def invalid_user?
    user.email.blank?\ 
    ||user.username.blank? \
    ||user.phone.blank? \
    || !(user.email.match(/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i))||!(user.phone.match(/\A\+?[\d\s\-\.\(\)]+\z/))
  end

  def duplicate_user?
    Data.query("select count(1) from users where phone=#{a.phone} or email=#{a.email}") > 0
  end