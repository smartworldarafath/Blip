package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.base.zao;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"HandlerLeak"})
/* loaded from: classes.dex */
public final class zad extends zao {
    public final Context a;
    public final /* synthetic */ GoogleApiAvailability b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zad(GoogleApiAvailability googleApiAvailability, Context context) {
        super(r1);
        Looper myLooper;
        this.b = googleApiAvailability;
        if (Looper.myLooper() == null) {
            myLooper = Looper.getMainLooper();
        } else {
            myLooper = Looper.myLooper();
        }
        Looper.getMainLooper();
        this.a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        PendingIntent activity;
        int i = message.what;
        if (i != 1) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 39);
            sb.append("Don't know how to handle this message: ");
            sb.append(i);
            Log.w("GoogleApiAvailability", sb.toString());
            return;
        }
        int i2 = GoogleApiAvailabilityLight.a;
        GoogleApiAvailability googleApiAvailability = this.b;
        Context context = this.a;
        int b = googleApiAvailability.b(context, i2);
        AtomicBoolean atomicBoolean = GooglePlayServicesUtilLight.a;
        if (b != 1 && b != 2 && b != 3 && b != 9) {
            return;
        }
        Intent a = googleApiAvailability.a(b, context, "n");
        if (a == null) {
            activity = null;
        } else {
            activity = PendingIntent.getActivity(context, 0, a, 201326592);
        }
        googleApiAvailability.f(context, b, activity);
    }
}
