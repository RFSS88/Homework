class Map

    def initialize
        @map = []
        @pair = []
    end

    def set(key, val)
        unless @pair.include?(key)
          @pair.unshift(key)
        end
        @pair << val
    end

    def get(key)
        
    end

    def delete(key)

    end

    def show
        @map 
    end

end