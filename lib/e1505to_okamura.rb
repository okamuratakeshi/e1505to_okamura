require "e1505to_okamura/version"
require "bigdecimal"

module E1505toOkamura
  # Your code goes here...
  def self.new_method(price,date)
    #日付を元に消費税率を設定
    if date < 19890401 then
      taxrt = BigDecimal("1.00")
    elsif date < 19970401 then
      taxrt = BigDecimal("1.03")
    elsif date < 20140401 then
      taxrt = BigDecimal("1.05")
    elsif date < 20170401 then
      taxrt = BigDecimal("1.08")
    else
      taxrt = BigDecimal("1.10")
    end
    #価格＊（１＋税率）
    print ( (BigDecimal( price ) * taxrt).floor )
    puts " (taxin)"
  end
end
