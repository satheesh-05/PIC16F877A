#include <Keypad.h>

const int forceSensorPin = A0;
const int vibrationSensorPin = A1;
const int redPinForce = 32;
const int greenPinForce = 33;
const int redPinVibration = 34;
const int greenPinVibration = 35;
const int redPinKeypad = 12;  // Now used for keypad
const int greenPinKeypad = 10;

const int threshold = 500;
const int pressesBeforeRed = 30;

char code[4] = {'1', '0', '8', '\0'};
int pressCount = 0;

const int ROW_NUM    = 4;
const int COLUMN_NUM = 4;

char keys[ROW_NUM][COLUMN_NUM] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'*','0','#','D'}
};

byte pin_rows[ROW_NUM] = {9, 8, 7, 6};
byte pin_column[COLUMN_NUM] = {5, 4, 3, 2};

Keypad keypad = Keypad(makeKeymap(keys), pin_rows, pin_column, ROW_NUM, COLUMN_NUM);

void setup() {
  pinMode(forceSensorPin, INPUT);
  pinMode(vibrationSensorPin, INPUT);
  pinMode(redPinForce, OUTPUT);
  pinMode(greenPinForce, OUTPUT);
  pinMode(redPinVibration, OUTPUT);
  pinMode(greenPinVibration, OUTPUT);
  pinMode(redPinKeypad, OUTPUT);  // Used for keypad
  pinMode(greenPinKeypad, OUTPUT);

  blinkRedLEDForce();
  blinkRedLEDVibrationInitial();
  blinkRedLEDKeypadInitial();
}

void loop() {
  int forceValue = analogRead(forceSensorPin);
  int vibrationValue = digitalRead(vibrationSensorPin);
  char key = keypad.getKey();
 
  if (forceValue > threshold) {
    blinkGreenLEDForce();
    pressCount++;

    if (pressCount >= pressesBeforeRed) {
      pressCount = 0;
      blinkRedLEDForce();
    }
  }

  if (vibrationValue == HIGH) {
    blinkGreenLEDVibration();
  } else {
    blinkRedLEDVibration();
  }

  if (key) {
    checkCode(key);
  }
}

void checkCode(char key) {
  static int index = 0;

  if (key == code[index]) {
    index++;

    if (code[index] == '\0') {
      blinkGreenLEDKeypad();
      index = 0;
    }
  } else {
    index = 0;
  }
}

void blinkRedLEDForce() {
  digitalWrite(redPinForce, HIGH);
}

void blinkGreenLEDForce() {
  digitalWrite(redPinForce, LOW);
  delay(500);
  digitalWrite(greenPinForce, HIGH);
  delay(500);
  digitalWrite(greenPinForce, LOW);
  delay(500);
}

void blinkRedLEDVibration() {
  digitalWrite(redPinVibration, HIGH);
}

void blinkGreenLEDVibration() {
  digitalWrite(redPinVibration, LOW);
  delay(500);
  digitalWrite(greenPinVibration, HIGH);
  delay(500);
  digitalWrite(greenPinVibration, LOW);
  delay(500);
}

void blinkRedLEDVibrationInitial() {
  digitalWrite(redPinVibration, HIGH);
  delay(2000);
  digitalWrite(redPinVibration, LOW);
}

void blinkRedLEDKeypad() {
  digitalWrite(redPinKeypad, HIGH);  // Use redPin for keypad
}

void blinkGreenLEDKeypad() {
  digitalWrite(redPinKeypad, LOW);  // Use redPin for keypad
  delay(500);
  digitalWrite(greenPinKeypad, HIGH);
  delay(500);
 
}

void blinkRedLEDKeypadInitial() {
  digitalWrite(redPinKeypad, HIGH);
  delay(2000);
  //digitalWrite(redPinKeypad, LOW);
}
