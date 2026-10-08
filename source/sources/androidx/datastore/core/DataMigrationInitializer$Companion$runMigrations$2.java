package androidx.datastore.core;

import android.content.SharedPreferences;
import androidx.datastore.migrations.SharedPreferencesMigration;
import androidx.datastore.migrations.SharedPreferencesView;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
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
@DebugMetadata(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2", f = "DataMigrationInitializer.kt", l = {44, 46}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataMigrationInitializer$Companion$runMigrations$2 extends SuspendLambda implements Function2<Object, Continuation<Object>, Object> {
    public Iterator n;
    public DataMigration o;
    public Object p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ List s;
    public final /* synthetic */ ArrayList t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataMigrationInitializer$Companion$runMigrations$2(List list, ArrayList arrayList, Continuation continuation) {
        super(2, continuation);
        this.s = list;
        this.t = arrayList;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DataMigrationInitializer$Companion$runMigrations$2) s(obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DataMigrationInitializer$Companion$runMigrations$2 dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2(this.s, this.t, continuation);
        dataMigrationInitializer$Companion$runMigrations$2.r = obj;
        return dataMigrationInitializer$Companion$runMigrations$2;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0097 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0041  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Iterator it;
        List list;
        DataMigration dataMigration;
        Iterator it2;
        Object obj2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.q;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    it = this.n;
                    list = (List) this.r;
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                obj2 = this.p;
                DataMigration dataMigration2 = this.o;
                it2 = this.n;
                List list2 = (List) this.r;
                ResultKt.b(obj);
                dataMigration = dataMigration2;
                list = list2;
                if (!((Boolean) obj).booleanValue()) {
                    list.add(new DataMigrationInitializer$Companion$runMigrations$2$1$1(dataMigration, null));
                    this.r = list;
                    this.n = it2;
                    this.o = null;
                    this.p = null;
                    this.q = 2;
                    SharedPreferencesMigration sharedPreferencesMigration = (SharedPreferencesMigration) dataMigration;
                    obj = sharedPreferencesMigration.b.f(new SharedPreferencesView((SharedPreferences) sharedPreferencesMigration.e.getValue(), sharedPreferencesMigration.f), obj2, this);
                    if (obj != coroutineSingletons) {
                        it = it2;
                    }
                    return coroutineSingletons;
                }
                obj = obj2;
                it = it2;
            }
        } else {
            ResultKt.b(obj);
            obj = this.r;
            it = this.s.iterator();
            list = this.t;
        }
        if (!it.hasNext()) {
            DataMigration dataMigration3 = (DataMigration) it.next();
            this.r = list;
            this.n = it;
            this.o = dataMigration3;
            this.p = obj;
            this.q = 1;
            SharedPreferencesMigration sharedPreferencesMigration2 = (SharedPreferencesMigration) dataMigration3;
            Object b = sharedPreferencesMigration2.b(obj, this);
            if (b != coroutineSingletons) {
                Iterator it3 = it;
                obj2 = obj;
                obj = b;
                dataMigration = sharedPreferencesMigration2;
                it2 = it3;
                if (!((Boolean) obj).booleanValue()) {
                }
                if (!it.hasNext()) {
                    return obj;
                }
            }
            return coroutineSingletons;
        }
    }
}
