if data.raw.inserter["long-handed-inserter"] then
  data.raw.inserter["long-handed-inserter"].fast_replaceable_group = "inserter"
end

local enable_inserter=
{
	"burner-inserter",
	"steam-inserter",
	
	"inserter",
	"yellow-filter-inserter",
	
	"long-handed-inserter",
	"red-filter-inserter",
	"red-stack-inserter",
	"red-stack-filter-inserter",
	
	"fast-inserter",
	"filter-inserter",
	"stack-inserter",
	"stack-filter-inserter",
	
	"turbo-inserter",
	"turbo-filter-inserter",
	"turbo-stack-inserter",
	"turbo-stack-filter-inserter",
	
	"express-inserter",
	"express-filter-inserter",
	"express-stack-inserter",
	"express-stack-filter-inserter",
};
for _,inserter_name in pairs(enable_inserter) do
	local inserter=data.raw.inserter[inserter_name];
	if not inserter then goto skip; end
	inserter.allow_custom_vectors=true;
	if not inserter.hand_size then  inserter.hand_size = 1.5; end
	::skip::
end
