require "e1505to_okamura/version"
require "bigdecimal"

module E1505toOkamura
  # Your code goes here...
	print 'Please set price(without tax) : '
    price = gets.chomp.to_i

	print 'Please set sales_date : '
    date = gets.chomp.to_i

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
    
    price_wt = ( (BigDecimal( price ) * taxrt).floor )
    
    print "Price with tax is "
    print price_wt
    print " at "
    print date
    puts  "."
end
