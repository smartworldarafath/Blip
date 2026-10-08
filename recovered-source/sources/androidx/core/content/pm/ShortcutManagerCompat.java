package androidx.core.content.pm;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ShortcutManagerCompat {
    public static volatile ShortcutInfoCompatSaver a;
    public static volatile ArrayList b;

    /* JADX WARN: Removed duplicated region for block: B:6:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List a(Context context) {
        Bundle bundle;
        if (b == null) {
            ArrayList arrayList = new ArrayList();
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("androidx.core.content.pm.SHORTCUT_LISTENER");
            intent.setPackage(context.getPackageName());
            Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 128).iterator();
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (activityInfo != null && (bundle = activityInfo.metaData) != null) {
                    String string = bundle.getString("androidx.core.content.pm.shortcut_listener_impl");
                    if (string != null) {
                        try {
                            if (Class.forName(string, false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context) == null) {
                                arrayList.add(null);
                            } else {
                                throw new ClassCastException();
                                break;
                            }
                        } catch (Exception unused) {
                            continue;
                        }
                    }
                    while (it.hasNext()) {
                    }
                }
            }
            if (b == null) {
                b = arrayList;
            }
        }
        return b;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.core.content.pm.ShortcutInfoCompatSaver, java.lang.Object] */
    public static ShortcutInfoCompatSaver b(Context context) {
        if (a == null) {
            try {
                a = (ShortcutInfoCompatSaver) Class.forName("androidx.sharetarget.ShortcutInfoCompatSaverImpl", false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context);
            } catch (Exception unused) {
            }
            if (a == null) {
                a = new Object();
            }
        }
        return a;
    }

    public static List c(List list) {
        if (Build.VERSION.SDK_INT > 32) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((ShortcutInfoCompat) it.next()).getClass();
        }
        return arrayList;
    }
}
