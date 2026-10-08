package io.sentry.android.core.internal.tombstone;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public enum NativeExceptionMechanism {
    TOMBSTONE("Tombstone"),
    SIGNAL_HANDLER("signalhandler"),
    TOMBSTONE_MERGED("TombstoneMerged");

    private final String value;

    NativeExceptionMechanism(String str) {
        this.value = str;
    }

    public String getValue() {
        return this.value;
    }
}
