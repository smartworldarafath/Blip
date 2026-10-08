package com.google.android.datatransport;

import com.google.auto.value.AutoValue;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class Event<T> {
    public static Event b(MessagingClientEventExtension messagingClientEventExtension, ProductData productData) {
        return new AutoValue_Event(messagingClientEventExtension, productData);
    }

    public abstract Object a();
}
