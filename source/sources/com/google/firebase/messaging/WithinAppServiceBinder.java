package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.messaging.EnhancedIntentService;
import com.google.firebase.messaging.WithinAppServiceConnection;
import defpackage.s3;
import defpackage.z2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class WithinAppServiceBinder extends Binder {
    public static final /* synthetic */ int e = 0;
    public final EnhancedIntentService.AnonymousClass1 d;

    public WithinAppServiceBinder(EnhancedIntentService.AnonymousClass1 anonymousClass1) {
        this.d = anonymousClass1;
    }

    public final void a(WithinAppServiceConnection.BindRequest bindRequest) {
        if (Binder.getCallingUid() == Process.myUid()) {
            int i = 3;
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "service received new intent via bind strategy");
            }
            Intent intent = bindRequest.a;
            EnhancedIntentService enhancedIntentService = EnhancedIntentService.this;
            int i2 = EnhancedIntentService.o;
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            enhancedIntentService.j.execute(new s3(enhancedIntentService, intent, taskCompletionSource, 4));
            taskCompletionSource.a.b(new z2(2), new f(i, bindRequest));
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
