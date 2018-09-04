module Effects
    def self.reverse
        # lambda
        ->(word) do
            word.split(" ").map(&:reverse).join(" ")
        end
    end
end