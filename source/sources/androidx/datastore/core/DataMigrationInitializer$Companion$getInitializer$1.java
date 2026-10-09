package androidx.datastore.core;

import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataMigrationInitializer$Companion$getInitializer$1", f = "DataMigrationInitializer.kt", l = {33}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataMigrationInitializer$Companion$getInitializer$1 extends SuspendLambda implements Function2<InitializerApi<Object>, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ List p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataMigrationInitializer$Companion$getInitializer$1(List list, Continuation continuation) {
        super(2, continuation);
        this.p = list;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DataMigrationInitializer$Companion$getInitializer$1) s((InitializerApi) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DataMigrationInitializer$Companion$getInitializer$1 dataMigrationInitializer$Companion$getInitializer$1 = new DataMigrationInitializer$Companion$getInitializer$1(this.p, continuation);
        dataMigrationInitializer$Companion$getInitializer$1.o = obj;
        return dataMigrationInitializer$Companion$getInitializer$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            InitializerApi initializerApi = (InitializerApi) this.o;
            this.n = 1;
            if (DataMigrationInitializer$Companion.a(this.p, initializerApi, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
