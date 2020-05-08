json.extract! employee, :id, :code, :name, :address, :phone, :occupation, :obs, :status, :created_at, :updated_at
json.url employee_url(employee, format: :json)
