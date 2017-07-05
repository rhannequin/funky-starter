class Ahoy::Store < Ahoy::Stores::ActiveRecordTokenStore
  Ahoy.cookie_domain = :all
  Ahoy.track_visits_immediately = true
  Ahoy.geocode = :async
  Ahoy.quiet = false
end
