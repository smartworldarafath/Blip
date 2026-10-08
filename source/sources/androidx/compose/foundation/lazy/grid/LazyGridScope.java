package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.a7;
import defpackage.ea;
import defpackage.fa;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface LazyGridScope {
    static void a(LazyGridScope lazyGridScope, Function1 function1, ComposableLambdaImpl composableLambdaImpl) {
        LazyGridIntervalContent lazyGridIntervalContent = (LazyGridIntervalContent) lazyGridScope;
        int i = 0;
        lazyGridIntervalContent.b.a(1, new LazyGridInterval(null, new ea(function1, i), new a7(28), new ComposableLambdaImpl(-291643851, true, new fa(composableLambdaImpl, i))));
        lazyGridIntervalContent.c = true;
    }
}
