package androidx.room;

import android.database.SQLException;
import androidx.room.Transactor;
import defpackage.u2;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1", f = "InvalidationTracker.kt", l = {413, 420}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 extends SuspendLambda implements Function2<Transactor, Continuation<? super Set<? extends Integer>>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ TriggerBasedInvalidationTracker p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1$1", f = "InvalidationTracker.kt", l = {421}, m = "invokeSuspend")
    /* renamed from: androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<TransactionScope<Set<? extends Integer>>, Continuation<? super Set<? extends Integer>>, Object> {
        public int n;
        public /* synthetic */ Object o;
        public final /* synthetic */ TriggerBasedInvalidationTracker p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation continuation) {
            super(2, continuation);
            this.p = triggerBasedInvalidationTracker;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((TransactionScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.p, continuation);
            anonymousClass1.o = obj;
            return anonymousClass1;
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
            TransactionScope transactionScope = (TransactionScope) this.o;
            this.n = 1;
            Object a = TriggerBasedInvalidationTracker.a(this.p, transactionScope, this);
            if (a == coroutineSingletons) {
                return coroutineSingletons;
            }
            return a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation continuation) {
        super(2, continuation);
        this.p = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1) s((Transactor) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(this.p, continuation);
        triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1.o = obj;
        return triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        if (r7 == r0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002f, code lost:
    
        if (r7 == r0) goto L19;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Transactor transactor;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        try {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        ResultKt.b(obj);
                        return (Set) obj;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                transactor = (Transactor) this.o;
                ResultKt.b(obj);
            } else {
                ResultKt.b(obj);
                transactor = (Transactor) this.o;
                this.o = transactor;
                this.n = 1;
                obj = transactor.b(this);
            }
            if (!((Boolean) obj).booleanValue()) {
                Transactor.SQLiteTransactionType sQLiteTransactionType = Transactor.SQLiteTransactionType.k;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.p, null);
                this.o = null;
                this.n = 2;
                obj = transactor.a(sQLiteTransactionType, anonymousClass1, this);
            }
        } catch (SQLException unused) {
        }
        return EmptySet.j;
    }
}
