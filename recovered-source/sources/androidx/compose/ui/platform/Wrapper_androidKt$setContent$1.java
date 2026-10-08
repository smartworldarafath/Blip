package androidx.compose.ui.platform;

import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.platform.LifecycleRetainedValuesStoreOwner;
import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class Wrapper_androidKt$setContent$1 implements LifecycleRetainedValuesStoreOwner.FrameEndScheduler, FunctionAdapter {
    public final /* synthetic */ CompositionContext a;

    public Wrapper_androidKt$setContent$1(CompositionContext compositionContext) {
        this.a = compositionContext;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function b() {
        return new FunctionReference(1, this.a, CompositionContext.class, "scheduleFrameEndCallback", "scheduleFrameEndCallback(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;", 0);
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof LifecycleRetainedValuesStoreOwner.FrameEndScheduler) && (obj instanceof FunctionAdapter)) {
            return b().equals(((FunctionAdapter) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return b().hashCode();
    }
}
