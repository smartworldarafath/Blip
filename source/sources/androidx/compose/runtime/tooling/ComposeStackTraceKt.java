package androidx.compose.runtime.tooling;

import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComposeStackTraceKt {
    public static final boolean a(Throwable th, Function0 function0) {
        DiagnosticComposeException diagnosticComposeException;
        th.getClass();
        List b = PlatformImplementationsKt.a.b(th);
        int size = b.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            if (((Throwable) b.get(i)) instanceof DiagnosticComposeException) {
                return false;
            }
        }
        try {
            ComposeStackTrace composeStackTrace = (ComposeStackTrace) function0.a();
            if (composeStackTrace != null) {
                boolean z2 = composeStackTrace.b;
                List list = composeStackTrace.a;
                if (z2) {
                    int size2 = list.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((ComposeStackTraceFrame) list.get(i2)).getClass();
                    }
                } else if (!list.isEmpty()) {
                    z = true;
                }
            }
            if (z) {
                composeStackTrace.getClass();
                diagnosticComposeException = new DiagnosticComposeException(composeStackTrace);
            } else {
                diagnosticComposeException = null;
            }
        } catch (Throwable th2) {
            diagnosticComposeException = th2;
        }
        if (diagnosticComposeException != null) {
            ExceptionsKt.a(th, diagnosticComposeException);
        }
        return z;
    }
}
