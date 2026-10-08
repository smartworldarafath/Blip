package androidx.compose.runtime;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComposerKt {
    public static final OpaqueKey a = new OpaqueKey("provider");
    public static final OpaqueKey b = new OpaqueKey("provider");
    public static final OpaqueKey c = new OpaqueKey("compositionLocalMap");
    public static final OpaqueKey d = new OpaqueKey("providers");
    public static final OpaqueKey e = new OpaqueKey("reference");

    public static final void a(String str) {
        throw new ComposeRuntimeError(q.i("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }

    public static final Void b(String str) {
        throw new ComposeRuntimeError(q.i("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }
}
