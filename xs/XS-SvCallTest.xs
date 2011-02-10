#include "xshelper.h"

MODULE = XS::SvCallTest    PACKAGE = XS::SvCallTest

PROTOTYPES: DISABLE

int
call_sv(SV* subr, I32 flags)
CODE:
{
    int r;
    PUSHMARK(SP);
    r = RETVAL = call_sv(subr, flags);
    while(r--) (void)POPs;
}
OUTPUT:
    RETVAL


void
empty_xs()
PPCODE:
{
}

void
return2_xs()
PPCODE:
{
    mPUSHi(42);
    mPUSHi(42);
}
