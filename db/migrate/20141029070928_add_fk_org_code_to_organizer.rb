class AddFkOrgCodeToOrganizer < ActiveRecord::Migration
  def change
    add_column :organizers, :fk_org_code, :string
  end
end
