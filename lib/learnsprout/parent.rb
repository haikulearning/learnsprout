module LearnSprout
  class Parent

    attr_accessor :id, :parent_id,
                  :first_name,
                  :middle_name,
                  :last_name,
                  :full_name,
                  :name_suffix,
                  :relationship,
                  :web_id,
                  :student_ids,
                  :emails,
                  :aliases,
                  :extras

    def initialize(attrs={})
      @client = attrs["client"]
      @org_id = attrs["org_id"]
      self.id = @parent_id = attrs["id"]
      @first_name = attrs["first_name"]
      @middle_name = attrs["middle_name"]
      @last_name = attrs["last_name"]
      @full_name = attrs["full_name"]
      @name_suffix = attrs["name_suffix"]
      @relationship = attrs["relationship"]
      @web_id = attrs["web_id"]
      @student_ids = []
      if attrs["students"]
        # only care about :id for the moment
        @student_ids = attrs["students"].collect { |student| student["id"] }
      end
      @emails = attrs["emails"]
      @aliases = attrs["aliases"]
      @extras = attrs["extras"]
    end
  end
end 
