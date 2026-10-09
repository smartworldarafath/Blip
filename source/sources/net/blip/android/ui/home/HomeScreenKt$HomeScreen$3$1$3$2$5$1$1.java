package net.blip.android.ui.home;

import android.content.Context;
import android.os.Build;
import android.widget.Toast;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.FlavorAndroid;
import net.blip.android.ui.util.TransferClipboardKt;
import net.blip.libblip.Flavor;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.home.HomeScreenKt$HomeScreen$3$1$3$2$5$1$1", f = "HomeScreen.kt", l = {306}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class HomeScreenKt$HomeScreen$3$1$3$2$5$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Context o;
    public final /* synthetic */ Transfer p;
    public final /* synthetic */ Flavor q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeScreenKt$HomeScreen$3$1$3$2$5$1$1(Context context, Transfer transfer, Flavor flavor, Continuation continuation) {
        super(2, continuation);
        this.o = context;
        this.p = transfer;
        this.q = flavor;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((HomeScreenKt$HomeScreen$3$1$3$2$5$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new HomeScreenKt$HomeScreen$3$1$3$2$5$1$1(this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Object b;
        String str;
        String str2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Context context = this.o;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                b = ((Result) obj).j;
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            String str3 = ((FlavorAndroid) this.q).d;
            this.n = 1;
            b = TransferClipboardKt.b(context, this.p, str3, this);
            if (b == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        if ((b instanceof Result.Failure) || Build.VERSION.SDK_INT <= 32) {
            if (Result.a(b) == null) {
                int intValue = ((Number) b).intValue();
                if (intValue == 1) {
                    str2 = "item";
                } else {
                    str2 = "items";
                }
                str = "Copied " + intValue + " " + str2;
            } else {
                str = "Couldn't copy transfer";
            }
            Toast.makeText(context, str, 0).show();
        }
        return Unit.a;
    }
}
