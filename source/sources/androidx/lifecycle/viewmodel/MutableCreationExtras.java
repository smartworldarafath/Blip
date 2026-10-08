package androidx.lifecycle.viewmodel;

import androidx.lifecycle.viewmodel.CreationExtras;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableCreationExtras extends CreationExtras {
    public MutableCreationExtras(CreationExtras creationExtras) {
        creationExtras.getClass();
        LinkedHashMap linkedHashMap = creationExtras.a;
        linkedHashMap.getClass();
        this.a.putAll(linkedHashMap);
    }

    @Override // androidx.lifecycle.viewmodel.CreationExtras
    public final Object a(CreationExtras.Key key) {
        return this.a.get(key);
    }

    public /* synthetic */ MutableCreationExtras(int i) {
        this(CreationExtras.Empty.b);
    }
}
