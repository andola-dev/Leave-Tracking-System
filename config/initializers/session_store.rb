# Be sure to restart your server when you modify this file.

#RGErp::Application.config.session_store :cookie_store, key: '_RG_ERP_session'
Rails.application.config.session_store :cookie_store, :key => '_blogs_session'
# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# RGErp::Application.config.session_store :active_record_store

# requires Rails 3.0 RC or head
#Rails.application.config.session_store :cookie_store, :key => '_inventories_session', :domain => :all

# change top level domain size
#request.domain(2)
#request.subdomain(2)
#Rails.application.config.session_store :cookie_store, :key => '_blogs_session', :domain => "example.co.uk"