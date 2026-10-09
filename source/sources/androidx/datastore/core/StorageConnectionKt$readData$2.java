package androidx.datastore.core;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.StorageConnectionKt$readData$2", f = "StorageConnection.kt", l = {74}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class StorageConnectionKt$readData$2 extends SuspendLambda implements Function3<ReadScope<Object>, Boolean, Continuation<Object>, Object> {
    public int n;
    public /* synthetic */ ReadScope o;

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.coroutines.jvm.internal.SuspendLambda, androidx.datastore.core.StorageConnectionKt$readData$2] */
    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        ((Boolean) obj2).getClass();
        ?? suspendLambda = new SuspendLambda(3, (Continuation) obj3);
        suspendLambda.o = (ReadScope) obj;
        return suspendLambda.v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return obj;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        ReadScope readScope = this.o;
        this.n = 1;
        FileReadScope fileReadScope = (FileReadScope) readScope;
        fileReadScope.getClass();
        Object a = FileReadScope.a(fileReadScope, this);
        if (a == coroutineSingletons) {
            return coroutineSingletons;
        }
        return a;
    }
}
