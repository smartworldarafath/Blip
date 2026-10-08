package androidx.compose.animation.core;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.KeyframeBaseEntity;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class KeyframesSpecBaseConfig<T, E extends KeyframeBaseEntity<T>> {
    public int a = 300;
    public final MutableIntObjectMap b;

    public KeyframesSpecBaseConfig() {
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
        this.b = new MutableIntObjectMap();
    }
}
