class Map

    def initialize
        @complete = []
    end

    def set(key, val)
        pair_idx = @complete.index { |pair| pair[0] == key }
            if pair_idx_index
        @complete[pair_idx][1] = val
            else
        @complete.push([key, val])
        end
        val
        # unless @pair.include?(key)
        #   @pair.unshift(key)
        # end
        # @pair << val
    end

    def get(key)
        underlying_array.each do |pair| 
             if pair[0] == key
                return pair[1]
             end
        end
    end

    def delete(key)

    end

    def show
        @map 
    end

end