module DeepFreezable
    def deep_freeze(arr_or_hash)
        case arr_or_hash
        when Array
            arr_or_hash.each do |a|
                a.freeze
            end
        when Hash
            arr_or_hash.each do |k, v|
                k.freeze
                v.freeze
            end
        end
        arr_or_hash.freeze
    end
end