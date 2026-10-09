package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import defpackage.z6;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyGridIntervalContent extends LazyLayoutIntervalContent<LazyGridInterval> implements LazyGridScope {
    public static final z6 d = new z6(8);
    public final LazyGridSpanLayoutProvider a = new LazyGridSpanLayoutProvider(this);
    public final MutableIntervalList b = new MutableIntervalList();
    public boolean c;

    public LazyGridIntervalContent(Function1 function1) {
        function1.b(this);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    public final MutableIntervalList e() {
        return this.b;
    }
}
