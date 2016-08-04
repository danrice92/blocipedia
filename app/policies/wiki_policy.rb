class WikiPolicy < ApplicationPolicy
    attr_reader :user, :wiki
    
    def initialize(user, wiki)
        @user = user
        @wiki = wiki
    end
    
    def create?
        user.admin? || user.premium?
    end
    
    def new?
        create?
    end
    
    def update?
        user.present?
    end
    
    def edit?
        update?
    end
    
    def destroy?
        user.admin? || (@wiki.user == user)
    end
end