Verdict::Experiment.define(:test_rails_app_experiment) do
  qualify { true }

  groups do
    group(:test, 4)
    group(:control, :rest)
  end

  storage(Verdict::Storage::RedisStorage.new(Redis.current))
end
