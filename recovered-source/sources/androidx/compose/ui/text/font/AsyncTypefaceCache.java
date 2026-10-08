package androidx.compose.ui.text.font;

import androidx.collection.LruCache;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.ui.text.platform.SynchronizedObject;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AsyncTypefaceCache {
    public final LruCache a = new LruCache(16);
    public final MutableScatterMap b;
    public final SynchronizedObject c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AsyncTypefaceResult {
        public final Object a;

        public final boolean equals(Object obj) {
            if (obj instanceof AsyncTypefaceResult) {
                if (!Intrinsics.a(this.a, ((AsyncTypefaceResult) obj).a)) {
                    return false;
                }
                return true;
            }
            return false;
        }

        public final int hashCode() {
            Object obj = this.a;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public final String toString() {
            return "AsyncTypefaceResult(result=" + this.a + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Key {
        public final Font a;

        public Key(Font font) {
            this.a = font;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Key) || !Intrinsics.a(this.a, ((Key) obj).a)) {
                    return false;
                }
                return true;
            }
            return true;
        }

        public final int hashCode() {
            return this.a.hashCode() * 31;
        }

        public final String toString() {
            return "Key(font=" + this.a + ", loaderKey=null)";
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, androidx.compose.ui.text.platform.SynchronizedObject] */
    public AsyncTypefaceCache() {
        long[] jArr = ScatterMapKt.a;
        this.b = new MutableScatterMap();
        this.c = new Object();
    }
}
