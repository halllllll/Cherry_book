module DeepFreezable
    def deep_freeze(arr_or_hash)
        arr_or_hash.each do |a|
            a.freeze
        end
        arr_or_hash.freeze
    end
end