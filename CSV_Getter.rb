class CSVGetter < Getter
    def initialize(file = "cars.csv")
        super(file)
    end
    def read_file
        File.readlines(@file)
    end

    def append(line)
        File.open(@file, "a") do |file|
            file.puts line
        end
    end

    def write_file(lines)
        File.open(@file, "w") do |file|
            file.puts lines
        end
    end
end