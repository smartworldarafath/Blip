package androidx.lifecycle.internal;

import defpackage.i5;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.flow.MutableStateFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SavedStateHandleImpl {
    public final LinkedHashMap a;
    public final LinkedHashMap b = new LinkedHashMap();
    public final LinkedHashMap c = new LinkedHashMap();
    public final LinkedHashMap d = new LinkedHashMap();
    public final i5 e = new i5(2, this);

    public SavedStateHandleImpl(Map map) {
        this.a = new LinkedHashMap(map);
    }

    public final void a(Object obj, String str) {
        str.getClass();
        this.a.put(str, obj);
        MutableStateFlow mutableStateFlow = (MutableStateFlow) this.c.get(str);
        if (mutableStateFlow != null) {
            mutableStateFlow.setValue(obj);
        }
        MutableStateFlow mutableStateFlow2 = (MutableStateFlow) this.d.get(str);
        if (mutableStateFlow2 != null) {
            mutableStateFlow2.setValue(obj);
        }
    }
}
