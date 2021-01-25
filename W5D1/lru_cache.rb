class LRUCache
    def initialize
        @cache = []
    end

    def count
      @cache.count
        # returns number of elements currently in cache
    end

    def add(el)
      @cache << [el]
        # adds element to cache according to LRU principle
    end

    def show
       @cache[0] 
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

  end