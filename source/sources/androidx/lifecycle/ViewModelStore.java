package androidx.lifecycle;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ViewModelStore {
    public final LinkedHashMap a = new LinkedHashMap();

    public final void a() {
        LinkedHashMap linkedHashMap = this.a;
        Map i = MapsKt.i(linkedHashMap);
        linkedHashMap.clear();
        Iterator it = i.values().iterator();
        while (it.hasNext()) {
            ((ViewModel) it.next()).a();
        }
    }

    public final String toString() {
        String c = Reflection.a(getClass()).c();
        if (c == null) {
            c = "ViewModelStore";
        }
        int hashCode = hashCode();
        CharsKt.b(16);
        String num = Integer.toString(hashCode, 16);
        num.getClass();
        return c + "@" + num + "(keys=" + CollectionsKt.a0(this.a.keySet()) + ")";
    }
}
