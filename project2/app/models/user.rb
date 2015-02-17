 require 'bcrypt'
class User < ActiveRecord::Base
	has_secure_password

	has_many :inviter_invitations, :class_name => "Invitation", foreign_key: :inviter_id, inverse_of: :inviter

	has_many :invitee_invitations, :class_name => "Invitation", foreign_key: :invitee_id, inverse_of: :invitee

end
