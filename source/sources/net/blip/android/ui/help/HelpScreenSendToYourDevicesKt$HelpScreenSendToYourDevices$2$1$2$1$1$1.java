package net.blip.android.ui.help;

import android.content.ClipData;
import android.content.Context;
import android.os.Build;
import android.widget.Toast;
import androidx.compose.ui.platform.AndroidClipboardImpl;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.Clipboard;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.help.HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1", f = "HelpScreenSendToYourDevices.kt", l = {100}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Clipboard o;
    public final /* synthetic */ String p;
    public final /* synthetic */ Context q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1(Clipboard clipboard, String str, Context context, Continuation continuation) {
        super(2, continuation);
        this.o = clipboard;
        this.p = str;
        this.q = context;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new HelpScreenSendToYourDevicesKt$HelpScreenSendToYourDevices$2$1$2$1$1$1(this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        String str = this.p;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            ClipData newPlainText = ClipData.newPlainText(str, str);
            newPlainText.getClass();
            ClipEntry clipEntry = new ClipEntry(newPlainText);
            this.n = 1;
            ((AndroidClipboardImpl) this.o).a(clipEntry);
            if (unit == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        if (Build.VERSION.SDK_INT < 33) {
            Toast.makeText(this.q, "Copied " + str + " to clipboard", 0).show();
        }
        return unit;
    }
}
