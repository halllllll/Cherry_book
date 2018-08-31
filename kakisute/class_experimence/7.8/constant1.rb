# 7.7でも言っていることだが、rubyでは定数（単に名前の頭文字を大文字にしただけ）は外部から呼び出せるが、他の言語と違って、それを拒否しない。デフォルトでふつうに外部から呼び出せる

class Product
    DEFOULT_PRICE= 0
end
puts Product::DEFOULT_PRICE8