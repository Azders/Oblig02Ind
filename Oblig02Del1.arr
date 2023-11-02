
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



feil-melding = "Har du husket å bruke stor forbokstav i ordet? Dine alternativer er Norge, Sverige, Danmark, Finland, Island, Færøyene"

# Funtion flagg, basert på brukerinput via if statements. Eksempelvis input for bruker: "flagg("norge")
# printer det norske flagget.
# Brukeren kan velge velge blant norge, sverige, danmark, finland, island, færøyene.
# Eventuell feilmelding vil bli printet ved feil input i terminal.
fun flagg(x):
  if (x == "norge"):
  norsk-flagg
  else if (x == "sverige"):
  svensk-flagg
  else if (x == "danmark"):
  dansk-flagg
  else if (x == "finland"):
  finsk-flagg
  else if (x == "island"):
  islandsk-flagg
  else if (x == "færøyene"):
  faeroyske-oyer-flagg
  else:
  feil-melding
  end
  
end
