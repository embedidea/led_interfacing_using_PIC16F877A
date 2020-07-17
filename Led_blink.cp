#line 1 "C:/Users/Subhankar Paul/Desktop/Led_blink/Led_blink.c"

void main ()
{
TRISC = 0x00;
while (1)
{
 PORTC.B0  = 1;
Delay_ms (1000);
 PORTC.B0  = 0;
Delay_ms (1000);
}
}
