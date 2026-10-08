package androidx.room.util;

import androidx.room.RoomDatabase;
import androidx.room.TransactionElement;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import defpackage.ii;
import defpackage.u2;
import io.sentry.d;
import kotlin.ResultKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.internal.ContextScope;

/* loaded from: classes.dex */
public abstract class DBUtil {
    public static final CoroutineContext a(RoomDatabase roomDatabase, ContinuationImpl continuationImpl) {
        if (roomDatabase.j()) {
            if (continuationImpl.o().v(TransactionElement.j) == null) {
                ContextScope contextScope = roomDatabase.a;
                if (contextScope != null) {
                    return contextScope.j;
                }
                Intrinsics.e("coroutineScope");
                throw null;
            }
            d.i();
            return null;
        }
        ContextScope contextScope2 = roomDatabase.a;
        if (contextScope2 != null) {
            return contextScope2.j;
        }
        Intrinsics.e("coroutineScope");
        throw null;
    }

    public static final Object b(RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1) {
        roomDatabase.getClass();
        roomDatabase.a();
        if (roomDatabase.j() && !roomDatabase.k() && roomDatabase.h.get() != null) {
            u2.l("Cannot access database on a different coroutine context inherited from a suspending transaction.");
            return null;
        }
        return RunBlockingUninterruptible_androidKt.a(new DBUtil__DBUtil_androidKt$performBlocking$1(roomDatabase, null, function1, z, z2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0072, code lost:
    
        if (r10 == r1) goto L35;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0088 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0089 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(RoomDatabase roomDatabase, boolean z, ii iiVar, ContinuationImpl continuationImpl) {
        DBUtil__DBUtil_androidKt$performSuspending$1 dBUtil__DBUtil_androidKt$performSuspending$1;
        Object obj;
        int i;
        RoomDatabase roomDatabase2;
        Object e;
        if (continuationImpl instanceof DBUtil__DBUtil_androidKt$performSuspending$1) {
            DBUtil__DBUtil_androidKt$performSuspending$1 dBUtil__DBUtil_androidKt$performSuspending$12 = (DBUtil__DBUtil_androidKt$performSuspending$1) continuationImpl;
            int i2 = dBUtil__DBUtil_androidKt$performSuspending$12.q;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dBUtil__DBUtil_androidKt$performSuspending$12.q = i2 - Integer.MIN_VALUE;
                dBUtil__DBUtil_androidKt$performSuspending$1 = dBUtil__DBUtil_androidKt$performSuspending$12;
                Object obj2 = dBUtil__DBUtil_androidKt$performSuspending$1.p;
                obj = CoroutineSingletons.j;
                i = dBUtil__DBUtil_androidKt$performSuspending$1.q;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                ResultKt.b(obj2);
                                return obj2;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        z = dBUtil__DBUtil_androidKt$performSuspending$1.o;
                        iiVar = dBUtil__DBUtil_androidKt$performSuspending$1.n;
                        RoomDatabase roomDatabase3 = dBUtil__DBUtil_androidKt$performSuspending$1.m;
                        ResultKt.b(obj2);
                        roomDatabase2 = roomDatabase3;
                    } else {
                        ResultKt.b(obj2);
                        return obj2;
                    }
                } else {
                    ResultKt.b(obj2);
                    if (roomDatabase.j() && roomDatabase.m() && roomDatabase.k()) {
                        Function2 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(roomDatabase, null, iiVar, z);
                        dBUtil__DBUtil_androidKt$performSuspending$1.q = 1;
                        Object p = roomDatabase.p(z, dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1, dBUtil__DBUtil_androidKt$performSuspending$1);
                        if (p != obj) {
                            return p;
                        }
                    } else {
                        dBUtil__DBUtil_androidKt$performSuspending$1.m = roomDatabase;
                        dBUtil__DBUtil_androidKt$performSuspending$1.n = iiVar;
                        dBUtil__DBUtil_androidKt$performSuspending$1.o = z;
                        dBUtil__DBUtil_androidKt$performSuspending$1.q = 2;
                        obj2 = a(roomDatabase, dBUtil__DBUtil_androidKt$performSuspending$1);
                        roomDatabase2 = roomDatabase;
                    }
                    return obj;
                }
                DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 = new DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1(roomDatabase2, null, iiVar, z);
                dBUtil__DBUtil_androidKt$performSuspending$1.m = null;
                dBUtil__DBUtil_androidKt$performSuspending$1.n = null;
                dBUtil__DBUtil_androidKt$performSuspending$1.q = 3;
                e = BuildersKt.e((CoroutineContext) obj2, dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1, dBUtil__DBUtil_androidKt$performSuspending$1);
                if (e != obj) {
                    return obj;
                }
                return e;
            }
        }
        dBUtil__DBUtil_androidKt$performSuspending$1 = new ContinuationImpl(continuationImpl);
        Object obj22 = dBUtil__DBUtil_androidKt$performSuspending$1.p;
        obj = CoroutineSingletons.j;
        i = dBUtil__DBUtil_androidKt$performSuspending$1.q;
        if (i == 0) {
        }
        DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1 dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$12 = new DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1(roomDatabase2, null, iiVar, z);
        dBUtil__DBUtil_androidKt$performSuspending$1.m = null;
        dBUtil__DBUtil_androidKt$performSuspending$1.n = null;
        dBUtil__DBUtil_androidKt$performSuspending$1.q = 3;
        e = BuildersKt.e((CoroutineContext) obj22, dBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$12, dBUtil__DBUtil_androidKt$performSuspending$1);
        if (e != obj) {
        }
    }
}
