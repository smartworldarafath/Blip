package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.intl.LocaleList;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class KeyboardOptions {
    public final int a;
    public final Boolean b;
    public final int c;
    public final int d;

    public KeyboardOptions(int i, Boolean bool, int i2, int i3, int i4) {
        i = (i4 & 1) != 0 ? -1 : i;
        bool = (i4 & 2) != 0 ? null : bool;
        i2 = (i4 & 4) != 0 ? 0 : i2;
        i3 = (i4 & 8) != 0 ? -1 : i3;
        this.a = i;
        this.b = bool;
        this.c = i2;
        this.d = i3;
    }

    public final ImeOptions a(boolean z) {
        int i;
        boolean z2;
        int i2;
        int i3 = this.a;
        KeyboardCapitalization keyboardCapitalization = new KeyboardCapitalization(i3);
        ImeAction imeAction = null;
        if (i3 == -1) {
            keyboardCapitalization = null;
        }
        if (keyboardCapitalization != null) {
            i = keyboardCapitalization.a;
        } else {
            i = 0;
        }
        int i4 = i;
        int i5 = 1;
        Boolean bool = this.b;
        if (bool != null) {
            z2 = bool.booleanValue();
        } else {
            z2 = true;
        }
        int i6 = this.c;
        KeyboardType keyboardType = new KeyboardType(i6);
        if (i6 == 0) {
            keyboardType = null;
        }
        if (keyboardType != null) {
            i2 = keyboardType.a;
        } else {
            i2 = 1;
        }
        int i7 = this.d;
        ImeAction imeAction2 = new ImeAction(i7);
        if (i7 != -1) {
            imeAction = imeAction2;
        }
        if (imeAction != null) {
            i5 = imeAction.a;
        }
        return new ImeOptions(z, i4, z2, i2, i5, LocaleList.l);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof KeyboardOptions) {
                KeyboardOptions keyboardOptions = (KeyboardOptions) obj;
                if (this.a == keyboardOptions.a && Intrinsics.a(this.b, keyboardOptions.b) && this.c == keyboardOptions.c && this.d == keyboardOptions.d) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int hashCode = Integer.hashCode(this.a) * 31;
        Boolean bool = this.b;
        if (bool != null) {
            i = bool.hashCode();
        } else {
            i = 0;
        }
        return q.b(this.d, q.b(this.c, (hashCode + i) * 31, 31), 29791);
    }

    public final String toString() {
        return "KeyboardOptions(capitalization=" + KeyboardCapitalization.a(this.a) + ", autoCorrectEnabled=" + this.b + ", keyboardType=" + KeyboardType.a(this.c) + ", imeAction=" + ImeAction.a(this.d) + ", platformImeOptions=nullshowKeyboardOnFocus=null, hintLocales=null)";
    }
}
