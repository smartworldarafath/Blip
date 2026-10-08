package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.a7;
import defpackage.fa;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyListIntervalContent extends LazyLayoutIntervalContent<LazyListInterval> implements LazyListScope {
    public final MutableIntervalList a = new MutableIntervalList();

    public LazyListIntervalContent(Function1 function1) {
        function1.b(this);
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public final void b(int i, Function1 function1, Function1 function12, ComposableLambdaImpl composableLambdaImpl) {
        this.a.a(i, new LazyListInterval(function1, function12, composableLambdaImpl));
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public final void c(ComposableLambdaImpl composableLambdaImpl) {
        this.a.a(1, new LazyListInterval(null, new a7(28), new ComposableLambdaImpl(-857469575, true, new fa(composableLambdaImpl, 1))));
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    public final MutableIntervalList e() {
        return this.a;
    }
}
