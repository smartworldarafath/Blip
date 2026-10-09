package kotlin.collections;

import java.util.HashMap;
import kotlin.Pair;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class MapsKt__MapsKt extends MapsKt__MapsJVMKt {
    public static final void a(HashMap hashMap, Pair[] pairArr) {
        for (Pair pair : pairArr) {
            hashMap.put(pair.j, pair.k);
        }
    }
}
