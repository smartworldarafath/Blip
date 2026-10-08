package com.google.android.gms.common.api;

import android.content.AttributionSource;
import android.content.Context;
import android.os.Build;
import android.os.Looper;
import androidx.collection.ArraySet;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.AttributionSourceWrapper;
import com.google.android.gms.internal.base.zao;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GoogleApi<O extends Api.ApiOptions> {
    public final Context a;
    public final String b;
    public final AttributionSourceWrapper c;
    public final Api d;
    public final Api.ApiOptions e;
    public final ApiKey f;
    public final int g;
    public final StatusExceptionMapper h;
    public final GoogleApiManager i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Settings {
        public static final Settings b;
        public final StatusExceptionMapper a;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class Builder {
            public ApiExceptionMapper a;
            public Looper b;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.common.api.GoogleApi$Settings$Builder, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, com.google.android.gms.common.api.internal.ApiExceptionMapper] */
        static {
            ?? obj = new Object();
            if (obj.a == null) {
                obj.a = new Object();
            }
            if (obj.b == null) {
                obj.b = Looper.getMainLooper();
            }
            b = new Settings(obj.a, obj.b);
        }

        public Settings(StatusExceptionMapper statusExceptionMapper, Looper looper) {
            this.a = statusExceptionMapper;
        }
    }

    public GoogleApi(Context context, Api api, Api.ApiOptions apiOptions, Settings settings) {
        String str;
        AttributionSource attributionSource;
        Preconditions.f(context, "Null context is not permitted.");
        Preconditions.f(api, "Api must not be null.");
        Preconditions.f(settings, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        Preconditions.f(applicationContext, "The provided context did not have an application context.");
        this.a = applicationContext;
        int i = Build.VERSION.SDK_INT;
        AttributionSourceWrapper attributionSourceWrapper = null;
        if (i >= 30) {
            str = ContextCompat.b(context);
        } else {
            str = null;
        }
        this.b = str;
        if (i >= 31) {
            attributionSource = context.getAttributionSource();
            attributionSourceWrapper = new AttributionSourceWrapper(attributionSource);
        }
        this.c = attributionSourceWrapper;
        this.d = api;
        this.e = apiOptions;
        this.f = new ApiKey(api, apiOptions, str);
        GoogleApiManager c = GoogleApiManager.c(applicationContext);
        this.i = c;
        this.g = c.q.getAndIncrement();
        this.h = settings.a;
        zao zaoVar = c.v;
        zaoVar.sendMessage(zaoVar.obtainMessage(7, this));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.common.internal.ClientSettings$Builder] */
    public final ClientSettings.Builder a() {
        ?? obj = new Object();
        Set set = Collections.EMPTY_SET;
        if (obj.a == null) {
            obj.a = new ArraySet(0);
        }
        obj.a.addAll(set);
        Context context = this.a;
        obj.c = context.getClass().getName();
        obj.b = context.getPackageName();
        return obj;
    }

    public final Task b(int i, TaskApiCall taskApiCall) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.i.d(this, i, taskApiCall, taskCompletionSource, this.h);
        return taskCompletionSource.a;
    }
}
