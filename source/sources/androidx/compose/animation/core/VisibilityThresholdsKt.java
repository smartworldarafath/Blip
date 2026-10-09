package androidx.compose.animation.core;

import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class VisibilityThresholdsKt {
    public static final Map a;

    static {
        Float valueOf = Float.valueOf(1.0f);
        Pair pair = new Pair(VectorConvertersKt.b, valueOf);
        Pair pair2 = new Pair(VectorConvertersKt.h, valueOf);
        Pair pair3 = new Pair(VectorConvertersKt.g, valueOf);
        Pair pair4 = new Pair(VectorConvertersKt.a, Float.valueOf(0.01f));
        Pair pair5 = new Pair(VectorConvertersKt.i, valueOf);
        Pair pair6 = new Pair(VectorConvertersKt.e, valueOf);
        Pair pair7 = new Pair(VectorConvertersKt.f, valueOf);
        Float valueOf2 = Float.valueOf(0.4f);
        a = MapsKt.f(pair, pair2, pair3, pair4, pair5, pair6, pair7, new Pair(VectorConvertersKt.c, valueOf2), new Pair(VectorConvertersKt.d, valueOf2));
    }
}
