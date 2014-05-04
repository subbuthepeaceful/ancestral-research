class Checklist < ActiveRecord::Base
  attr_accessible :name, :birth_year, :lived_in, :death_year

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
    @items << { :name => "Birth Record", :year => birth_year }

    # US Census Records
    first_census_year = birth_year + (10 - birth_year.to_s[3].to_i) 
    if first_census_year < 1790
      first_census_year = 1790
    end

    if death_year.nil?
      end_year = birth_year + DEFAULT_LIFESPAN
    else
      end_year = death_year
    end

    last_census_year = end_year - (end_year.to_s[3].to_i)     
    if last_census_year >= 1940
      last_census_year = 1940
    end

    year = first_census_year
    while year <= last_census_year
      @items << { :name => "#{year} U.S. Census", :year => year}
      year += 10
    end

    # Marriage Record
    @items << { :name => "Marriage Record", :year => birth_year + 25 }

    # State Census
    unless lived_in.blank?
      for i in 1..NUM_LIVED_IN_STATES
        lived_in_state = state(i)
        if lived_in_state
          state_records = State.find_by_code(lived_in_state).census_reports
          if state_records
            state_records.each do |sr|
              if sr.year >= birth_year && sr.year <= end_year
                @items << { :name => "#{sr.year} #{sr.state.code} Census", :year => sr.year }
              end
            end
          end
        end
      end      
    end

    # Death Record
    @items << { :name => "Death Record", :year => end_year }

    # Cemetery/Obituary
    @items << { :name => "Cemetery, Obituary", :year => end_year + 1 }

    # War records
    if birth_year <= 1775 and end_year >= 1775
      @items << { :name => "1775-1783 Revolutionary War", :year => 1775 }
    end
    if birth_year <= 1812 and end_year >= 1812
      @items << { :name => "1812-1815 War of 1812", :year => 1812 } 
    end
    if birth_year <= 1861 and end_year >= 1861
      @items << { :name => "1861-1865 Civil War", :year => 1861 }
    end
    if birth_year <= 1914 and end_year >= 1914
      @items << { :name => "1914-1918 World War I", :year => 1914 }
    end
    if birth_year <= 1939 and end_year >= 1939
      @items << { :name => "1939-1945 World War II", :year => 1939 }
    end

    @items.sort! { |a,b| a[:year] <=> b[:year] }
    @items


  end

end
