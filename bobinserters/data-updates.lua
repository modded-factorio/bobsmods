for i, inserter in pairs(data.raw.inserter) do
  inserter.allow_custom_vectors = true
  if not inserter.hand_size then
    inserter.hand_size = 1.5
  end
end
