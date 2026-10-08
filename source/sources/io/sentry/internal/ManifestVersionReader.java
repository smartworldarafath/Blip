package io.sentry.internal;

import io.sentry.util.AutoClosableReentrantLock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ManifestVersionReader {
    public static volatile ManifestVersionReader c;
    public static final AutoClosableReentrantLock d = new ReentrantLock();
    public volatile boolean a = false;
    public final AutoClosableReentrantLock b = new ReentrantLock();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class VersionInfoHolder {
    }
}
