def palindrome?(phrase)
  phrase = phrase.downcase.gsub(/\W/, "")
  return true if phrase.length < 2
  return false unless phrase.slice!(0) == phrase.slice!(-1)
    palindrome?(phrase)
end