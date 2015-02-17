class Invitation < ActiveRecord::Base

	belongs_to :inviter, :class_name => "User", foreign_key: :inviter_id, inverse_of: :inviter_invitations

	belongs_to :invitee, :class_name => "User", foreign_key: :invitee_id, inverse_of: :invitee_invitations
end
