package net.blip.android.ui.util;

import android.graphics.Canvas;
import android.graphics.Picture;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.Channel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ a(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        Object obj2 = this.k;
        switch (i) {
            case 0:
                BuildersKt.c(CoroutineScopeKt.a(Dispatchers.a), null, null, new LaunchersKt$rememberSuspendingLauncherForActivityResult$launcher$1$1$1((Channel) obj2, obj, null), 3);
                return unit;
            case 1:
                BuildersKt.c(CoroutineScopeKt.a(Dispatchers.a), null, null, new LaunchersKt$rememberSuspendingPermissionState$permissionState$1$1$1((Channel) obj2, ((Boolean) obj).booleanValue(), null), 3);
                return unit;
            default:
                Function1 function1 = (Function1) obj2;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                contentDrawScope.getClass();
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) contentDrawScope;
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
                int intBitsToFloat = (int) Float.intBitsToFloat((int) (canvasDrawScope.i() >> 32));
                int intBitsToFloat2 = (int) Float.intBitsToFloat((int) (canvasDrawScope.i() & 4294967295L));
                Picture picture = new Picture();
                Canvas beginRecording = picture.beginRecording(intBitsToFloat, intBitsToFloat2);
                beginRecording.getClass();
                Canvas canvas = AndroidCanvas_androidKt.a;
                AndroidCanvas androidCanvas = new AndroidCanvas();
                androidCanvas.a = beginRecording;
                LayoutDirection layoutDirection = layoutNodeDrawScope.getLayoutDirection();
                long i2 = canvasDrawScope.i();
                Density b = canvasDrawScope.k.b();
                LayoutDirection c = canvasDrawScope.k.c();
                androidx.compose.ui.graphics.Canvas a = canvasDrawScope.k.a();
                long d = canvasDrawScope.k.d();
                CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1 = canvasDrawScope.k;
                GraphicsLayer graphicsLayer = canvasDrawScope$drawContext$1.b;
                canvasDrawScope$drawContext$1.f(contentDrawScope);
                canvasDrawScope$drawContext$1.g(layoutDirection);
                canvasDrawScope$drawContext$1.e(androidCanvas);
                canvasDrawScope$drawContext$1.h(i2);
                canvasDrawScope$drawContext$1.b = null;
                androidCanvas.g();
                try {
                    layoutNodeDrawScope.a();
                    androidCanvas.r();
                    CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$12 = canvasDrawScope.k;
                    canvasDrawScope$drawContext$12.f(b);
                    canvasDrawScope$drawContext$12.g(c);
                    canvasDrawScope$drawContext$12.e(a);
                    canvasDrawScope$drawContext$12.h(d);
                    canvasDrawScope$drawContext$12.b = graphicsLayer;
                    picture.endRecording();
                    ((CaptureComposableKt$captureComposable$4$imageBitmap$1$1$1$1) function1).b(picture);
                    return unit;
                } catch (Throwable th) {
                    androidCanvas.r();
                    CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$13 = canvasDrawScope.k;
                    canvasDrawScope$drawContext$13.f(b);
                    canvasDrawScope$drawContext$13.g(c);
                    canvasDrawScope$drawContext$13.e(a);
                    canvasDrawScope$drawContext$13.h(d);
                    canvasDrawScope$drawContext$13.b = graphicsLayer;
                    throw th;
                }
        }
    }
}
