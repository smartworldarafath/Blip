package androidx.core.content;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class IntentCompat {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api33Impl {
        public static ArrayList a(Intent intent) {
            return intent.getParcelableArrayListExtra("android.intent.extra.STREAM", Uri.class);
        }

        public static Object b(Intent intent) {
            return intent.getParcelableExtra("android.intent.extra.STREAM", Uri.class);
        }
    }

    public static ArrayList a(Intent intent) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.a(intent);
        }
        return intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
    }

    public static Object b(Intent intent) {
        if (Build.VERSION.SDK_INT >= 34) {
            return Api33Impl.b(intent);
        }
        Parcelable parcelableExtra = intent.getParcelableExtra("android.intent.extra.STREAM");
        if (Uri.class.isInstance(parcelableExtra)) {
            return parcelableExtra;
        }
        return null;
    }
}
