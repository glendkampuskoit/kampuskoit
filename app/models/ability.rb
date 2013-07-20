class Ability
  include CanCan::Ability

  def initialize(admin)

    admin ||= Admin.new #not admin
    if admin.role == "admin"
        can :manage, :all
    elsif admin.role == "editor"
        can [:manage], [JenisPt, JenjangProdi, Kota, Provinsi, Univ, Prodi, Dahsboard]
    elsif admin.role == "operator"
        can [:edit, :update, :show, :list], [Univ], :id => admin.univ_id
        can [:edit, :update, :show, :destroy, :list], [Prodi], :univ_id => admin.univ_id
    end
  end
end
