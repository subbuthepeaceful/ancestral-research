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
    @grouped_items = { 
      :vital_records => [], 
      :us_census_records => [],
      :state_census_records => [],
      :military_records => [],
      :other_records => []
    }

    # Birth 
    @items << { :group => "Vital Records", :name => "Birth Record", :year => birth_year }

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
      @items << { :group => "U.S. Census Records", :name => "#{year} U.S. Census", :year => year}
      year += 10
    end

    # Marriage Record
    @items << { :group => "Vital Records", :name => "Marriage Record", :year => birth_year + 25 }

    # State Census
    unless lived_in.blank?
      for i in 1..NUM_LIVED_IN_STATES
        lived_in_state = state(i)
        if lived_in_state
          state_records = State.find_by_code(lived_in_state).census_reports
          if state_records
            state_records.each do |sr|
              if sr.year >= birth_year && sr.year <= end_year
                @items << { :group => "State Census Records", :name => "#{sr.year} #{sr.state.code} Census", :year => sr.year }
              end
            end
          end
        end
      end      
    end

    # Death Record
    @items << { :group => "Vital Records", :name => "Death Record", :year => end_year }

    # Cemetery/Obituary
    @items << { :group => "Vital Records", :name => "Cemetery, Obituary", :year => end_year + 1 }

    # War records
    if birth_year <= 1775 and end_year >= 1775
      @items << { :group => "Military Records", :name => "1775-1783 Revolutionary War", :year => 1775 }
    end
    if birth_year <= 1812 and end_year >= 1812
      @items << { :group => "Military Records", :name => "1812-1815 War of 1812", :year => 1812 } 
    end
    if birth_year <= 1861 and end_year >= 1861
      @items << { :group => "Military Records", :name => "1861-1865 Civil War", :year => 1861 }
    end
    if birth_year <= 1914 and end_year >= 1914
      @items << { :group => "Military Records", :name => "1914-1918 World War I", :year => 1914 }
    end
    if birth_year <= 1939 and end_year >= 1939
      @items << { :group => "Military Records", :name => "1939-1945 World War II", :year => 1939 }
    end

    # Other Records
    @items << { :group => "Other Records", :name => "Immigration", :year => 2000 }
    @items << { :group => "Other Records", :name => "Tax", :year => 2001 }
    @items << { :group => "Other Records", :name => "Other", :year => 2002 }

    # To Do Records
    @items << { :group => "To Do Records", :name => "", :year => 2003 }
    @items << { :group => "To Do Records", :name => "", :year => 2004 }

    @items.sort! { |a,b| a[:year] <=> b[:year] }

    @grouped_items[:vital_records] = @items.select { |i| i[:group] == "Vital Records"}.dup
    @grouped_items[:us_census_records] = @items.select { |i| i[:group] == "U.S. Census Records"}.dup
    @grouped_items[:state_census_records] = @items.select { |i| i[:group] == "State Census Records"}.dup
    @grouped_items[:military_records] = @items.select { |i| i[:group] == "Military Records"}.dup
    @grouped_items[:other_records] = @items.select { |i| i[:group] == "Other Records"}.dup
    @grouped_items[:to_do_records] = @items.select { |i| i[:group] == "To Do Records"}.dup

    [@items,@grouped_items]

  end

end
