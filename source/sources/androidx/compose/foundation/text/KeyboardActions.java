package androidx.compose.foundation.text;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class KeyboardActions {
    public final Function1 a;
    public final Function1 b;
    public final Function1 c;
    public final Function1 d;
    public final Function1 e;
    public final Function1 f;

    public KeyboardActions(Function1 function1, Function1 function12, Function1 function13, Function1 function14, Function1 function15, Function1 function16) {
        this.a = function1;
        this.b = function12;
        this.c = function13;
        this.d = function14;
        this.e = function15;
        this.f = function16;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyboardActions)) {
            return false;
        }
        KeyboardActions keyboardActions = (KeyboardActions) obj;
        if (this.a == keyboardActions.a && this.b == keyboardActions.b && this.c == keyboardActions.c && this.d == keyboardActions.d && this.e == keyboardActions.e && this.f == keyboardActions.f) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        Function1 function1 = this.a;
        if (function1 != null) {
            i = function1.hashCode();
        } else {
            i = 0;
        }
        int i7 = i * 31;
        Function1 function12 = this.b;
        if (function12 != null) {
            i2 = function12.hashCode();
        } else {
            i2 = 0;
        }
        int i8 = (i7 + i2) * 31;
        Function1 function13 = this.c;
        if (function13 != null) {
            i3 = function13.hashCode();
        } else {
            i3 = 0;
        }
        int i9 = (i8 + i3) * 31;
        Function1 function14 = this.d;
        if (function14 != null) {
            i4 = function14.hashCode();
        } else {
            i4 = 0;
        }
        int i10 = (i9 + i4) * 31;
        Function1 function15 = this.e;
        if (function15 != null) {
            i5 = function15.hashCode();
        } else {
            i5 = 0;
        }
        int i11 = (i10 + i5) * 31;
        Function1 function16 = this.f;
        if (function16 != null) {
            i6 = function16.hashCode();
        }
        return i11 + i6;
    }

    public /* synthetic */ KeyboardActions() {
        this(null, null, null, null, null, null);
    }
}
