# -*- encoding : utf-8 -*-
module PrintHelper
  def dict_name(klass, code)
    dict = klass.find_by_code(code)
    "#{dict.name}" if dict
  end

  def dict_name_and_code(klass, code)
    dict = klass.find_by_code(code)
    "#{dict.name}(#{dict.code})" if dict
  end

  def dict_attr(klass, code, attr)
    dict = klass.find_by_code(code)
    "#{eval("dict." + attr)}" if dict
  end

  def enterprise_name_and_trade_code(obj)
    if obj.class.to_s == "String"
      enterprise = Enterprise.find_by_code(obj)
    else
      enterprise = Enterprise.find_by_id(obj)
    end
    "#{enterprise.name}(#{enterprise.enterprise_custom_option.trade_code if enterprise.enterprise_custom_option})" if enterprise
  end

  def num_to_chinese(num)
    chineseNumArr=['零','壹','贰','叁','肆','伍','陆','柒','捌','玖']
    chinesePosArr=['万','仟','佰','拾','亿','仟','佰','拾','万','仟','佰','拾','元','角','分']
    chineseNum=''
    chinesePos=''
    strChinese=''
    nzero=0
    strNum=(num*100).to_i.to_s
    i=0
    length=strNum.length
    posValue=0
    pos=chinesePosArr.length-length
    while i<length
      posValue=strNum[i].chr.to_i

      if(i!=(length-3) && i!=(length-7) && i!=(length-11) && i!=(length-15))
        if(posValue==0)
          chineseNum=''
          chinesePos=''
        nzero+=1
        else
          if(nzero!=0)
          chineseNum=chineseNumArr[0]+chineseNumArr[posValue]
          chinesePos=chinesePosArr[pos+i]
          nzero=0
          else
          chineseNum=chineseNumArr[posValue]
          chinesePos=chinesePosArr[pos+i]
          nzero=0
          end
        end
      else
        if(posValue!=0 && nzero!=0)
        chineseNum=chineseNumArr[0]+chineseNumArr[posValue]
        chinesePos=chinesePosArr[pos+i]
        nzero=0
        else
          if(posValue!=0 && nzero==0)
          chineseNum=chineseNumArr[posValue]
          chinesePos=chinesePosArr[pos+i]
          nzero=0
          else
            if(length>=11)
              chineseNum=''
            nzero+=1
            else
              chineseNum=''
            chinesePos=chinesePosArr[pos+i]
            nzero+=1
            end
          end
        end
      end
      if(i==(length-11) || i==(length-3))
      chinesePos=chinesePosArr[pos+i]
      end
      strChinese=strChinese+chineseNum+chinesePos
      if(i==(length-1) && posValue==0)
        strChinese=strChinese+'整'
      end
      i+=1
    end

    strChinese
  end
end
