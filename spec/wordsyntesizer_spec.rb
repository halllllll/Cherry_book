require 'wordsynthesizer/wordsynth'
require 'wordsynthesizer/effects'
RSpec.describe "word synthesizerのテスト" do
    # before節 -- example(itブロック)の前に必ず呼ばれる初期化処理
    # 最上位のdescribe直下のbeforeで定義したやつはその下のdescribeの中のexampleでも使用可能
    before do
        @wordsynth = WordSynth.new
        @effects = Effects
    end
    context "Wordsynthクラス, Effectモジュールがそもそも読めるか" do
        it "should can create wordsynth" do
            # expect -> テストの最小単位
            expect(@wordsynth.class).to be WordSynth
        end
    end
end