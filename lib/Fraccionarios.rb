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
  
    def to_s
        "#@num/#@denom"
    end
end