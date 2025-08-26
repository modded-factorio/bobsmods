for _, inserter in pairs(data.raw.inserter) do
  if not inserter.bobinserter_non_adjustable then
    inserter.allow_custom_vectors = true
    if not inserter.hand_size then
      inserter.hand_size = 1.5
    end
  end
end

data:extend{{
  type = "custom-event",
  name = "on_bobs_inserter_adjusted"
}}