if settings.startup["bobmods-inserters-long1"].value == true then
  for _, inserter in pairs(data.raw.inserter) do
    if inserter.fast_replaceable_group == "long-handed-inserter" then
      inserter.fast_replaceable_group = "inserter"
    end
  end
end

for _, inserter in pairs(data.raw.inserter) do
  if not inserter.bobinserter_non_adjustable then
    inserter.allow_custom_vectors = true
    if not inserter.hand_size then
      inserter.hand_size = 1.5
    end
  end
end
