package androidx.compose.foundation.pager;

import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        DefaultPagerState defaultPagerState = (DefaultPagerState) obj2;
        SaverKt$Saver$1 saverKt$Saver$1 = DefaultPagerState.G;
        return CollectionsKt.C(Integer.valueOf(defaultPagerState.d.a()), Float.valueOf(RangesKt.c(defaultPagerState.d.b(), -0.5f, 0.5f)), Integer.valueOf(defaultPagerState.l()));
    }
}
