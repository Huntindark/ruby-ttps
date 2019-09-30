def a_ul(aHash)
	print "<ul>"
	aHash.each do | key, value |
		print "<li>" + key.to_s + ": " + value.to_s + "</li>"
	end
	puts "</ul>"
end

a_ul({ perros: 1, gatos: 1, peces: 0})