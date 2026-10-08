package kotlinx.coroutines.channels;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProduceKt$awaitClose$4$1 implements Function1<Throwable, Unit> {
    public final /* synthetic */ CancellableContinuationImpl j;

    public ProduceKt$awaitClose$4$1(CancellableContinuationImpl cancellableContinuationImpl) {
        this.j = cancellableContinuationImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        CancellableContinuationImpl cancellableContinuationImpl = this.j;
        Unit unit = Unit.a;
        cancellableContinuationImpl.g(unit);
        return unit;
    }
}
