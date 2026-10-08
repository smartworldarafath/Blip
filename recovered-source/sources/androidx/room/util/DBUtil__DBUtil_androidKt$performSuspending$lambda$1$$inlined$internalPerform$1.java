package androidx.room.util;

import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.coroutines.RawConnectionAccessor;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1", f = "DBUtil.android.kt", l = {56, 57, 59, 60}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 extends SuspendLambda implements Function2<Transactor, Continuation<Object>, Object> {
    public Transactor.SQLiteTransactionType n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ boolean q;
    public final /* synthetic */ RoomDatabase r;
    public final /* synthetic */ Function1 s;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1$1", f = "DBUtil.android.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<TransactionScope<Object>, Continuation<Object>, Object> {
        public /* synthetic */ Object n;
        public final /* synthetic */ Function1 o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, Function1 function1) {
            super(2, continuation);
            this.o = function1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((TransactionScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation, this.o);
            anonymousClass1.n = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            TransactionScope transactionScope = (TransactionScope) this.n;
            transactionScope.getClass();
            return this.o.b(((RawConnectionAccessor) transactionScope).d());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(RoomDatabase roomDatabase, Continuation continuation, Function1 function1, boolean z) {
        super(2, continuation);
        this.q = z;
        this.r = roomDatabase;
        this.s = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1) s((Transactor) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1 = new DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1(this.r, continuation, this.s, this.q);
        dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1.p = obj;
        return dBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x006d, code lost:
    
        if (r11 != r0) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x008a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Transactor.SQLiteTransactionType sQLiteTransactionType;
        Transactor.SQLiteTransactionType sQLiteTransactionType2;
        Transactor transactor;
        Transactor transactor2;
        Object obj2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        Function1 function1 = this.s;
        if (i != 0) {
            RoomDatabase roomDatabase = this.r;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            obj2 = this.p;
                            ResultKt.b(obj);
                            if (!((Boolean) obj).booleanValue()) {
                                InvalidationTracker f = roomDatabase.f();
                                f.b.e(f.e, f.f);
                            }
                            return obj2;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    transactor = (Transactor) this.p;
                    ResultKt.b(obj);
                    if (!this.q) {
                        this.p = obj;
                        this.o = 4;
                        Object b = transactor.b(this);
                        if (b != coroutineSingletons) {
                            Object obj3 = obj;
                            obj = b;
                            obj2 = obj3;
                            if (!((Boolean) obj).booleanValue()) {
                            }
                            return obj2;
                        }
                        return coroutineSingletons;
                    }
                    return obj;
                }
                sQLiteTransactionType = this.n;
                transactor2 = (Transactor) this.p;
                ResultKt.b(obj);
            } else {
                sQLiteTransactionType = this.n;
                Transactor transactor3 = (Transactor) this.p;
                ResultKt.b(obj);
                if (!((Boolean) obj).booleanValue()) {
                    InvalidationTracker f2 = roomDatabase.f();
                    this.p = transactor3;
                    this.n = sQLiteTransactionType;
                    this.o = 2;
                    if (f2.b(this) != coroutineSingletons) {
                        transactor2 = transactor3;
                    }
                    return coroutineSingletons;
                }
                sQLiteTransactionType2 = sQLiteTransactionType;
                transactor = transactor3;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, function1);
                this.p = transactor;
                this.n = null;
                this.o = 3;
                obj = transactor.a(sQLiteTransactionType2, anonymousClass1, this);
            }
            sQLiteTransactionType2 = sQLiteTransactionType;
            transactor = transactor2;
            AnonymousClass1 anonymousClass12 = new AnonymousClass1(null, function1);
            this.p = transactor;
            this.n = null;
            this.o = 3;
            obj = transactor.a(sQLiteTransactionType2, anonymousClass12, this);
        } else {
            ResultKt.b(obj);
            Transactor transactor4 = (Transactor) this.p;
            transactor4.getClass();
            return function1.b(((RawConnectionAccessor) transactor4).d());
        }
    }
}
