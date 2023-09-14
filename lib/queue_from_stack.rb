require_relative './stack'

class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add value
        @s1.push value
    end

    def remove
        if @s2.empty?
            until @s1.empty?
                @s2.push(@s1.pop)
            end
        end
        return @s2.pop
    end

    def peek
        if @s2.empty?
            until @s1.empty?
                @s2.push(@s1.pop)
            end
        end
        return @s2.peek
    end

    def empty?
        if @s2.empty? && @s1.empty?
            return true
        else
            return false
        end
    end


end