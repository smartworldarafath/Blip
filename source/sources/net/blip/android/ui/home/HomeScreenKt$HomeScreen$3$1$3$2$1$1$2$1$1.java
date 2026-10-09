package net.blip.android.ui.home;

import android.content.Context;
import android.widget.Toast;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.ui.util.UmbrellaContentPickerType;
import net.blip.libblip.DispatcherKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.PeerId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.home.HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1", f = "HomeScreen.kt", l = {173}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Function2 o;
    public final /* synthetic */ UmbrellaContentPickerType p;
    public final /* synthetic */ Function1 q;
    public final /* synthetic */ PeerId r;
    public final /* synthetic */ Context s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1(Function2 function2, UmbrellaContentPickerType umbrellaContentPickerType, Function1 function1, PeerId peerId, Context context, Continuation continuation) {
        super(2, continuation);
        this.o = function2;
        this.p = umbrellaContentPickerType;
        this.q = function1;
        this.r = peerId;
        this.s = context;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new HomeScreenKt$HomeScreen$3$1$3$2$1$1$2$1$1(this.o, this.p, this.q, this.r, this.s, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Throwable a;
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
            this.n = 1;
            obj = this.o.n(this.p, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        List list = (List) obj;
        if (!list.isEmpty() && (a = Result.a(DispatcherKt.a(this.q, this.r, list, "home_peer_tray"))) != null) {
            Logger logger = LoggerKt.a;
            Pair[] pairArr = {new Pair("origin", "home_peer_tray"), new Pair("err", a)};
            logger.getClass();
            Logger.e("unable to start transfer", pairArr);
            Toast.makeText(this.s, "Unable to start transfer", 0).show();
        }
        return Unit.a;
    }
}
