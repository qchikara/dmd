/*
TEST_OUTPUT:
---
fail_compilation/fail_typeident.d(14): Error: undefined identifier RawType
fail_compilation/fail_typeident.d(15): Error: undefined identifier Modified
fail_compilation/fail_typeident.d(16): Error: undefined identifier Shared
fail_compilation/fail_typeident.d(18): Error: undefined identifier Inout
fail_compilation/fail_typeident.d(19): Error: undefined identifier InoutConst
---
*/

// Error messages for undefined type identifiers

RawType var1;          // RawType
const(Modified) var2; // Modified <= const(Modified)
void foo( shared(Shared) );
class C {
    void foo1( inout(Inout) );
    void foo2( inout(const(InoutConst)) );
}
