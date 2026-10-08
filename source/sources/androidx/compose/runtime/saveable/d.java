package androidx.compose.runtime.saveable;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Function1 {
    public final /* synthetic */ SaveableStateHolderImpl j;

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        boolean z;
        SaveableStateRegistry saveableStateRegistry = this.j.l;
        if (saveableStateRegistry != null) {
            z = saveableStateRegistry.b(obj);
        } else {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
