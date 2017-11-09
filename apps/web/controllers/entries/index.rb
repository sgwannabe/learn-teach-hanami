module Web::Controllers::Entries
  class Index
    include Web::Action

    expose :entries
    expose :sort #not really necessary at this time
    
    def call(params)      
      
      # @entries = EntryRepository.new.all
      @entries = EntryRepository.new.most_recent
      @sort = params[:sort]
      
      #most_recent or least_recent
      if @sort == 'most_recent'
        @entries == EntryRepository.new.most_recent
      else
        @entries == EntryRepository.new.least_recent  
      end      
    end
  end
end
