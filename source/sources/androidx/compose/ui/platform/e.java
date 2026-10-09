package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Function0 {
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        Choreographer choreographer;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            choreographer = Choreographer.getInstance();
        } else {
            DefaultScheduler defaultScheduler = Dispatchers.a;
            choreographer = (Choreographer) BuildersKt.d(MainDispatcherLoader.a, new SuspendLambda(2, null));
        }
        AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, Handler.createAsync(Looper.getMainLooper()));
        return CoroutineContext.Element.DefaultImpls.c(androidUiDispatcher, androidUiDispatcher.u);
    }
}
