class Getter
    def initialize(file)
        @file = file
    end
    
    def read_file
        raise "Read File for #{self.class} not implemented yet" 
    end

    def append(line)
        raise "An error has occured" 
    end

    def write_file(lines)
        raise "An error has occured" 
    end
end
