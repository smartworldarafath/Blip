package defpackage;

import android.os.Build;
import android.os.Process;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import io.sentry.android.core.internal.util.AndroidThreadChecker;
import io.sentry.android.ndk.SentryNdk;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class r implements Runnable {
    public final /* synthetic */ int j;

    public /* synthetic */ r(int i) {
        this.j = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.j) {
            case 0:
                int i = AlarmManagerSchedulerBroadcastReceiver.a;
                return;
            case 1:
                MutableObjectList mutableObjectList = AndroidComposeView.U0;
                synchronized (mutableObjectList) {
                    try {
                        int i2 = Build.VERSION.SDK_INT;
                        Object[] objArr = mutableObjectList.a;
                        int i3 = mutableObjectList.b;
                        int i4 = 0;
                        if (i2 < 30) {
                            while (i4 < i3) {
                                AndroidComposeView androidComposeView = (AndroidComposeView) objArr[i4];
                                boolean showLayoutBounds = androidComposeView.getShowLayoutBounds();
                                Class cls = AndroidComposeView.R0;
                                androidComposeView.setShowLayoutBounds(AndroidComposeView.Companion.b());
                                if (showLayoutBounds != androidComposeView.getShowLayoutBounds()) {
                                    androidComposeView.post(new s0(androidComposeView, 2));
                                }
                                i4++;
                            }
                        } else {
                            while (i4 < i3) {
                                AndroidComposeView androidComposeView2 = (AndroidComposeView) objArr[i4];
                                androidComposeView2.post(new s0(androidComposeView2, 3));
                                i4++;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                AndroidThreadChecker androidThreadChecker = AndroidThreadChecker.a;
                AndroidThreadChecker.b = Process.myTid();
                return;
            default:
                SentryNdk.a();
                return;
        }
    }

    private final void a() {
    }
}
