class PagesController < ApplicationController

def home
  def rot_cipher(input, value)
    if input.size > 0 && ( value <= 25 && value > 0)
      lower_case = calculate(input, value)
      calculate(lower_case.swapcase, value).swapcase
    else
      return " ⚠️ ️Please enter a string and number between 1 and 25"
    end
  end

  def calculate(input, value)
    #create an array of letters a-z
    alphabet = ("a".."z").to_a
    # split alph array on input number
    alph_a , alph_b = alphabet.take(value) , alphabet.drop(value)
    # interpolate for the tr. range
    search = "#{alph_b.first}-#{alph_b.last}#{alph_a.first}-#{alph_a.last}"
    input.tr("a-z", search)
    end
  end
  helper_method :rot_cipher
end
