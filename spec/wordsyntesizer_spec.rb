require 'wordsynthesizer/wordsynth'
require 'wordsynthesizer/effects'
RSpec.describe "word synthesizerのテスト" do
    before do
        @wordsynth = WordSynth.new
        @effects = Effects
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
end