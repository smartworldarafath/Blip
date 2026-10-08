package androidx.lifecycle;

import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.jb;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SavedStateHandleSupport$special$$inlined$Key$1 implements CreationExtras.Key<SavedStateRegistryOwner> {
    public final String toString() {
        int hashCode = hashCode();
        CharsKt.b(16);
        String num = Integer.toString(hashCode, 16);
        num.getClass();
        return jb.h("CreationExtras.Key@", num, "<", Reflection.a(SavedStateRegistryOwner.class).c(), ">");
    }
}
