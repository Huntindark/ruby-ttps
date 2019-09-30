class String
  def rot13
    split('').inject('') do |text, char|
      text << case char
        when 'a'..'m', 'A'..'M'
          char.ord + 13
        when 'n'..'z', 'N'..'Z'
          char.ord - 13
        else
          char.ord
      end
    end
  end
end

def rot13(string)
string.tr("A-Za-z", "N-ZA-Mn-za-m")
end

puts rot13("hola como vaa")