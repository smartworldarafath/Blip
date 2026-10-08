package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Function1 {
    public final /* synthetic */ int j;

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return Integer.valueOf(((LazyGridSpanLayoutProvider.Bucket) obj).a - this.j);
    }
}
