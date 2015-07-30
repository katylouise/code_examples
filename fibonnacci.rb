def fibonnacci(n)
  return 0 if n == 1
  return 1 if n == 2
  return fibonnacci(n - 1) + fibonnacci(n - 2)
end

