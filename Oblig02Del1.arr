
# Variabler for flaggene

# Norges flagg
norsk-flagg =
    overlay-xy(rectangle(100, 600, "solid", "blue"), -300, 0,
    overlay-xy(rectangle(1000, 100, "solid", "blue"), 0, -240,
          overlay-xy(rectangle(160, 600, "solid", "white"), -270, 0,
            overlay-xy(rectangle(1000, 160, "solid", "white"), 0, -210,
          (rectangle(1000, 600, "solid", "crimson"))))))

# Danmarks flagg
svensk-flagg =
  overlay-xy(rectangle(140, 600, "solid", "yellow"), -270, 0,
    overlay-xy(rectangle(1000, 140, "solid", "yellow"), 0, -225,
      (rectangle(1000, 600, "solid", "blue"))))

# Sveriges flagg
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


# Brukeren kan velge hvilket flagg de ønsker å printe ved å endre "Norge" stringen i variabelen flagg
# til et av alternativene: Norge, Sverige, Danmark, Finland, Island eller Færøyene.
# Samt variabel for feilmelding ved feil input
flagg = "Færøyene"
feil-melding = "Har du husket å bruke stor forbokstav i ordet? Dine alternativer er Norge, Sverige, Danmark, Finland, Island, Færøyene"

# If statement og else if statements for å printe de ulike flaggene basert på brukers input
if flagg == "Norge":
  norsk-flagg
else if flagg == "Sverige":
  svensk-flagg
else if flagg == "Danmark":
  dansk-flagg
else if flagg == "Finland":
  finsk-flagg
else if flagg == "Island":
  islandsk-flagg
else if flagg == "Færøyene":
  faeroyske-oyer-flagg
else:
  feil-melding
end


