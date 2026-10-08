package androidx.compose.foundation.text.contextmenu.internal;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.os.Build;
import android.util.Log;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextClassificationHelperApi28 {
    public static void a(PendingIntent pendingIntent) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            try {
                ActivityOptions makeBasic = ActivityOptions.makeBasic();
                if (i >= 36) {
                    makeBasic.setPendingIntentBackgroundActivityStartMode(4);
                } else {
                    makeBasic.setPendingIntentBackgroundActivityStartMode(1);
                }
                pendingIntent.send(makeBasic.toBundle());
                return;
            } catch (PendingIntent.CanceledException e) {
                Log.e("TextClassification", "error sending pendingIntent: " + pendingIntent + " error: " + e);
                return;
            }
        }
        pendingIntent.send();
    }
}
