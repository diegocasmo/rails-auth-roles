# Tell Cucumber to quit immediately after any scenario has failed
After do |s|
  Cucumber.wants_to_quit = true if s.failed?
end
