class Printer
    def print(page, page_number = 1)
      puts "#{page_number}:, #{page}"
    end
end


canon = Printer.new
canon.print ("Page 1")
canon.print ("Page 2", 2)
canon.print ("Page 3", 3)
canon.print ("Page 4", 4)