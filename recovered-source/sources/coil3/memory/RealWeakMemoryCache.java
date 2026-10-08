package coil3.memory;

import coil3.Image;
import coil3.memory.MemoryCache;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealWeakMemoryCache {
    public final LinkedHashMap a = new LinkedHashMap();
    public int b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class InternalValue {
        public final WeakReference a;
        public final Map b;
        public final long c;

        public InternalValue(WeakReference weakReference, Map map, long j) {
            this.a = weakReference;
            this.b = map;
            this.c = j;
        }
    }

    public final void a() {
        Image image;
        int i = this.b;
        this.b = i + 1;
        if (i >= 10) {
            this.b = 0;
            Iterator it = this.a.values().iterator();
            while (it.hasNext()) {
                ArrayList arrayList = (ArrayList) it.next();
                if (arrayList.size() <= 1) {
                    InternalValue internalValue = (InternalValue) CollectionsKt.t(arrayList);
                    if (internalValue != null) {
                        image = (Image) internalValue.a.get();
                    } else {
                        image = null;
                    }
                    if (image == null) {
                        it.remove();
                    }
                } else {
                    int size = arrayList.size();
                    int i2 = 0;
                    for (int i3 = 0; i3 < size; i3++) {
                        int i4 = i3 - i2;
                        if (((InternalValue) arrayList.get(i4)).a.get() == null) {
                            arrayList.remove(i4);
                            i2++;
                        }
                    }
                    if (arrayList.isEmpty()) {
                        it.remove();
                    }
                }
            }
        }
    }

    public final void b(MemoryCache.Key key, Image image, Map map, long j) {
        LinkedHashMap linkedHashMap = this.a;
        Object obj = linkedHashMap.get(key);
        if (obj == null) {
            obj = new ArrayList();
            linkedHashMap.put(key, obj);
        }
        ArrayList arrayList = (ArrayList) obj;
        InternalValue internalValue = new InternalValue(new WeakReference(image), map, j);
        if (arrayList.isEmpty()) {
            arrayList.add(internalValue);
        } else {
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                InternalValue internalValue2 = (InternalValue) arrayList.get(i);
                if (j >= internalValue2.c) {
                    if (internalValue2.a.get() == image) {
                        arrayList.set(i, internalValue);
                    } else {
                        arrayList.add(i, internalValue);
                    }
                } else {
                    i++;
                }
            }
        }
        a();
    }
}
