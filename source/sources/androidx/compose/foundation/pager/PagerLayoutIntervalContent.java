package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class PagerLayoutIntervalContent extends LazyLayoutIntervalContent<PagerIntervalContent> {
    public final MutableIntervalList a;

    public PagerLayoutIntervalContent(Function4 function4, Function1 function1, int i) {
        MutableIntervalList mutableIntervalList = new MutableIntervalList();
        mutableIntervalList.a(i, new PagerIntervalContent(function1, function4));
        this.a = mutableIntervalList;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    public final MutableIntervalList e() {
        return this.a;
    }
}
