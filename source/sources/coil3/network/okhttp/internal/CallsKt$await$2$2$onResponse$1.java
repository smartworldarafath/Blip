package coil3.network.okhttp.internal;

import defpackage.jb;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import okhttp3.Response;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CallsKt$await$2$2$onResponse$1 implements Function3<Throwable, Response, CoroutineContext, Unit> {
    public static final CallsKt$await$2$2$onResponse$1 j = new Object();

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        try {
            jb.m((Response) obj2);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
        return Unit.a;
    }
}
