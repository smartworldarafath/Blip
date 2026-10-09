package androidx.compose.ui.text.font;

import androidx.collection.LruCache;
import androidx.compose.ui.text.platform.SynchronizedObject;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TypefaceRequestCache {
    public final SynchronizedObject a = new Object();
    public final LruCache b = new LruCache(16);
}
