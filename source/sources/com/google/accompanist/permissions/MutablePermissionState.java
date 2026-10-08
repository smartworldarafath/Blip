package com.google.accompanist.permissions;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import androidx.activity.result.ActivityResultLauncher;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.core.content.ContextCompat;
import com.google.accompanist.permissions.PermissionStatus;
import defpackage.u2;
import java.lang.reflect.InvocationTargetException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutablePermissionState implements PermissionState {
    public final String a;
    public final Context b;
    public final Activity c;
    public final MutableState d = SnapshotStateKt.g(c());
    public ActivityResultLauncher e;

    public MutablePermissionState(String str, Context context, Activity activity) {
        this.a = str;
        this.b = context;
        this.c = activity;
    }

    @Override // com.google.accompanist.permissions.PermissionState
    public final PermissionStatus a() {
        return (PermissionStatus) ((SnapshotMutableStateImpl) this.d).getValue();
    }

    @Override // com.google.accompanist.permissions.PermissionState
    public final void b() {
        ActivityResultLauncher activityResultLauncher = this.e;
        if (activityResultLauncher != null) {
            activityResultLauncher.a(this.a);
        } else {
            u2.l("ActivityResultLauncher cannot be null");
        }
    }

    public final PermissionStatus c() {
        boolean shouldShowRequestPermissionRationale;
        Context context = this.b;
        String str = this.a;
        if (ContextCompat.a(context, str) == 0) {
            return PermissionStatus.Granted.a;
        }
        int i = Build.VERSION.SDK_INT;
        if (i < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            shouldShowRequestPermissionRationale = false;
        } else {
            Activity activity = this.c;
            if (i >= 32) {
                shouldShowRequestPermissionRationale = activity.shouldShowRequestPermissionRationale(str);
            } else if (i == 31) {
                try {
                    shouldShowRequestPermissionRationale = ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(activity.getApplication().getPackageManager(), str)).booleanValue();
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    shouldShowRequestPermissionRationale = activity.shouldShowRequestPermissionRationale(str);
                }
            } else {
                shouldShowRequestPermissionRationale = activity.shouldShowRequestPermissionRationale(str);
            }
        }
        return new PermissionStatus.Denied(shouldShowRequestPermissionRationale);
    }
}
