package androidx.datastore.core;

import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DataMigrationInitializer$Companion {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0082 -> B:13:0x0065). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0085 -> B:13:0x0065). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(List list, InitializerApi initializerApi, ContinuationImpl continuationImpl) {
        DataMigrationInitializer$Companion$runMigrations$1 dataMigrationInitializer$Companion$runMigrations$1;
        int i;
        List list2;
        Iterator it;
        Ref$ObjectRef ref$ObjectRef;
        Throwable th;
        if (continuationImpl instanceof DataMigrationInitializer$Companion$runMigrations$1) {
            DataMigrationInitializer$Companion$runMigrations$1 dataMigrationInitializer$Companion$runMigrations$12 = (DataMigrationInitializer$Companion$runMigrations$1) continuationImpl;
            int i2 = dataMigrationInitializer$Companion$runMigrations$12.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dataMigrationInitializer$Companion$runMigrations$12.p = i2 - Integer.MIN_VALUE;
                dataMigrationInitializer$Companion$runMigrations$1 = dataMigrationInitializer$Companion$runMigrations$12;
                Object obj = dataMigrationInitializer$Companion$runMigrations$1.o;
                Object obj2 = CoroutineSingletons.j;
                i = dataMigrationInitializer$Companion$runMigrations$1.p;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            it = dataMigrationInitializer$Companion$runMigrations$1.n;
                            ref$ObjectRef = (Ref$ObjectRef) dataMigrationInitializer$Companion$runMigrations$1.m;
                            try {
                                ResultKt.b(obj);
                                ref$ObjectRef = ref$ObjectRef;
                            } catch (Throwable th2) {
                                Object obj3 = ref$ObjectRef.j;
                                if (obj3 == null) {
                                    ref$ObjectRef.j = th2;
                                    ref$ObjectRef = ref$ObjectRef;
                                } else {
                                    ExceptionsKt.a((Throwable) obj3, th2);
                                    ref$ObjectRef = ref$ObjectRef;
                                }
                            }
                            while (it.hasNext()) {
                                Function1 function1 = (Function1) it.next();
                                dataMigrationInitializer$Companion$runMigrations$1.m = ref$ObjectRef;
                                dataMigrationInitializer$Companion$runMigrations$1.n = it;
                                dataMigrationInitializer$Companion$runMigrations$1.p = 2;
                                if (function1.b(dataMigrationInitializer$Companion$runMigrations$1) == obj2) {
                                    return obj2;
                                }
                            }
                            th = (Throwable) ref$ObjectRef.j;
                            if (th == null) {
                                return Unit.a;
                            }
                            throw th;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    list2 = (List) dataMigrationInitializer$Companion$runMigrations$1.m;
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    ArrayList arrayList = new ArrayList();
                    Function2 dataMigrationInitializer$Companion$runMigrations$2 = new DataMigrationInitializer$Companion$runMigrations$2(list, arrayList, null);
                    dataMigrationInitializer$Companion$runMigrations$1.m = arrayList;
                    dataMigrationInitializer$Companion$runMigrations$1.p = 1;
                    if (((DataStoreImpl$InitDataStore$doRun$initData$1$api$1) initializerApi).a(dataMigrationInitializer$Companion$runMigrations$2, dataMigrationInitializer$Companion$runMigrations$1) != obj2) {
                        list2 = arrayList;
                    } else {
                        return obj2;
                    }
                }
                Object obj4 = new Object();
                it = list2.iterator();
                ref$ObjectRef = obj4;
                while (it.hasNext()) {
                }
                th = (Throwable) ref$ObjectRef.j;
                if (th == null) {
                }
            }
        }
        dataMigrationInitializer$Companion$runMigrations$1 = new ContinuationImpl(continuationImpl);
        Object obj5 = dataMigrationInitializer$Companion$runMigrations$1.o;
        Object obj22 = CoroutineSingletons.j;
        i = dataMigrationInitializer$Companion$runMigrations$1.p;
        if (i == 0) {
        }
        Object obj42 = new Object();
        it = list2.iterator();
        ref$ObjectRef = obj42;
        while (it.hasNext()) {
        }
        th = (Throwable) ref$ObjectRef.j;
        if (th == null) {
        }
    }
}
