class Memo < Post

 #если конструктор такой же, то можно его не писать, он будет по умолчанию дергаться с родителя

  def read_from_console
    puts "Новая заметка (все, что пишите до строчки \"end\"):"

    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_string
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d_%H-%M-%S.txt")} \n\r \n\r"

    @text.unshift(time_string)
  end
end
