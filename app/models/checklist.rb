class Checklist < ActiveRecord::Base
  attr_accessible :first_middle_name, :last_name, :birth_year, :birth_location, :lived_in, :death_year, :death_location

  validates_presence_of :birth_year
  validates_numericality_of :birth_year

  def state(index)
    if lived_in
      states = lived_in.split(",")
      if states[index - 1]
        states[index - 1]
      else
        nil
      end
    else
      nil
    end
  end

  def items
    @items = []

    # Birth 
    @items << { :name => "Birth Certificate/Record", :year => birth_year }

    # US Census Records
    first_census_year = birth_year + (10 - birth_year.to_s[3].to_i) 

    if death_year.nil?
      death_year = birth_year + DEFAULT_LIFESPAN
    end

    last_census_year = death_year - (death_year.to_s[3].to_i)     

    year = first_census_year
    while year <= last_census_year
      @items << { :name => "#{year} U.S. Census", :year => year}
      year += 10
    end

    # Marriage Record
    @items << { :name => "Marriage Certificate/Record", :year => birth_year + 25 }

    # State Census
    unless lived_in.blank?
      for i in 1..3
        lived_in_state = state(i)
        if lived_in_state
          state_records = State.find_by_code(lived_in_state).census_reports
          if state_records
            state_records.each do |sr|
              if sr.year >= birth_year && sr.year <= death_year
                @items << { :name => "#{sr.year} #{sr.state.code} Census", :year => sr.year }
              end
            end
          end
        end
      end      
    end

    # Death Record
    @items << { :name => "Death Certificate/Record", :year => death_year }

    # Cemetery/Obituary
    @items << { :name => "Cemetery, Obituary", :year => death_year + 1 }

    # War records
    if birth_year <= 1812 and death_year >= 1812
      @items << { :name => "1812-1815 War of 1812", :year => 1812 } 
    end
    if birth_year <= 1861 and death_year >= 1861
      @items << { :name => "1861-1865 Civil War", :year => 1861 }
    end
    if birth_year <= 1914 and death_year >= 1914
      @items << { :name => "1914-1918 World War I", :year => 1914 }
    end
    if birth_year <= 1939 and death_year >= 1939
      @items << { :name => "1939-1945 World War II", :year => 1939 }
    end

    @items.sort! { |a,b| a[:year] <=> b[:year] }
    @items


  end

end
