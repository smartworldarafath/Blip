package defpackage;

import android.os.Trace;
import android.view.MotionEvent;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class s0 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ AndroidComposeView k;

    public /* synthetic */ s0(AndroidComposeView androidComposeView, int i) {
        this.j = i;
        this.k = androidComposeView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        AndroidComposeView androidComposeView = this.k;
        switch (i) {
            case 0:
                ArrayDeque arrayDeque = androidComposeView.r;
                Class cls = AndroidComposeView.R0;
                Trace.beginSection("AndroidOwner:outOfFrameExecutor");
                while (!arrayDeque.isEmpty()) {
                    try {
                        ((Function0) arrayDeque.removeLast()).a();
                    } finally {
                        Trace.endSection();
                    }
                }
                return;
            case 1:
                androidComposeView.G0 = false;
                MotionEvent motionEvent = androidComposeView.w0;
                motionEvent.getClass();
                if (motionEvent.getActionMasked() == 10) {
                    androidComposeView.H(motionEvent);
                    return;
                } else {
                    u2.l("The ACTION_HOVER_EXIT event was not cleared.");
                    return;
                }
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                AndroidComposeView.j(androidComposeView.getRoot());
                return;
            default:
                AndroidComposeView.j(androidComposeView.getRoot());
                return;
        }
    }
}
