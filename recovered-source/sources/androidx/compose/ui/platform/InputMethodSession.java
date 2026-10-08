package androidx.compose.ui.platform;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.WeakReference;
import defpackage.r1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InputMethodSession {
    public final PlatformTextInputMethodRequest a;
    public final r1 b;
    public final Object c = new Object();
    public final MutableVector d = new MutableVector(new WeakReference[16]);
    public boolean e;

    public InputMethodSession(PlatformTextInputMethodRequest platformTextInputMethodRequest, r1 r1Var) {
        this.a = platformTextInputMethodRequest;
        this.b = r1Var;
    }
}
