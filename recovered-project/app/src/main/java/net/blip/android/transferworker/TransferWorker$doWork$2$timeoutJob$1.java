package net.blip.android.transferworker;

import android.content.Context;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import net.blip.android.App;
import net.blip.libblip.Logger;
import net.blip.libblip.event.TransferCancellationRequested;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.transferworker.TransferWorker$doWork$2$timeoutJob$1", f = "TransferWorker.kt", l = {75}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class TransferWorker$doWork$2$timeoutJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ TransferWorker o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferWorker$doWork$2$timeoutJob$1(TransferWorker transferWorker, Continuation continuation) {
        super(2, continuation);
        this.o = transferWorker;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TransferWorker$doWork$2$timeoutJob$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TransferWorker$doWork$2$timeoutJob$1(this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        Transfer.Status status = null;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            Duration.Companion companion = Duration.k;
            long d = DurationKt.d(30, DurationUnit.n);
            this.n = 1;
            Object b = DelayKt.b(DelayKt.d(d), this);
            if (b != coroutineSingletons) {
                b = unit;
            }
            if (b == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        TransferWorker transferWorker = this.o;
        Transfer transfer = (Transfer) ((State) transferWorker.g.getValue()).B.get(transferWorker.e());
        if (transfer != null) {
            status = transfer.w;
        }
        if (status == Transfer.Status.p) {
            Logger logger = TransferWorker.k;
            Pair[] pairArr = {new Pair("transferId", transferWorker.e())};
            logger.getClass();
            Logger.l("timeout", pairArr);
            Context context = App.m;
            App.Companion.b().b.b(new TransferCancellationRequested(transferWorker.e()));
        }
        return unit;
    }
}
