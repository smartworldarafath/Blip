package androidx.compose.runtime.internal;

import kotlin.text.CharsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntRef {
    public int a = 0;

    public final String toString() {
        int i = this.a;
        int hashCode = hashCode();
        CharsKt.b(16);
        String num = Integer.toString(hashCode, 16);
        num.getClass();
        return "IntRef(element = " + i + ")@" + num;
    }
}
