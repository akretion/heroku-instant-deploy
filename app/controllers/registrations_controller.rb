class RegistrationsController < Devise::RegistrationsController

  def edit
    @partner = current_user.partner_id
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
