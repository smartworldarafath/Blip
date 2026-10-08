package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.LiveData;
import androidx.work.impl.utils.SerialExecutorImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OperationKt {
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.work.Operation, java.lang.Object] */
    public static final Operation a(final ConfigurationKt$createDefaultTracer$tracer$1 configurationKt$createDefaultTracer$tracer$1, final String str, final SerialExecutorImpl serialExecutorImpl, final Function0 function0) {
        configurationKt$createDefaultTracer$tracer$1.getClass();
        serialExecutorImpl.getClass();
        final ?? liveData = new LiveData(0);
        CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: sc
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object e(CallbackToFutureAdapter.Completer completer) {
                serialExecutorImpl.execute(new tc(configurationKt$createDefaultTracer$tracer$1, str, function0, liveData, completer, 0));
                return Unit.a;
            }
        });
        return new Object();
    }
}
