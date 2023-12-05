module ApplicationHelper
    def category_number_to_text(category_string)
        numeric_part = category_string.scan(/\d+/).first.to_i
    
        # Define textual representations for numbers 0 to 19
        base_words = %w[Zero One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen]
    
        # Define textual representations for tens
        tens_words = %w[Twenty Thirty Forty Fifty Sixty Seventy Eighty Ninety]
    
        # Handle special cases: 0-19
        return base_words[numeric_part] if numeric_part.between?(0, 19)
    
        # Handle other cases: 20 and above
        if numeric_part < 100
          # For numbers less than 100, combine tens and ones
          return "#{tens_words[numeric_part / 10 - 2]}#{base_words[numeric_part % 10]}" unless numeric_part % 10 == 0
          return tens_words[numeric_part / 10 - 2]
        elsif numeric_part < 1000
          # For numbers less than 1000, combine hundreds, tens, and ones
          return "#{base_words[numeric_part / 100]}Hundred#{number_to_text(numeric_part % 100)}" unless numeric_part % 100 == 0
          return "#{base_words[numeric_part / 100]}Hundred"
        else
          # Handle numbers above 1000 (you can extend this logic as needed)
          return 'Number is too large for this example'
        end
    end     
end
