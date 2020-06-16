Rails.application.config.generators do |g|
  g.factory_bot false
  g.helper false
  g.javascripts false
  g.stylesheets false
  g.test_framework :rspec, view_specs: false, routing_specs: false
  g.template_engine nil
  g.orm :active_record, primary_key_type: :uuid
end
