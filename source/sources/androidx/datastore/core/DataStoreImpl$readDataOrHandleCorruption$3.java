package androidx.datastore.core;

import defpackage.u2;
import java.io.Serializable;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3", f = "DataStoreImpl.kt", l = {387, 388, 390}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataStoreImpl$readDataOrHandleCorruption$3 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    public Serializable n;
    public int o;
    public final /* synthetic */ Ref$ObjectRef p;
    public final /* synthetic */ DataStoreImpl q;
    public final /* synthetic */ Ref$IntRef r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataOrHandleCorruption$3(Ref$ObjectRef ref$ObjectRef, DataStoreImpl dataStoreImpl, Ref$IntRef ref$IntRef, Continuation continuation) {
        super(1, continuation);
        this.p = ref$ObjectRef;
        this.q = dataStoreImpl;
        this.r = ref$IntRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        DataStoreImpl dataStoreImpl = this.q;
        Ref$IntRef ref$IntRef = this.r;
        return new DataStoreImpl$readDataOrHandleCorruption$3(this.p, dataStoreImpl, ref$IntRef, (Continuation) obj).v(Unit.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x006b, code lost:
    
        if (r9 != r0) goto L30;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Ref$ObjectRef ref$ObjectRef;
        Ref$IntRef ref$IntRef;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        Ref$IntRef ref$IntRef2 = this.r;
        Ref$ObjectRef ref$ObjectRef2 = this.p;
        DataStoreImpl dataStoreImpl = this.q;
        try {
        } catch (CorruptionException unused) {
            Object obj2 = ref$ObjectRef2.j;
            this.n = ref$IntRef2;
            this.o = 3;
            obj = dataStoreImpl.k(obj2, true, this);
        }
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        ref$IntRef2 = (Ref$IntRef) this.n;
                        ResultKt.b(obj);
                        ref$IntRef2.j = ((Number) obj).intValue();
                        return Unit.a;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ref$IntRef = (Ref$IntRef) this.n;
                ResultKt.b(obj);
                ref$IntRef.j = ((Number) obj).intValue();
                return Unit.a;
            }
            ref$ObjectRef = (Ref$ObjectRef) this.n;
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            this.n = ref$ObjectRef2;
            this.o = 1;
            obj = dataStoreImpl.j(this);
            if (obj != coroutineSingletons) {
                ref$ObjectRef = ref$ObjectRef2;
            } else {
                return coroutineSingletons;
            }
        }
        ref$ObjectRef.j = obj;
        InterProcessCoordinator f = dataStoreImpl.f();
        this.n = ref$IntRef2;
        this.o = 2;
        obj = ((SingleProcessCoordinator) f).a();
        if (obj != coroutineSingletons) {
            ref$IntRef = ref$IntRef2;
            ref$IntRef.j = ((Number) obj).intValue();
            return Unit.a;
        }
        return coroutineSingletons;
    }
}
