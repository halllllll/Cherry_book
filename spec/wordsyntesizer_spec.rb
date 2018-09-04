require 'wordsynthesizer/wordsynth'
require 'wordsynthesizer/effects'
RSpec.describe "word synthesizerのテスト" do
    before do
        @wordsynth = WordSynth.new
        @effects = Effects
        @dora = "Doraemon"
        @nemui = "nemui"
        @thap = "This is a pen"
    end
    context "Wordsynthクラス, Effectモジュールがそもそも読めるか" do
        it "should can create wordsynth class" do
            expect(@wordsynth.class).to be WordSynth
        end
        # こんな文法であってるのかは知らない
        it "should can read Effects module" do 
            expect(@effects.inspect).to eq "Effects"
        end
    end

    context "Effectsモジュールのメソッド" do
        it "invoke reverse method" do
            expect(@effects.reverse.call(@dora)).to eq "nomearoD"
            expect(@effects.reverse.call(@nemui)).to eq "iumen"
            expect(@effects.reverse.call(@thap)).to eq "sihT si a nep"
        end

        it "invoke Echo method" do
            expect(@effects.echo(2).call(@dora)).to eq "DDoorraaeemmoonn"
            expect(@effects.echo(2).call(@thap)).to eq "TThhiiss iiss aa ppeenn"
            expect(@effects.echo(4).call(@nemui)).to eq "nnnneeeemmmmuuuuiiii"
        end

        it "invoke Loud method" do
            expect(@effects.loud(2).call(@dora)).to eq "DORAEMON!!"
            expect(@effects.loud(3).call(@thap)).to eq "THIS!!! IS!!! A!!! PEN!!!"
        end
    end
end