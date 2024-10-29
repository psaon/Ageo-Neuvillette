function Initialize()
   CURRENTPATH = SKIN:GetVariable('CURRENTPATH')
   Quotes = {}
   i = 0

   for line in io.lines(CURRENTPATH..'ListOfQuotes.txt') do
      if string.sub(line, 1, 7) == '<quote>' then
         i = i + 1
         Quotes[i] = string.sub(line, 8)
      end
   end
end

function Update()
   rand = math.random(1, #Quotes)
   SKIN:Bang('!SetOption', 'MeterQuote', 'Text', Quotes[rand])   
end