require 'calculation'
# RSpec.describe '計算するやつ' do
RSpec.describe Calculation do
    # before節 -- example(itブロック)の前に必ず呼ばれる初期化処理
    # 最上位のdescribe直下のbeforeで定義したやつはその下のdescribeの中のexampleでも使用可能
    before do
        @calculation = Calculation.new
    end
    context "正常処理" do
        it "1+1=2 ? " do
            #calculation = Calculation.new
            # expect -> テストの最小単位
            expect(@calculation.add(1, 1)).to eq 2
        end
        it "2+5=7 ? " do
            #calculation = Calculation.new
            expect(@calculation.add(2, 5)).to eq 7
        end
    end
    context "異常処理" do
        it '' do
        end
    end

    # it(example/specify)のあとの引数を省略すると自動的に説明が付加される
    it do
        expect(@calculation.add(1, 3)).to eq 4
    end
    # pending: ブロックを記述しない場合に発生
    it '1-1=0?'
end