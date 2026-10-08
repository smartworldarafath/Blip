package com.google.android.gms.common.api;

import com.google.android.gms.common.Feature;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UnsupportedApiCallException extends UnsupportedOperationException {
    public final Feature j;

    public UnsupportedApiCallException(Feature feature) {
        this.j = feature;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return "Missing ".concat(String.valueOf(this.j));
    }
}
