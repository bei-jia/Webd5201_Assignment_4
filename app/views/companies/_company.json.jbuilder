json.extract! company, :id, :company_name, :company_founder, :company_founding_time, :company_headcount, :headquarter_address, :created_at, :updated_at
json.url company_url(company, format: :json)
