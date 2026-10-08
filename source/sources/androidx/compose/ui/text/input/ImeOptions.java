package androidx.compose.ui.text.input;

import androidx.compose.ui.text.intl.LocaleList;
import defpackage.jb;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ImeOptions {
    public static final ImeOptions g = new ImeOptions(false, 0, true, 1, 1, LocaleList.l);
    public final boolean a;
    public final int b;
    public final boolean c;
    public final int d;
    public final int e;
    public final LocaleList f;

    public ImeOptions(boolean z, int i, boolean z2, int i2, int i3, LocaleList localeList) {
        this.a = z;
        this.b = i;
        this.c = z2;
        this.d = i2;
        this.e = i3;
        this.f = localeList;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ImeOptions) {
                ImeOptions imeOptions = (ImeOptions) obj;
                if (this.a == imeOptions.a && this.b == imeOptions.b && this.c == imeOptions.c && this.d == imeOptions.d && this.e == imeOptions.e && Intrinsics.a(this.f, imeOptions.f)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.f.j.hashCode() + q.b(this.e, q.b(this.d, jb.b(q.b(this.b, Boolean.hashCode(this.a) * 31, 31), 31, this.c), 31), 961);
    }

    public final String toString() {
        return "ImeOptions(singleLine=" + this.a + ", capitalization=" + KeyboardCapitalization.a(this.b) + ", autoCorrect=" + this.c + ", keyboardType=" + KeyboardType.a(this.d) + ", imeAction=" + ImeAction.a(this.e) + ", platformImeOptions=null, hintLocales=" + this.f + ")";
    }
}
