package defpackage;

import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.compose.ui.window.PopupLayout;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class q0 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function0 k;

    public /* synthetic */ q0(int i, Function0 function0) {
        this.j = i;
        this.k = function0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Function0 function0 = this.k;
        switch (i) {
            case 0:
                Class cls = AndroidComposeView.R0;
                function0.a();
                return;
            case 1:
                Class cls2 = AndroidComposeView.R0;
                function0.a();
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                function0.a();
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                h hVar = AndroidViewHolder.J;
                function0.a();
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                h hVar2 = AndroidViewHolder.J;
                function0.a();
                return;
            default:
                wc wcVar = PopupLayout.N;
                function0.a();
                return;
        }
    }
}
