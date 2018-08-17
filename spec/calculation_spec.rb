require 'calculation'
# RSpec.describe '計算するやつ' do
RSpec.describe Calculation do
    # before節 -- example(itブロック)の前に必ず呼ばれる初期化処理
    # 最上位のdescribe直下のbeforeで定義したやつはその下のdescribeの中のexampleでも使用可能
    before do
        @calculation = Calculation.new
    end
    # before以外にexampleで使う変数を定義するものとしてsubjectがある
    # subject
    subject(:calc){Calculation.new}
    context "正常処理" do
        it "1+1=2 ? " do
            #calculation = Calculation.new
            # expect -> テストの最小単位
            expect(@calculation.add(1, 1)).to eq 2
        end
        it "2+5=7 ? " do
            #calculation = Calculation.new
            # expect(@calculation.add(2, 5)).to eq 7
            expect(calc.add(2, 5)).to eq 7
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

    # mathcer
    describe 'mather test' do
        it 'should not equal' do
            # expect(@calculation.add(2, 100)).not_to eq 29
            expect(calc.add(2, 100)).not_to eq 29
        end
        it 'should be positive number' do
            expect(@calculation.add(19, -13)).to be >0
        end
        it 'should be a number between' do
            expect(@calculation.add(1,10)).to be_between(1, 14)
        end
        it 'should have "add" method' do
            # expect(@calculation).to respond_to :add
            expect(calc).to respond_to :add
        end
        it 'should be interger number' do
            expect(@calculation.add(29, 53).integer?).to be true
        end
    end
end