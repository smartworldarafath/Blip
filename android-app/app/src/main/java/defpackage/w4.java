package defpackage;

import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class w4 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ CacheWindowLogic k;
    public final /* synthetic */ CacheWindowScope l;

    public /* synthetic */ w4(CacheWindowLogic cacheWindowLogic, CacheWindowScope cacheWindowScope, int i) {
        this.j = i;
        this.k = cacheWindowLogic;
        this.l = cacheWindowScope;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        CacheWindowScope cacheWindowScope = this.l;
        CacheWindowLogic cacheWindowLogic = this.k;
        int intValue = ((Integer) obj).intValue();
        int intValue2 = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                cacheWindowLogic.c(cacheWindowScope, intValue, intValue2);
                return unit;
            default:
                cacheWindowLogic.c(cacheWindowScope, intValue, intValue2);
                return unit;
        }
    }
}
