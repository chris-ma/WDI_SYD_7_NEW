json.array!(@todotasks) do |todotask|
  json.extract! todotask, :id, :text, :notes, :completed, :timestamp
  json.url todotask_url(todotask, format: :json)
end
