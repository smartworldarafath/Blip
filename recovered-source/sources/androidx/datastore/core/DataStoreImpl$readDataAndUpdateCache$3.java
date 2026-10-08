package androidx.datastore.core;

import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3", f = "DataStoreImpl.kt", l = {298, 300}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataStoreImpl$readDataAndUpdateCache$3 extends SuspendLambda implements Function1<Continuation<? super Pair<? extends State<Object>, ? extends Boolean>>, Object> {
    public Throwable n;
    public int o;
    public final /* synthetic */ DataStoreImpl p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataAndUpdateCache$3(DataStoreImpl dataStoreImpl, Continuation continuation) {
        super(1, continuation);
        this.p = dataStoreImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return new DataStoreImpl$readDataAndUpdateCache$3(this.p, (Continuation) obj).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Throwable th;
        State state;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        DataStoreImpl dataStoreImpl = this.p;
        try {
        } catch (Throwable th2) {
            InterProcessCoordinator f = dataStoreImpl.f();
            this.n = th2;
            this.o = 2;
            Integer a = ((SingleProcessCoordinator) f).a();
            if (a != coroutineSingletons) {
                obj = a;
                th = th2;
            }
        }
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    th = this.n;
                    ResultKt.b(obj);
                    state = new ReadException(th, ((Number) obj).intValue());
                    return new Pair(state, Boolean.TRUE);
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            this.o = 1;
            obj = DataStoreImpl.e(dataStoreImpl, true, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        state = (State) obj;
        return new Pair(state, Boolean.TRUE);
    }
}
