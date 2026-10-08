package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComposableLambdaImpl$invoke$1 extends AdaptedFunctionReference implements Function2<Composer, Integer, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int intValue = ((Number) obj2).intValue();
        ((ComposableLambdaImpl) this.j).d(intValue, (Composer) obj);
        return Unit.a;
    }
}
