# ftof method takes a temperature in FAHRENHEIT and returns the temperature in CELSIUS
def ftoc(f)
  (f - 32.0) * 5.0/9.0
end

# ctof method takes a temperature in CELSIUS and returns the temperature in FAHRENHEIT
def ctof(c)
  c * 9.0/5.0 + 32.0
end
