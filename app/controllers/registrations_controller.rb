class RegistrationsController < Devise::RegistrationsController

  def edit
p "iiiiiiiiiiiiiii edit"
    @partner = current_user.partner_id
p current_user, @partner
    super
  end

  def update
    if params['res_partner']
      update_partner
    else
      super
    end
  end

  private

  def update_partner
    puts "TODO update_partner", params['res_partner']
  end

end
