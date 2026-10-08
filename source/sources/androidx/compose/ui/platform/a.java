package androidx.compose.ui.platform;

import java.util.concurrent.Executor;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Executor {
    public final /* synthetic */ AndroidComposeView j;

    public /* synthetic */ a(AndroidComposeView androidComposeView) {
        this.j = androidComposeView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.jvm.internal.FunctionReference, kotlin.jvm.functions.Function0] */
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Class cls = AndroidComposeView.R0;
        AndroidComposeView outOfFrameExecutor = this.j.getOutOfFrameExecutor();
        if (outOfFrameExecutor != 0) {
            outOfFrameExecutor.E(new FunctionReference(0, runnable, Runnable.class, "run", "run()V", 0));
        }
    }
}
