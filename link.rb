class Link < Post

  def initialize
    super

    @url = ""
  end

  def read_from_console
    puts "Адрес сылки: "
    @url = STDIN.gets.chomp

    puts "Что за ссылка?"
    @text = STDIN.gets.chomp
  end

  def to_string
    time_string = "Создано: #{@created_at.strftime("%Y-%m-%d_%H-%M-%S.txt")} \n\r \n\r"

    [@url, @text, time_string]
  end
end