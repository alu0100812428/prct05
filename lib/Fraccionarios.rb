class Fraccionarios
    attr_reader :num, :denom
    def initialize(num, denom)
        raise TypeError, "El denominador no puede ser 0" if denom.eql? 0
        @num, @denom = num, denom
        
        d = gcd(num, denom)
        @num = num / d
        @denom =  denom / d
    end
      
    def gcd(x,y)
        y == 0 ? x: gcd(y, x%y)
    end
  
    def lcm(x,y)
        x / gcd(x,y) * y
    end
  
    def to_s
        "#@num/#@denom"
    end
    
    def -@
        Fraccionarios.new(-@num, @denom)
    end
    
    def +  (other)
        mcm= lcm(@denom,other.denom)
        num_a= (@num * mcm / @denom)
        num_b= (other.num * mcm / other.denom)
        Fraccionarios.new( num_a + num_b, mcm )
    end
    
    def - (other)
        self + (-other)
    end
    
    def / (other)
        Fraccionarios.new(@num * other.denom,@denom * other.num)
    end
    
    def * (other)
        Fraccionarios.new(@num * other.num,@denom * other.denom)
    end
    
    def ** (value)
        Fraccionarios.new(@num ** value,@denom ** value)
    end
end