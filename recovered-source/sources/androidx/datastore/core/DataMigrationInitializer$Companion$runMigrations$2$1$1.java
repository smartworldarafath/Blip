package androidx.datastore.core;

import androidx.datastore.migrations.SharedPreferencesMigration;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1", f = "DataMigrationInitializer.kt", l = {45}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataMigrationInitializer$Companion$runMigrations$2$1$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ DataMigration o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataMigrationInitializer$Companion$runMigrations$2$1$1(DataMigration dataMigration, Continuation continuation) {
        super(1, continuation);
        this.o = dataMigration;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return new DataMigrationInitializer$Companion$runMigrations$2$1$1(this.o, (Continuation) obj).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return unit;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.n = 1;
        ((SharedPreferencesMigration) this.o).a();
        if (unit == coroutineSingletons) {
            return coroutineSingletons;
        }
        return unit;
    }
}
