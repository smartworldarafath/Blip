package com.google.android.play.core.review;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.review.internal.zzt;
import java.util.HashMap;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class zzd implements ReviewManager {
    public final zzi a;
    public final Handler b = new Handler(Looper.getMainLooper());

    public zzd(zzi zziVar) {
        this.a = zziVar;
    }

    public final Task a(Activity activity, ReviewInfo reviewInfo) {
        if (((zza) reviewInfo).k) {
            return Tasks.e(null);
        }
        Intent intent = new Intent(activity, (Class<?>) PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", ((zza) reviewInfo).j);
        intent.putExtra("window_flags", activity.getWindow().getDecorView().getWindowSystemUiVisibility());
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        intent.putExtra("result_receiver", new zzc(this.b, taskCompletionSource));
        activity.startActivity(intent);
        return taskCompletionSource.a;
    }

    public final Task b() {
        String str;
        zzi zziVar = this.a;
        String str2 = zziVar.b;
        com.google.android.play.core.review.internal.zzi zziVar2 = zzi.c;
        zziVar2.a("requestInAppReview (%s)", str2);
        zzt zztVar = zziVar.a;
        if (zztVar == null) {
            Object[] objArr = new Object[0];
            if (Log.isLoggable("PlayCore", 6)) {
                Log.e("PlayCore", com.google.android.play.core.review.internal.zzi.c(zziVar2.a, "Play Store app is either not installed or not the official version", objArr));
            }
            Locale locale = Locale.getDefault();
            HashMap hashMap = com.google.android.play.core.review.model.zza.a;
            if (!hashMap.containsKey(-1)) {
                str = "";
            } else {
                str = ((String) hashMap.get(-1)) + " (https://developer.android.com/reference/com/google/android/play/core/review/model/ReviewErrorCode.html#" + ((String) com.google.android.play.core.review.model.zza.b.get(-1)) + ")";
            }
            return Tasks.d(new ApiException(new Status(-1, String.format(locale, "Review Error(%d): %s", -1, str), null, null)));
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zztVar.c(new zzf(zziVar, taskCompletionSource, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.a;
    }
}
