
# Variabler for flaggene

# Norges flagg
norsk-flagg =
    overlay-xy(rectangle(100, 600, "solid", "blue"), -300, 0,
    overlay-xy(rectangle(1000, 100, "solid", "blue"), 0, -240,
          overlay-xy(rectangle(160, 600, "solid", "white"), -270, 0,
            overlay-xy(rectangle(1000, 160, "solid", "white"), 0, -210,
          (rectangle(1000, 600, "solid", "crimson"))))))

# Sveriges flagg
svensk-flagg =
  overlay-xy(rectangle(140, 600, "solid", "yellow"), -270, 0,
    overlay-xy(rectangle(1000, 140, "solid", "yellow"), 0, -225,
      (rectangle(1000, 600, "solid", "blue"))))

# Danmarks flagg
dansk-flagg =
  overlay-xy(rectangle(120, 600, "solid", "white"), -270, 0,
    overlay-xy(rectangle(1000, 120, "solid", "white"), 0, -225,
      (rectangle(1000, 600, "solid", "red"))))

# Finlands flagg
finsk-flagg =
  overlay-xy(rectangle(140, 600, "solid", "blue"), -270, 0,
    overlay-xy(rectangle(1000, 140, "solid", "blue"), 0, -225,
      (rectangle(1000, 600, "solid", "white"))))

# Islands flagg
islandsk-flagg =
  overlay-xy(rectangle(100, 600, "solid", "red"), -300, 0,
    overlay-xy(rectangle(1000, 100, "solid", "red"), 0, -240,
          overlay-xy(rectangle(160, 600, "solid", "white"), -270, 0,
            overlay-xy(rectangle(1000, 160, "solid", "white"), 0, -210,
          (rectangle(1000, 600, "solid", "blue"))))))

# Færøyenes flagg
faeroyske-oyer-flagg =
  overlay-xy(rectangle(100, 600, "solid", "red"), -300, 0,
    overlay-xy(rectangle(1000, 100, "solid", "red"), 0, -240,
      overlay-xy(rectangle(160, 600, "solid", "blue"), -270, 0,
        overlay-xy(rectangle(1000, 160, "solid", "blue"), 0, -210,
          (rectangle(1000, 600, "solid", "white"))))))



feil-melding = "Vennligst prøv på nytt, husk stor forbokstav! Dine alternativer er Norge, Sverige, Danmark, Finland, Island, Færøyene"

# Function flagg, basert på brukerinput via if statements. Eksempelvis input for bruker: "flagg("Norge")
# printer det norske flagget.
# Brukeren kan velge velge blant Norge, Sverige, Danmark, Finland, Island, Færøyene.
# Eventuell feilmelding vil bli printet ved feil input i terminal.
fun flagg(x):
  if (x == "Norge"):
  norsk-flagg
  else if (x == "Sverige"):
  svensk-flagg
  else if (x == "Danmark"):
  dansk-flagg
  else if (x == "Finland"):
  finsk-flagg
  else if (x == "Island"):
  islandsk-flagg
  else if (x == "Færøyene"):
  faeroyske-oyer-flagg
  else:
  feil-melding
  end
  
end
