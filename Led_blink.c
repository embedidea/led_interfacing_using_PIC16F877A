 #define led PORTC.B0
void main ()
{
TRISC = 0x00;
while (1)
{
led = 1;
Delay_ms (1000);
led = 0;
Delay_ms (1000);
}
}
