#include <pic.h>
__CONFIG(0X3F72);

unsigned int A=0,B=0,C=0,D=0,E=0;

#define RS RD0
#define RW RD1
#define EN RD2


void delay(unsigned int a) {
    while(a--);
}


void lcd_cmd(unsigned char com) {
    PORTD = (com & 0xf0);
    RS = 0;
    RW = 0;
    EN = 1;
    delay(200);
    EN = 0;
    unsigned int b;
    b = com << 4; 
    PORTD = (b & 0xf0);
    RS = 0;
    RW = 0;
    EN = 1;
    delay(200);
    EN = 0;
}

void lcd_data(unsigned char dat) {
    PORTD = (dat & 0xf0);
    RS = 1;
    RW = 0;
    EN = 1;
    delay(200);
    EN = 0;
    unsigned int c;
    c = dat << 4;
    PORTD = (c & 0xf0);
    RS = 1;
    RW = 0;
    EN = 1;
    delay(200);
    EN = 0;
}


void lcd_init() {
    lcd_cmd(0x02);
    lcd_cmd(0x28); //  0x28 for 4-bit mode
    lcd_cmd(0x06);
    lcd_cmd(0x0c);
    lcd_cmd(0x01);
}


void lcd_display(const unsigned char d[]) {
    for(int e = 0; d[e] != 0; e++) {
        lcd_data(d[e]);
    }
}


void main() {
    ADCON0 = 0X40;  // ANALOG COMPILER ON
    ADCON1 = 0X8E;
    TRISD = 0x00;
    PORTD = 0x00;
    lcd_init();
    delay(200);
    lcd_cmd(0x80);
    lcd_display("WELCOME");
    delay(50000);
    

    while(1) {
        CHS2 = 0;
        CHS1 = 0;
        CHS0 = 0;
        ADON = 1;
        delay(600);
        ADCON0 = (ADCON0 + 0X04);
        delay(600);
        A = ADRESH << 8;
        delay(600);
        A = (A + ADRESL); 
        // Convert to Fahrenheit: (Celsius * 9/5) + 32
        int Celsius = A / 2; // Assuming LM35 output is halved, adjust as per your setup
        B = ((Celsius * 9) / 5) + 32;
        C = B / 100;
        D = (B % 100) / 10;
        E = (B % 100) % 10;

        lcd_cmd(0xC0);
        lcd_display("Body Temp(F) ");
        lcd_data(C + 0x30);
        lcd_data(D + 0x30);
        lcd_data(E + 0x30);
    }
}
