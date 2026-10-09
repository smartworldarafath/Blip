package androidx.compose.ui.semantics;

import defpackage.cf;
import defpackage.jb;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SemanticsPropertyKey<T> {
    public final String a;
    public final Function2 b;
    public final boolean c;

    public /* synthetic */ SemanticsPropertyKey(String str) {
        this(str, new cf(14, (byte) 0));
    }

    public final String toString() {
        return jb.f("AccessibilityKey: ", this.a);
    }

    public SemanticsPropertyKey(String str, Function2 function2) {
        this.a = str;
        this.b = function2;
    }

    public SemanticsPropertyKey(String str, int i) {
        this(str);
        this.c = true;
    }

    public SemanticsPropertyKey(String str, boolean z, Function2 function2) {
        this(str, function2);
        this.c = z;
    }
}
