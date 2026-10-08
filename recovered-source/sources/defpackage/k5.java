package defpackage;

import android.content.Intent;
import android.content.IntentSender;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.profileinstaller.DeviceProfileWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class k5 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ int l;
    public final /* synthetic */ Object m;

    public /* synthetic */ k5(int i, int i2, Object obj, Object obj2) {
        this.j = i2;
        this.k = obj;
        this.l = i;
        this.m = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.m;
        int i2 = this.l;
        Object obj2 = this.k;
        switch (i) {
            case 0:
                ((ComponentActivity$activityResultRegistry$1) obj2).a(i2, ((ActivityResultContract.SynchronousResult) obj).a);
                return;
            case 1:
                ((ComponentActivity$activityResultRegistry$1) obj2).b(i2, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) obj));
                return;
            default:
                ((DeviceProfileWriter) obj2).b.b(i2, obj);
                return;
        }
    }
}
