package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import defpackage.u2;
import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidUiDispatcher$Companion$currentThread$1 extends ThreadLocal<CoroutineContext> {
    @Override // java.lang.ThreadLocal
    public final CoroutineContext initialValue() {
        Choreographer choreographer = Choreographer.getInstance();
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, Handler.createAsync(myLooper));
            return CoroutineContext.Element.DefaultImpls.c(androidUiDispatcher, androidUiDispatcher.u);
        }
        u2.l("no Looper on this thread");
        return null;
    }
}
