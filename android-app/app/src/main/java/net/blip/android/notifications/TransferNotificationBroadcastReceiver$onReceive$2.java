package net.blip.android.notifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.f3;
import defpackage.u2;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.App;
import net.blip.android.FlavorAndroid;
import net.blip.android.ui.util.TransferClipboardKt;
import net.blip.libblip.Logger;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.notifications.TransferNotificationBroadcastReceiver$onReceive$2", f = "TransferNotificationBroadcastReceiver.kt", l = {81}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class TransferNotificationBroadcastReceiver$onReceive$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ String o;
    public final /* synthetic */ BroadcastReceiver.PendingResult p;
    public final /* synthetic */ Context q;
    public final /* synthetic */ Logger r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferNotificationBroadcastReceiver$onReceive$2(String str, BroadcastReceiver.PendingResult pendingResult, Context context, Logger logger, Continuation continuation) {
        super(2, continuation);
        this.o = str;
        this.p = pendingResult;
        this.q = context;
        this.r = logger;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TransferNotificationBroadcastReceiver$onReceive$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TransferNotificationBroadcastReceiver$onReceive$2(this.o, this.p, this.q, this.r, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Object failure;
        String str;
        String str2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        BroadcastReceiver.PendingResult pendingResult = this.p;
        Context context = this.q;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                    failure = ((Result) obj).j;
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                Context context2 = App.m;
                Transfer transfer = (Transfer) ((State) App.Companion.b().a.getValue()).B.get(this.o);
                if (transfer != null) {
                    App app = App.o;
                    if (app != null) {
                        String str3 = ((FlavorAndroid) app.a()).d;
                        this.n = 1;
                        failure = TransferClipboardKt.b(context, transfer, str3, this);
                        if (failure == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        Intrinsics.e("shared");
                        throw null;
                    }
                } else {
                    failure = new Result.Failure(new IllegalArgumentException("Transfer not found"));
                }
            }
            if ((failure instanceof Result.Failure) || Build.VERSION.SDK_INT <= 32) {
                if (Result.a(failure) == null) {
                    int intValue = ((Number) failure).intValue();
                    if (intValue == 1) {
                        str2 = "item";
                    } else {
                        str2 = "items";
                    }
                    str = "Copied " + intValue + " " + str2;
                } else {
                    str = "Couldn't copy transfer";
                }
                new Handler(Looper.getMainLooper()).post(new f3(22, context, str));
            }
            Throwable a = Result.a(failure);
            if (a != null) {
                Logger.f(new Exception("Copy transfer failed", a), new Pair[0]);
            }
            pendingResult.finish();
            return Unit.a;
        } catch (Throwable th) {
            pendingResult.finish();
            throw th;
        }
    }
}
