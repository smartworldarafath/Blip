package com.google.android.datatransport;

import com.google.firebase.messaging.reporting.MessagingClientEventExtension;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_Event<T> extends Event<T> {
    public final MessagingClientEventExtension a;
    public final ProductData b;

    public AutoValue_Event(MessagingClientEventExtension messagingClientEventExtension, ProductData productData) {
        this.a = messagingClientEventExtension;
        this.b = productData;
    }

    @Override // com.google.android.datatransport.Event
    public final Object a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Event) {
                AutoValue_Event autoValue_Event = (AutoValue_Event) ((Event) obj);
                if (this.a != autoValue_Event.a) {
                    return false;
                }
                Object obj2 = Priority.j;
                if (obj2.equals(obj2) && this.b.equals(autoValue_Event.b)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ (((((1000003 * 1000003) ^ this.a.hashCode()) * 1000003) ^ Priority.j.hashCode()) * 1000003);
    }

    public final String toString() {
        return "Event{code=null, payload=" + this.a + ", priority=" + Priority.j + ", productData=" + this.b + "}";
    }
}
