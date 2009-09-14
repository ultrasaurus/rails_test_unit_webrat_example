# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_test_sqlite_session',
  :secret      => 'b8bd0f775cf507e4d8e9fb429034131c63cdfc7ce100e092f7243e4e04affd1dc192ec26db63c96dc04ae84b0904d0835e5a7a637e395bcc35503bfd79979c71'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
