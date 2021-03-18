class PostPolicy < ApplicationPolicy
  def new?
    true
  end

  def create?
    record.category.name != "Announcements" || user.is_a?(User::VIP)
  end

  def update?
    record.author == user
  end
end
