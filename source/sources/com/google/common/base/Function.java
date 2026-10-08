package com.google.common.base;

import javax.annotation.CheckForNull;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Function<F, T> {
    T apply(F f);

    boolean equals(@CheckForNull Object obj);
}
