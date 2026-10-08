package com.abovevacant.epitaph.core;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public enum MemoryError$Type {
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN(0),
    /* JADX INFO: Fake field, exist only in values array */
    USE_AFTER_FREE(1),
    /* JADX INFO: Fake field, exist only in values array */
    DOUBLE_FREE(2),
    /* JADX INFO: Fake field, exist only in values array */
    INVALID_FREE(3),
    /* JADX INFO: Fake field, exist only in values array */
    BUFFER_OVERFLOW(4),
    /* JADX INFO: Fake field, exist only in values array */
    BUFFER_UNDERFLOW(5);

    public final int j;

    MemoryError$Type(int i) {
        this.j = i;
    }
}
