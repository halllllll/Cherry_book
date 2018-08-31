require "./lib/DF/deep_freezable"

class Team
    extend DeepFreezable

    # COUNTRIES = deep_freeze(["Japan", "US", "India"])
    COUNTRIES = ["Japan", "US", "India"]
end
