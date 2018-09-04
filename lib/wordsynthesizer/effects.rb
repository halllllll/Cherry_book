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
end