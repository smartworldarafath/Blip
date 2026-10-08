package defpackage;

import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.tracing.Trace;
import androidx.work.ConfigurationKt$createDefaultTracer$tracer$1;
import androidx.work.ListenableWorker;
import androidx.work.impl.WorkerStoppedException;
import androidx.work.impl.WorkerWrapper;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class w1 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ w1(Object obj, boolean z, Object obj2, Object obj3, int i) {
        this.j = i;
        this.l = obj;
        this.k = z;
        this.m = obj2;
        this.n = obj3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        Object obj2 = this.n;
        Object obj3 = this.m;
        boolean z = this.k;
        Object obj4 = this.l;
        switch (i) {
            case 0:
                ImageBitmap imageBitmap = (ImageBitmap) obj3;
                BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) ((ContentDrawScope) obj);
                layoutNodeDrawScope.a();
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
                if (((Boolean) ((Function0) obj4).a()).booleanValue()) {
                    if (z) {
                        long B0 = canvasDrawScope.B0();
                        CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
                        long d = canvasDrawScope$drawContext$1.d();
                        canvasDrawScope$drawContext$1.a().g();
                        try {
                            canvasDrawScope$drawContext$1.a.b(-1.0f, 1.0f, B0);
                            canvasDrawScope.d(imageBitmap, blendModeColorFilter);
                        } finally {
                            q.v(canvasDrawScope$drawContext$1, d);
                        }
                    } else {
                        canvasDrawScope.d(imageBitmap, blendModeColorFilter);
                    }
                }
                return unit;
            default:
                ListenableWorker listenableWorker = (ListenableWorker) obj4;
                String str = (String) obj3;
                WorkerWrapper workerWrapper = (WorkerWrapper) obj2;
                Throwable th = (Throwable) obj;
                if (th instanceof WorkerStoppedException) {
                    listenableWorker.c.compareAndSet(-256, ((WorkerStoppedException) th).j);
                }
                if (z && str != null) {
                    ConfigurationKt$createDefaultTracer$tracer$1 configurationKt$createDefaultTracer$tracer$1 = workerWrapper.e.m;
                    int hashCode = workerWrapper.a.hashCode();
                    configurationKt$createDefaultTracer$tracer$1.getClass();
                    Trace.b(hashCode, str);
                }
                return unit;
        }
    }
}
