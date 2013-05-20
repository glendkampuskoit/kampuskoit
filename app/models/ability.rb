class Ability
  include CanCan::Ability

  def initialize(admin)

    alias_action :show, :to => :show
    
    admin ||= Admin.new #not admin
    if admin.role == "admin"
        can :manage, :all
    elsif admin.role == "editor"
        can [:manage], [JenisPt, JenjangProdi, Kota, Provinsi, Univ, Prodi]
    elsif admin.role == "operator"
        can [:edit, :update, :show], [Univ], :id => admin.univ_id
    end
  end
end
