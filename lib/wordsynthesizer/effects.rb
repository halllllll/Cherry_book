module Effects
    def self.reverse
        # lambda
        ->(word) do
            word.split(" ").map(&:reverse).join(" ")
        end
    end

    def self.echo(rate)
        ->(word) do
            word.chars.map{|w| w==" " ? w : w*rate}.join
        end
    end

    def self.loud(level)
        ->(word) do
            word.split(" ").map{|w| w.upcase + "!"*level}.join(" ")
        end
    end
end