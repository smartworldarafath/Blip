package defpackage;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidPlatformTextInputSession;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class m0 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ AndroidComposeView k;

    public /* synthetic */ m0(AndroidComposeView androidComposeView, int i) {
        this.j = i;
        this.k = androidComposeView;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Looper looper;
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = 0;
        AndroidComposeView androidComposeView = this.k;
        switch (i) {
            case 0:
                Class cls = AndroidComposeView.R0;
                return new AndroidPlatformTextInputSession(androidComposeView, androidComposeView.getTextInputService(), (CoroutineScope) obj);
            case 1:
                Function0 function0 = (Function0) obj;
                Class cls2 = AndroidComposeView.R0;
                Handler handler = androidComposeView.getHandler();
                if (handler != null) {
                    looper = handler.getLooper();
                } else {
                    looper = null;
                }
                if (looper == Looper.myLooper()) {
                    function0.a();
                } else {
                    Handler handler2 = androidComposeView.getHandler();
                    if (handler2 != null) {
                        handler2.post(new q0(i2, function0));
                    }
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Class cls3 = AndroidComposeView.R0;
                ((FocusOwnerImpl) androidComposeView.getFocusOwner()).h(((FocusDirection) obj).a, false);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return androidComposeView.getSavedStateRegistry();
            default:
                return Boolean.valueOf(androidComposeView.getScrollCaptureInProgress());
        }
    }
}
