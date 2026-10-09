package androidx.tracing;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class TraceApi29Impl {
    public static void a(int i, String str) {
        android.os.Trace.beginAsyncSection(str, i);
    }

    public static void b(int i, String str) {
        android.os.Trace.endAsyncSection(str, i);
    }

    public static boolean c() {
        return android.os.Trace.isEnabled();
    }
}
