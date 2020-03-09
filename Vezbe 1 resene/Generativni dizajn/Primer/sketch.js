var tileSize, // veličina jedne pločice (u pikselima)
  halfSize, // polovina te veličine će biti korisna kasnije za računanje sredine
  backgroundColor, // boja pozadine
  tileColor, // boja pločica
  specialTileColor, // boja "specijalnih" pločica
  specialTileFrequency; // učestalost specijalnih pločica

// Poziva se jedanput prilikom pokretanja programa, podešava "scenu".
function setup() {
  // windowWidth i windowHeight su promenljive koje nam daje p5.js. One sardže
  // veličinu vidljivog dela stranice u browser-u.
  createCanvas(windowWidth, windowHeight);
  
  noStroke(); // Svi oblici će biti crtani bez konturne linije.

  tileSize = 64;
  halfSize = tileSize / 2;
  backgroundColor = color(5, 157, 198); // (r, g, b)
  tileColor = color(21, 239, 156); 
  specialTileColor = color(0); // (grayscale)
  specialTileFrequency = 0.3; // 0 = 0%; 100 = 100%; 0.02 = 2%

  background(backgroundColor); // Pozadina "platna"
  
  // width i height su takođe promenljive iz p5.js-a, i one sadrže veličinu platna.
  for (var y = 0; y < height; y += halfSize) {
    for (var x = 0; x < width; x += halfSize) {
	  // random() daje nasumičan realan broj od 0 do 1, tako da će otprilike u
      // 95% slučajeva taj broj biti veći od 0.05, i tada se crta obična pločica.
      // U slučajevima kada je ipak manji, crta se specijalna pločica.
      if (random() > specialTileFrequency) {
        fill(tileColor);
      } else {
        fill(specialTileColor);
      }

	  // Kada random() primi niz kao parametar, on vraća nasumičan element iz
      // tog niza.
	  
      random(possibleTiles)(x, y);
    }
  }
}

// Niz koji sadrži funkcije koje crtaju sve moguće oblike pločica.
// Ako je potrebno da neki oblik bude učestaliji, ponoviće se više puta
var possibleTiles = [
  square1,
  square2,
  triangle1,
  triangle1,
  triangle2,
  triangle2,
  triangle3,
  triangle3,
  triangle4,
  triangle4,
  circle,
];

// Svaka od ovih funkcija prima x i y kao parametre, i zbog toga svaka
// može da se poziva na isti način.
function square1(x, y) {
  rect(x, y, halfSize, halfSize);
  rect(x + halfSize, y + halfSize, halfSize, halfSize);
}

function square2(x, y) {
  rect(x + halfSize, y, halfSize, halfSize);
  rect(x, y + halfSize, halfSize, halfSize);
}

function triangle1(x, y) {
  triangle(x, y, x, y + tileSize, x + tileSize, y);
}

function triangle2(x, y) {
  triangle(x, y, x, y + tileSize, x + tileSize, y + tileSize);
}

function triangle3(x, y) {
  triangle(x, y + tileSize, x + tileSize, y + tileSize, x + tileSize, y);
}

function triangle4(x, y) {
  triangle(x, y, x + tileSize, y + tileSize, x + tileSize, y);
}

function circle(x, y) {
  //ellipse(x + halfSize, y + halfSize, halfSize, halfSize);
  ellipse(x + tileSize, y + tileSize, tileSize, tileSize);
}

// Svaki put kada se pritisne bilo koji taster
function keyPressed() {
  // Kada je pritisnut taster S, trenutni sadržaj platna će biti
  // sačuvan kao PNG slika u Downloads folderu.
  if (key === "s") {
    saveCanvas("canvas", "png");
  }
}
