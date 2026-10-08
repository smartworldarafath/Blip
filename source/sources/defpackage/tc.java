package defpackage;

import android.view.View;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.tracing.Trace;
import androidx.work.ConfigurationKt$createDefaultTracer$tracer$1;
import androidx.work.Operation;
import androidx.work.Tracer;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.android.core.ViewHierarchyEventProcessor;
import io.sentry.protocol.ViewHierarchy;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class tc implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ tc(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
        this.n = obj4;
        this.o = obj5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.o;
        Object obj2 = this.n;
        Object obj3 = this.m;
        Object obj4 = this.l;
        Object obj5 = this.k;
        switch (i) {
            case 0:
                String str = (String) obj4;
                Function0 function0 = (Function0) obj3;
                MutableLiveData mutableLiveData = (MutableLiveData) obj2;
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) obj;
                ((ConfigurationKt$createDefaultTracer$tracer$1) ((Tracer) obj5)).getClass();
                boolean d = Trace.d();
                if (d) {
                    try {
                        android.os.Trace.beginSection(Trace.e(str));
                    } finally {
                        if (d) {
                            android.os.Trace.endSection();
                        }
                    }
                }
                try {
                    function0.a();
                    Operation.State.SUCCESS success = Operation.a;
                    mutableLiveData.b(success);
                    completer.a(success);
                } catch (Throwable th) {
                    mutableLiveData.b(new Operation.State.FAILURE(th));
                    completer.c(th);
                }
                if (d) {
                    return;
                } else {
                    return;
                }
            default:
                AtomicReference atomicReference = (AtomicReference) obj5;
                View view = (View) obj4;
                List list = (List) obj3;
                CountDownLatch countDownLatch = (CountDownLatch) obj2;
                ILogger iLogger = (ILogger) obj;
                try {
                    ArrayList arrayList = new ArrayList(1);
                    ViewHierarchy viewHierarchy = new ViewHierarchy("android_view_system", arrayList);
                    ViewHierarchyNode c = ViewHierarchyEventProcessor.c(view);
                    arrayList.add(c);
                    ViewHierarchyEventProcessor.b(view, c, list);
                    atomicReference.set(viewHierarchy);
                    countDownLatch.countDown();
                    return;
                } catch (Throwable th2) {
                    iLogger.b(SentryLevel.ERROR, "Failed to process view hierarchy.", th2);
                    return;
                }
        }
    }
}
