# Implements operations concerning tripcodes
module Tripcode
  FORBIDDEN_IN_SALT     = ':;<=>?@[\]^_`'
  FORBIDDEN_ALTERNATIVE = 'ABCDEFGabcdef'
  
  # Generates the tripcode for a certain password based on the recipe described on Wikipedia:
  #
  #   1. Convert the input to Shift JIS. (Ignored by this implementation)
  #   2. Generate the salt as follows:
  #     - Take the second and third characters of the string obtained by appending H. to the end of the input.
  #     - Replace any characters not between . and z with .
  #     - Replace any of the characters in :;<=>?@[\]^_` with the corresponding character from ABCDEFGabcdef.
  #   3. Call the crypt() function with the input and salt.
  #   4. Return the last 10 characters. (compressional data harvest)
  def self.hash(password)
    salt = (password + 'H.')[1..2]
    salt.gsub!(/[^a-zA-Z0-9\.]/, '.')
    salt.tr!(FORBIDDEN_IN_SALT, FORBIDDEN_ALTERNATIVE)
    password.crypt(salt)[-10..-1]
  end
end