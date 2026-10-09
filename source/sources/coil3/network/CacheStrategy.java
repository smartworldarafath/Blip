package coil3.network;

import coil3.network.internal.DefaultCacheStrategy;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface CacheStrategy {
    public static final DefaultCacheStrategy a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ReadResult {
        public final NetworkResponse a;

        public ReadResult(NetworkResponse networkResponse) {
            this.a = networkResponse;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ReadResult) && Intrinsics.a(this.a, ((ReadResult) obj).a)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            NetworkResponse networkResponse = this.a;
            if (networkResponse != null) {
                return networkResponse.hashCode();
            }
            return 0;
        }

        public final String toString() {
            return "ReadResult(request=null, response=" + this.a + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class WriteResult {
        public static final WriteResult b = new WriteResult();
        public final NetworkResponse a;

        public WriteResult() {
            this.a = null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof WriteResult) {
                if (Intrinsics.a(this.a, ((WriteResult) obj).a)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            NetworkResponse networkResponse = this.a;
            if (networkResponse != null) {
                return networkResponse.hashCode();
            }
            return 0;
        }

        public final String toString() {
            return "WriteResult(response=" + this.a + ")";
        }

        public WriteResult(NetworkResponse networkResponse) {
            this.a = networkResponse;
        }
    }
}
