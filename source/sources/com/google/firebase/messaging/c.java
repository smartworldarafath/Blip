package com.google.firebase.messaging;

import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.tasks.OnSuccessListener;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements OnSuccessListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ FirebaseMessaging b;

    public /* synthetic */ c(FirebaseMessaging firebaseMessaging, int i) {
        this.a = i;
        this.b = firebaseMessaging;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void a(Object obj) {
        boolean z;
        int i = this.a;
        FirebaseMessaging firebaseMessaging = this.b;
        switch (i) {
            case 0:
                TopicsSubscriber topicsSubscriber = (TopicsSubscriber) obj;
                if (firebaseMessaging.f.a() && topicsSubscriber.g.a() != null) {
                    synchronized (topicsSubscriber) {
                        z = topicsSubscriber.f;
                    }
                    if (!z) {
                        topicsSubscriber.c(0L);
                        return;
                    }
                    return;
                }
                return;
            default:
                CloudMessage cloudMessage = (CloudMessage) obj;
                if (cloudMessage != null) {
                    MessagingAnalytics.b(cloudMessage.j);
                    firebaseMessaging.c.c.a().c(firebaseMessaging.g, new c(firebaseMessaging, 1));
                    return;
                }
                return;
        }
    }
}
