package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StartStopTokensImpl implements StartStopTokens {
    public final LinkedHashMap a = new LinkedHashMap();

    @Override // androidx.work.impl.StartStopTokens
    public final StartStopToken a(WorkGenerationalId workGenerationalId) {
        LinkedHashMap linkedHashMap = this.a;
        Object obj = linkedHashMap.get(workGenerationalId);
        if (obj == null) {
            obj = new StartStopToken(workGenerationalId);
            linkedHashMap.put(workGenerationalId, obj);
        }
        return (StartStopToken) obj;
    }

    @Override // androidx.work.impl.StartStopTokens
    public final boolean b(WorkGenerationalId workGenerationalId) {
        return this.a.containsKey(workGenerationalId);
    }

    @Override // androidx.work.impl.StartStopTokens
    public final StartStopToken c(WorkGenerationalId workGenerationalId) {
        workGenerationalId.getClass();
        return (StartStopToken) this.a.remove(workGenerationalId);
    }

    @Override // androidx.work.impl.StartStopTokens
    public final List remove(String str) {
        str.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = this.a;
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            if (Intrinsics.a(((WorkGenerationalId) entry.getKey()).a, str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.keySet().iterator();
        while (it.hasNext()) {
            linkedHashMap2.remove((WorkGenerationalId) it.next());
        }
        return CollectionsKt.X(linkedHashMap.values());
    }
}
